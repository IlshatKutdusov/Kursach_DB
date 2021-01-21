using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kursach_DB
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        public KutdusovIlshat_data tableDataSet = new KutdusovIlshat_data();
        public KutdusovIlshat_dataTableAdapters.ProductionTableAdapter ProductionAdapter = new KutdusovIlshat_dataTableAdapters.ProductionTableAdapter();
        public KutdusovIlshat_dataTableAdapters.CarTableAdapter CarAdapter = new KutdusovIlshat_dataTableAdapters.CarTableAdapter();
        public KutdusovIlshat_dataTableAdapters.ClientTableAdapter ClientAdapter = new KutdusovIlshat_dataTableAdapters.ClientTableAdapter();
        public KutdusovIlshat_dataTableAdapters.TariffTableAdapter TariffAdapter = new KutdusovIlshat_dataTableAdapters.TariffTableAdapter();
        
        private SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["Kursach_DB.Properties.Settings.KutdusovIlshat_data_Connection"].ConnectionString);

        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            ProductionAdapter.Fill(tableDataSet.Production);
            dataGridViewProduction.DataSource = tableDataSet.Production;
            CarAdapter.Fill(tableDataSet.Car);
            dataGridViewCar.DataSource = tableDataSet.Car;
            ClientAdapter.Fill(tableDataSet.Client);
            dataGridViewClient.DataSource = tableDataSet.Client;
            TariffAdapter.Fill(tableDataSet.Tariff);
            dataGridViewTariff.DataSource = tableDataSet.Tariff;
        }
    }
}
