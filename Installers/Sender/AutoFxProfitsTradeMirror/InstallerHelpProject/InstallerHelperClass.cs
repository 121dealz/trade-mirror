﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Diagnostics;
using System.Linq;
using System.Windows.Forms;
using System.IO;


namespace InstallerHelpProject
{
    [RunInstaller(true)]
    public partial class InstallerHelperClass : System.Configuration.Install.Installer
    {
        private const string EnvironementVariable = "USERPROFILE";
        public InstallerHelperClass()
        {
            InitializeComponent();
        }


        [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Demand)]
        public override void Install(IDictionary stateSaver)
        {
            base.Install(stateSaver);
        }


        [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Demand)]
        public override void Commit(IDictionary savedState)
        {
            base.Commit(savedState);
            string targeted = this.Context.Parameters["targetdir"];
            //string dir = targeted + "InstallerHelpProject.exe";

            Process redistributablesComponent = new Process();
            redistributablesComponent.StartInfo.FileName = targeted + "\\Dependancy\\vcredist_x86.exe";
            //MessageBox.Show("Target DIR = " + redistributablesComponent.StartInfo.FileName);

            redistributablesComponent.Start();

            DirFinder dr = new DirFinder();
            ////MessageBox.Show("Deleting target: " + dir);

            dr.GetInstalledSoftware2(targeted);    
        }

    }
}