using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal
{
    public partial class Apartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                Label1.Text = "Welcome, new user";
            }
            else
            {
                Label1.Text = "Welcome, " + myCookies["Name"];
                //lblEmail.Text = "We have your email " + myCookies["Email"];
            }
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Home.aspx");
            FormsAuthentication.SignOut();
	      Server.Transfer("Home.aspx");

        }
    }
}