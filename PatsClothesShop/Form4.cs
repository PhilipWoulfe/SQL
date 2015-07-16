using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PatsClothesShop
{
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            customerTableAdapter2.Fill(patsClothesShopDataSet2.Customer);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            customerTableAdapter2.Fill(patsClothesShopDataSet2.Customer);
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            customerTableAdapter2.Fill(patsClothesShopDataSet2.Customer);
        }
    }
}
