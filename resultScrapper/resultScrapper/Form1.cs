using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Support.UI;
using System.Web;
using OpenQA.Selenium.Remote;

namespace resultScrapper
{
    public partial class Form1 : Form
    {
        Result rs = new Result();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(checkBox2.Checked)
            {
                rs.degree = checkBox2.Text;
            }
            else
            {
                rs.degree = checkBox1.Text;
            }
            rs.session = comboBox1.SelectedItem.ToString();
            rs.year = comboBox2.SelectedItem.ToString();


            DataTable dt = ResultScrapper.getDataTable(rs);
            dataGridView1.DataSource = dt;
            

            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            int i = 0;
            label6.Text = "";
            if (textBox1.Text.Length < 6 && !(int.TryParse(textBox1.Text, out i)))
            {
                label6.Text = "Enter Valid Roll Number!";
            }
            else
            {
                rs.rollNos[rs.noOfRecords] = textBox1.Text;
                if (rs.noOfRecords == 0)
                {
                    textBox2.Text = textBox2.Text + rs.rollNos[rs.noOfRecords];
                }
                else
                {
                    textBox2.Text = textBox2.Text + ", " + rs.rollNos[rs.noOfRecords];
                }

                textBox1.Text = "";
                rs.noOfRecords++; ;
            }
            
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            rs.noOfRecords = 0;
            textBox2.Text = "";
        }

        
    }
}
