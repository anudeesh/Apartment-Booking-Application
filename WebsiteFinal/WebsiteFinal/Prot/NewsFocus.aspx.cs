using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal.Prot
{
    public partial class NewsFocus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                txtUserName.Text = "Welcome, new user";
            }
            else
            {
                txtUserName.Text = myCookies["Name"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            ServiceReference3.ServiceClient obj1 = new ServiceReference3.ServiceClient();
            string[] urls = obj1.NewsFocus(TextBox1.Text);
            foreach (string url in urls)
            {
                ListBox1.Items.Add(url);
            }
        }
    }
}