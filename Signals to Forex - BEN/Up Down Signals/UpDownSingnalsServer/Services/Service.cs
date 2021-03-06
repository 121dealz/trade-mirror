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
using System.ServiceModel;
using System.Threading;
using System.Windows;
using TraceSourceLogger;
using UpDownSingnalsServer.Models;
using UpDownSingnalsServer.Utility;

namespace UpDownSingnalsServer.Services
{
    [ServiceContract(Namespace = "http://UpDownSingnalsServer.Services", SessionMode = SessionMode.Required, CallbackContract = typeof(IUpDownSignalsClientContract))]
    public interface IUpDownSignals
    {
        [OperationContract]
        string Subscribe(string userName);

        [OperationContract]
        bool Unsubscribe(string userName);

        [OperationContract]
        void PublishNewSignal(string signalInformation);
    }

    public interface IUpDownSignalsClientContract
    {
        [OperationContract(IsOneWay = true)]
        void NewSignal(string signalInformation);
    }

    public class NewSignalEventArgs : EventArgs
    {
        public string SignalInformation;
    }

    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession)]
    public class UpDownSignalsService : DependencyObject, IUpDownSignals
    {
        private static readonly Type OType = typeof(UpDownSignalsService);

        private const string HeartBeatMessage = "___up down signals trade copier___Alive___";

        public static event NewSignalEventHandler NewSignalEvent;
        public delegate void NewSignalEventHandler(object sender, NewSignalEventArgs e);

        IUpDownSignalsClientContract _callback = null;
        private InstanceContext _communicationObject = null;

        NewSignalEventHandler _newSignalHandler = null;

        private static DBHelper _helper = null;

        private static List<User> UpDownSignalsUsers { get; set; }
        public static List<User> ConnectedUsers { get; set; }

        private ServiceHost _serviceHost = null;

        private static ConnectionManager _connectionManager = new ConnectionManager();

        private int _systemOrderID = 0;

        public int SystemOrderID
        {
            get { return this._systemOrderID; }
            set { this._systemOrderID = value; }
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public UpDownSignalsService()
        {
            //if (_helper == null)
            //{
                _helper = new DBHelper(_connectionManager);
            //}
        }

        /// <summary>
        /// Subscribes a user to the signals
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        public string Subscribe(string userName)
        {
            Logger.Debug("New Client Connection received. UserName = " + userName, OType.FullName, "Subscribe");

            try
            {
                if (SearchHelper.AuthenticateUserCredentials(userName, _helper))
                {
                    Logger.Debug("Client Authenticated. UserName = " + userName, OType.FullName, "Subscribe");
                    _callback = OperationContext.Current.GetCallbackChannel<IUpDownSignalsClientContract>();
                    _newSignalHandler = new NewSignalEventHandler(NewSignalHandler);

                    _communicationObject = OperationContext.Current.InstanceContext;
                    _communicationObject.Closed += CommunicationObjectOnClosed;
                    _communicationObject.Faulted += CommunicationObjectOnClosed;

                    NewSignalEvent -= _newSignalHandler;
                    NewSignalEvent += _newSignalHandler;
                    return "SUCCESS";
                }
                else
                {
                    Logger.Debug("Client Authentication failed. UserName = " + userName, OType.FullName, "Subscribe");
                    return "FAILED";
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                Logger.Error(exception, OType.FullName, "Subscribe");
                return "FAILED";
            }
        }

        /// <summary>
        /// Un-Subscribes a user
        /// </summary>
        public bool Unsubscribe(string userName)
        {
            try
            {
                if (SearchHelper.UnAuthenticateUserCredentials(userName, _helper))
                {
                    _callback = OperationContext.Current.GetCallbackChannel<IUpDownSignalsClientContract>();
                    _newSignalHandler = new NewSignalEventHandler(NewSignalHandler);
                    NewSignalEvent -= _newSignalHandler;
                    Logger.Debug("Client Unsubscribed. UserName = " + userName, OType.FullName, "Unsubscribe");
                    return true;
                }
                else
                {
                    Logger.Debug("Client Cant be unsubscirbed. UserName = " + userName, OType.FullName, "Subscribe");
                    return false;
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                Logger.Error(exception, OType.FullName, "Unsubscribe");
                return false;
            }
        }

        /// <summary>
        /// Fire the new sinal event to the subscribed users
        /// </summary>
        /// <param name="signalInformation"></param>
        public void PublishNewSignal(string signalInformation)
        {
            try
            {
                if (signalInformation.Contains(HeartBeatMessage))
                {
                    Logger.Debug("Heartbeat. = " + signalInformation, OType.FullName, "PublishNewSignal");
                }
                else
                {
                    Logger.Debug("New Signal Receievd from data source. Signal = " + signalInformation, OType.FullName, "PublishNewSignal");
                    _systemOrderID++;
                }

                var e = new NewSignalEventArgs {SignalInformation = signalInformation};
                NewSignalEvent(this, e);
                Logger.Debug("New Message Published. Message = " + signalInformation, OType.FullName, "PublishNewSignal");                
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "PublishNewSignal");
            }
        }

        /// <summary>
        /// Service host console
        /// </summary>
        public void Start()
        {
            try
            {
                _serviceHost = new ServiceHost(typeof (UpDownSignalsService),
                                                          new Uri("net.tcp://localhost:9500/updownsignals/service"));
                
                // Open the ServiceHost to create listeners and start listening for messages.
                _serviceHost.Open();

                Logger.Debug("Service host started", OType.FullName, "Start");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "Start");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public void Stop()
        {
            try
            {
                _serviceHost.Close();
                Logger.Debug("Service host Stopped", OType.FullName, "Stop");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "Stop");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="usersList"></param>
        public void UpdateUserList(List<User> usersList)
        {
            UpDownSignalsUsers = usersList;
        }

        /// <summary>
        /// New Signal event handler
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void NewSignalHandler(object sender, NewSignalEventArgs e)
        {
            _callback.NewSignal(e.SignalInformation);
        }

        private void CommunicationObjectOnClosed(object clientHandler, EventArgs eventArgs)
        {
            try
            {
                _newSignalHandler = new NewSignalEventHandler(NewSignalHandler);
                NewSignalEvent -= _newSignalHandler;
                
                Logger.Debug("Client Unsubscribed because of fault.", OType.FullName, "CommunicationObjectOnClosed");
            }
            catch (Exception exception)
            {
                Logger.Error(exception, OType.FullName, "CommunicationObjectOnClosed");
            }
        }
    }
}