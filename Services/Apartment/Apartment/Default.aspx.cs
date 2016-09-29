using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apartment
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
            string[] urltemp = obj.ApartmentFinder(TextBox1.Text);
            TextBox2.Text = urltemp[0];
            TextBox2.Text += urltemp[10];
            TextBox3.Text = urltemp[1];
            TextBox3.Text += urltemp[11];
            TextBox4.Text = urltemp[2];
            TextBox4.Text += urltemp[12];
            TextBox5.Text = urltemp[3];
            TextBox5.Text += urltemp[13];
            TextBox6.Text = urltemp[4];
            TextBox6.Text += urltemp[14];
            TextBox7.Text = urltemp[5];
            TextBox7.Text += urltemp[15];
            TextBox8.Text = urltemp[6];
            TextBox8.Text += urltemp[16];
            TextBox9.Text = urltemp[7];
            TextBox9.Text += urltemp[17];
            TextBox10.Text = urltemp[8];
            TextBox10.Text += urltemp[18];
            TextBox11.Text = urltemp[9];
            TextBox11.Text += urltemp[19];
        }
    }
}