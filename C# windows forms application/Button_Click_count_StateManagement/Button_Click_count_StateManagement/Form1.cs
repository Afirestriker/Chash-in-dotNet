﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Button_Click_count_StateManagement
{
    public partial class Form1 : Form
    {
        int countt = 0;
        
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            countt++;
            MessageBox.Show("Count: " + countt);
        }
    }
}
