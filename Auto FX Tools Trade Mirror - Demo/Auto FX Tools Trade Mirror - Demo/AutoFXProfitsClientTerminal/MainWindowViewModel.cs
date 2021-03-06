/***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Trade Mirror provides an infrastructure for low latency trade copying
* services from master to child traders, and also trader to different
* channels including social media. It is a highly customizable solution
* with low-latency signal transmission capabilities. The tool can copy trades
* from sender and publish them to all subscribed receiver’s in real time
* across a local network or the internet. Trade Mirror is built using
* languages and frameworks that include C#, C++, WPF, WCF, Socket Programming,
* MySQL, NUnit and MT4 and MT5 MetaTrader platforms.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************/


﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Timers;
using System.Windows;
using System.Windows.Input;
using System.ServiceModel;
using System.Windows.Media;
using System.Windows.Threading;
using TraceSourceLogger;

namespace AutoFXProfitsClientTerminal
{
    public class MainWindowViewModel : DependencyObject, ITradeMirrorCallback, IDisposable
    {
        private static readonly Type OType = typeof(MainWindowViewModel);

        public ICommand ConnectCommand { get; set; }
        public ICommand DisconnectCommand { get; set; }

        private readonly InstanceContext _site;
        private TradeMirrorClient _client;

        private static Timer _heartbeatTimer;
        private const int AcceptedDelaySeconds = 60;

        /// <summary>
        /// Holds reference to UI dispatcher
        /// </summary>
        private readonly Dispatcher _currentDispatcher;

        #region IDisposable implementation
 
        /// <summary>
        /// IDisposable.Dispose implementation, calls Dispose(true).
        /// </summary>
        void IDisposable.Dispose()
        {
            Dispose(true);
        }
 
