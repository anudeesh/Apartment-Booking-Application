using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebsiteFinal.Prot
{
    public partial class manager1 : System.Web.UI.Page
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

                // if ((Session.Count != 0))
                // {
                //for (int i = 0; i <= Session.Count; i++)
                // {
                //    Register register = (Register)Session["suser1"];
                //    TextBox2.Text += "Name : " + register._name;
                //    TextBox2.Text += ", Email: " + register._email;
                // }
                //}


                //lblEmail.Text = "We have your email " + myCookies["Email"];
            }
            String uname;
            String name;
            String emailid;
            String utilname;
            String util;
            String amt;
            int i = 0;
            int j = 0;

            //Label1.Text = " Welcome user";


            try
            {

                XmlDocument xmlDoc1 = new XmlDocument();
                xmlDoc1.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\user123.xml"));
                //Label2.Text = password1;
                XmlNodeList nod = xmlDoc1.GetElementsByTagName("name");
                XmlNodeList nod1 = xmlDoc1.GetElementsByTagName("username");
                XmlNodeList nod2 = xmlDoc1.GetElementsByTagName("email");

                foreach (XmlNode node2 in nod)
                {

                    name = node2.InnerText;
                    uname = nod1[i].InnerText;
                    emailid = nod2[i].InnerText;
                    TextBox1.Text += "\n\nName : " + name + "  \nusername: " + uname + "  \nemail id: " + emailid;
                    i++;
                }


                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\UserUtilitiesSelection.xml"));

                XmlNodeList nameList = xmlDoc.GetElementsByTagName("name");
                XmlNodeList utilList = xmlDoc.GetElementsByTagName("utilities");
                XmlNodeList amtList = xmlDoc.GetElementsByTagName("amount");

                foreach (XmlNode xmlNode in nameList)
                {

                    utilname = xmlNode.InnerText;
                    util = utilList[j].InnerText;
                    amt = amtList[j].InnerText;
                    TextBox2.Text += "\n\nName : " + utilname + "  \nUtilities Selected: " + util + "  \nAmount: " + amt;
                    j++;
                }
            }
            catch
            {
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Home.aspx");
            FormsAuthentication.SignOut();
            Server.Transfer("~/Home.aspx");
        }


    }
}