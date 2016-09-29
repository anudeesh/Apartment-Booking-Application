using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal
{
    public class Register
    {
        public string _name;
        public string _email;

        public Register(string name, string email, string username)
        {
            _name = name;
            _email = email;

        }
    }
    public partial class Home : System.Web.UI.Page
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
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prot/Apartment1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prot/HeadManager.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}