        /// <summary>
        /// Dispose worker method. Handles graceful shutdown of the
        /// client even if it is an faulted state.
        /// </summary>
        /// <param name="disposing">Are we disposing (alternative
        /// is to be finalizing)</param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                try
                {
                    if (_client.State != CommunicationState.Faulted)
                    {
                        _client.Close();
                    }
                }
                finally
                {
                    if (_client.State != CommunicationState.Closed)
                    {
                        _client.Abort();
                    }
                }
            }
        }
 
        #endregion

        #region AccountID

        public static readonly DependencyProperty AccountIDProperty =
            DependencyProperty.Register("AccountID", typeof (string), typeof (MainWindowViewModel), new PropertyMetadata(default(string)));

        public string AccountID
        {
            get { return (string) GetValue(AccountIDProperty); }
            set { SetValue(AccountIDProperty, value); }
        }

        #endregion

        #region KeyString
        
        public static readonly DependencyProperty KeyStringProperty =
            DependencyProperty.Register("KeyString", typeof (string), typeof (MainWindowViewModel), new PropertyMetadata(default(string)));

        public string KeyString
        {
            get { return (string) GetValue(KeyStringProperty); }
            set { SetValue(KeyStringProperty, value); }
        }

        #endregion

        #region Status

        public static readonly DependencyProperty StatusProperty =
            DependencyProperty.Register("Status", typeof (string), typeof (MainWindowViewModel), new PropertyMetadata(default(string)));

        public string Status
        {
            get { return (string) GetValue(StatusProperty); }
            set { SetValue(StatusProperty, value); }
        }

        #endregion

        #region Color

        public static readonly DependencyProperty ColorProperty =
            DependencyProperty.Register("Color", typeof(SolidColorBrush), typeof(MainWindowViewModel), new PropertyMetadata(default(SolidColorBrush)));

        public SolidColorBrush Color
        {
            get { return (SolidColorBrush)GetValue(ColorProperty); }
            set { SetValue(ColorProperty, value); }
        }
        #endregion

        #region IsSavePasswordChecked

        public static readonly DependencyProperty IsSavePasswordCheckedProperty =
            DependencyProperty.Register("IsSavePasswordChecked", typeof (bool), typeof (MainWindowViewModel), new PropertyMetadata(default(bool)));

        public bool IsSavePasswordChecked
        {
            get { return (bool) GetValue(IsSavePasswordCheckedProperty); }
            set { SetValue(IsSavePasswordCheckedProperty, value); }
        }

        #endregion

        /// <summary>
        /// Default Constructor
        /// </summary>
        public MainWindowViewModel()
        {
            try
            {
                this.ConnectCommand = new ConnectCommand(this);
                this.DisconnectCommand = new DisconnectCommand(this);

                this._currentDispatcher = Dispatcher.CurrentDispatcher;

                // Create a client
                _site = new InstanceContext(null, this);
                _site.Closed += CommunicationObjectOnClosed;
                _site.Faulted += CommunicationObjectOnClosed;
                
                _client = new TradeMirrorClient(_site);

                _heartbeatTimer = new Timer(AcceptedDelaySeconds * 1000);
                _heartbeatTimer.Elapsed += HeartbeatTimerElapsed;
                _heartbeatTimer.AutoReset = true;
                
                UpdateUI("Disconnected");
                if (!InitializeCredentials())
                {
                    SetAccountID();
                }
                else
                {
                    IsSavePasswordChecked = true;
                }
            }
            catch (Exception exception)
            {
               Logger.Error(exception, OType.FullName, "MainWindowViewModel");
            }
        }

        /// <summary>
        /// Connect the client to the server
        /// </summary>
        public void ConnectToServer()
        {
            try
            {
                string suffixes = _client.Subscribe(AccountID, KeyString,Convert.ToInt32(AccountID));

                this._currentDispatcher.Invoke(DispatcherPriority.Normal, (Action) (() =>
                                                                                        {
                                                                                            if (suffixes != "FAILED")
                                                                                            {
                                                                                                Logger.Info("Subscribed",OType.FullName,"ConnectToServer");

                                                                                                UpdateUI("Connected");

                                                                                                SetSuffixes(suffixes);

                                                                                                _heartbeatTimer.Enabled = true;

                                                                                                if (IsSavePasswordChecked)
                                                                                                {
                                                                                                    SaveAccountCredentials();
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    DeleteAccountCredentials();
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                Logger.Info("Invalid Credentials",OType.FullName,"ConnectToServer");
                                                                                            }
                                                                                        }));
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "ConnectToServer");
            }
        }

        /// <summary>
        /// Disconnect the client from the server
        /// </summary>
        public void DisconnectFromServer()
        {
            try
            {
                this._currentDispatcher.Invoke(DispatcherPriority.Normal, (Action) (() =>
                                                                                        {
                                                                                            if (_client.Unsubscribe(AccountID, KeyString,Convert.ToInt32(AccountID)))
                                                                                            {
                                                                                                Logger.Info("Unsubscribed",OType.FullName,"DisconnectFromServer");

                                                                                                _heartbeatTimer.Enabled = false;
                                                                                                UpdateUI("Disconnected");
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                Logger.Info("Invalid Credentials",OType.FullName,"DisconnectFromServer");
                                                                                            }
                                                                                        }));
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "DisconnectFromServer");
            }
        }

        /// <summary>
        /// Method called when a new signal arrives
        /// </summary>
        /// <param name="signalInformation"></param>
        public void NewSignal(string signalInformation)
        {
            try
            {
                if (signalInformation.Contains("___autofxtools trademirror___Alive___"))
                {
                    Logger.Debug("Heartbeat. = " + signalInformation, OType.FullName, "PublishNewSignal");

                    this._currentDispatcher.Invoke(DispatcherPriority.Normal, (Action)(ResetTimer));
                    return;
                }

                Logger.Debug("New Signal Received = " + signalInformation, OType.FullName, "PublishNewSignal");
                PlaceOrder(signalInformation);
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "NewSignal");
            }
        }

        /// <summary>
        /// Updates output on UI
        /// </summary>
        /// <param name="newStatus"></param>
        private void UpdateUI(string newStatus)
        {
            try
            {
                this._currentDispatcher.Invoke(DispatcherPriority.Normal, (Action)(() =>
                                                                                       {
                                                                                           this.Status = newStatus;

                                                                                           if (Status == "Connected")
                                                                                           {
                                                                                               Color = new SolidColorBrush(System.Windows.Media.Color.FromArgb(255, 0, 255, 0));
                                                                                           }
                                                                                           else if (Status == "Disconnected")
                                                                                           {
                                                                                               Color = new SolidColorBrush(System.Windows.Media.Color.FromArgb(255, 255, 0, 0));
                                                                                           }

                                                                                       }));
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "UpdateUI");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void SetAccountID()
        {
            try
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"\\accountinfo.txt";

                if (File.Exists(path))
                {
                    FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.None);
                    StreamReader streamReader = new StreamReader(fs);

                    string tempString = string.Empty;

                    while ((tempString = streamReader.ReadLine()) != null)
                    {
                        if (tempString.Contains("accountNumber"))
                        {
                            string[] tempArray = tempString.Split(':');
                            this._currentDispatcher.Invoke(DispatcherPriority.Normal, (Action) (() =>
                                                                                                    {
                                                                                                        AccountID = tempArray[1].Trim();
                                                                                                    }));
                        }
                        break;
                    }

                    streamReader.Close();
                    fs.Close();
                }
                else
                {
                    Logger.Debug("Account File not available", OType.FullName, "");
                }
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "SetAccountID");
            }            
        }

        /// <summary>
        /// Saves order into a text file
        /// </summary>
        public void PlaceOrder(string orderInfo)
        {
            try
            {
                lock (this)
                {
                    string path = AppDomain.CurrentDomain.BaseDirectory + "\\orders.csv";

                    if (File.Exists(path))
                    {
                        File.Delete(path);
                    }
                    using (File.Create(path))
                    {
                    }

                    var fileStream = new FileStream(path, FileMode.Open, FileAccess.Write, FileShare.Read);
                    var streamWriter = new StreamWriter(fileStream);

                    streamWriter.Write(orderInfo);
                    Logger.Debug("Signal Information Written to file", OType.FullName, "PlaceOrder");

                    streamWriter.Close();
                    fileStream.Close();
                }
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "PlaceOrder");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void SaveAccountCredentials()
        {
            try
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"\\trademirrorcredentials.txt";

                if (!File.Exists(path))
                {
                    FileStream fs = File.Create(path);
                    StreamWriter streamWriter = new StreamWriter(fs);

                    streamWriter.Write(AccountID + " : " + KeyString);
                    Logger.Debug("User Credentials saved. Account ID = " + AccountID + " | Keystring = " + KeyString, OType.FullName, "PlaceOrder");

                    streamWriter.Close();
                    fs.Close();
                }   
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "SaveAccountCredentials");
            }   
        }

        /// <summary>
        /// 
        /// </summary>
        private void DeleteAccountCredentials()
        {
            try
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"\\trademirrorcredentials.txt";

                if (File.Exists(path))
                {
                    File.Delete(path);
                }
                Logger.Debug("User Credentials Deleted" + KeyString, OType.FullName, "SaveAccountCredentials");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "SaveAccountCredentials");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private bool InitializeCredentials()
        {
            try
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + @"\\trademirrorcredentials.txt";

                if (File.Exists(path))
                {
                    FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.None);
                    StreamReader streamReader = new StreamReader(fs);

                    string tempString = streamReader.ReadLine();

                    string[] tempArray = tempString.Split(':');

                    AccountID = tempArray[0].Trim();
                    KeyString = tempArray[1].Trim();

                    Logger.Debug("User Credentials Initialized. Account ID = " + AccountID + " | Keystring = " + KeyString, OType.FullName, "InitializeCredentials");

                    streamReader.Close();
                    fs.Close();

                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "InitializeCredentials");
                return false;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void HeartbeatTimerElapsed(object sender, ElapsedEventArgs e)
        {
            try
            {
                this.DisconnectFromServer();
                Logger.Debug("Connection lost to server", OType.FullName, "HeartbeatTimerElapsed");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "HeartbeatTimerElapsed");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public void FreeResources()
        {
            try
            {
                if (Status == "Connected")
                {
                    this.DisconnectFromServer();
                }
                Dispose(true);
                //if (_client != null)
                //{
                //    _client.Close();
                //    _client.Abort();
                //    _client = null;
                //}
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "FreeResources");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        private void ResetTimer()
        {
            try
            {
                _heartbeatTimer.Stop();
                _heartbeatTimer.Start();
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "ResetTimer");
            }
        }

        private void SetSuffixes(string suffixes)
        {
            try
            {
                string path = AppDomain.CurrentDomain.BaseDirectory + "\\suffixes.csv";

                if (File.Exists(path))
                {
                    File.Delete(path);
                }
                using (File.Create(path))
                {
                }

                FileStream fileStream = new FileStream(path, FileMode.Open, FileAccess.Write, FileShare.None);
                StreamWriter streamWriter = new StreamWriter(fileStream);

                streamWriter.Write(suffixes);
                Logger.Debug("System Suffixes = " + suffixes, OType.FullName, "SetSuffixes");
                streamWriter.Write(";");

                streamWriter.Close();
                fileStream.Close();
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "SetSuffixes");
            }
        }

        private void CommunicationObjectOnClosed(object clientHandler, EventArgs eventArgs)
        {
            try
            {
                DisconnectFromServer();
                Logger.Debug("Client Unsubscribed because of fault.", OType.FullName, "CommunicationObjectOnClosed");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "CommunicationObjectOnClosed");
            }
        }
    }
}
