using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WebsiteFinal
{
    public partial class Login : System.Web.UI.Page
    {
        public static String anudeesh;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                String URL = "http://venus.eas.asu.edu/WSRepository/Services/ImageVerifier/Service.svc/GetVerifierString/5";
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(URL);
                XmlNodeList node4 = xmldoc.GetElementsByTagName("string");
                anudeesh = node4[0].InnerText;
                Image1.ImageUrl = "http://venus.eas.asu.edu/WSRepository/Services/ImageVerifier/Service.svc//GetImage/" + anudeesh;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (anudeesh.Equals(TextBox4.Text))
            {
                if (myAuthenticate(TextBox2.Text, TextBox3.Text))
                    FormsAuthentication.RedirectFromLoginPage(TextBox2.Text, Persistent.Checked);
                else
                    Label2.Text = "Invalid login";
            }
            else
            {
                TextBox4.Text = "";
                Label1.Text = "Enter correct captcha value";
                Response.Redirect("login.aspx");

            }
        }

        bool myAuthenticate(string username, string password)
        {

            String uname = "";
            String pwd = "";
            String username1;
            String password1;
            // String encryptdpassword;
            Label1.Text = "";
            Label2.Text = "";
            // int count = 0;
            username1 = TextBox2.Text;
            password1 = TextBox3.Text;
            //encryptdpassword = EncryptionDecryption.Class1.Encryption(password1);
            int status = 0;
            int status1 = 0;
            //  Label1.Text = username1;
            // Label2.Text = password1;
            XmlDocument xmlDoc = new XmlDocument();
            //xmlDoc.Load(AppDomain.CurrentDomain.BaseDirectory + "\\Staff.xml");

            xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml"));
            //Label2.Text = password1;
            XmlNodeList node = xmlDoc.GetElementsByTagName("username");
            XmlNodeList node1 = xmlDoc.GetElementsByTagName("password");

            XmlDocument xmlDoc1 = new XmlDocument();
            //xmlDoc.Load(AppDomain.CurrentDomain.BaseDirectory + "\\Staff.xml");

            xmlDoc1.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\user123.xml"));
            //Label2.Text = password1;
            XmlNodeList nod = xmlDoc1.GetElementsByTagName("username");
            XmlNodeList nod1 = xmlDoc1.GetElementsByTagName("password");
            //Label2.Text = node[0].InnerText;
            int i = 0;

            int j = 0;
            foreach (XmlNode node2 in node)
            {
                //status1 = 1;
                //status = 1;
                uname = node2.InnerText;
                pwd = node1[i].InnerText;
                String decryptedpwd1 = EncryptionDecryption.Class1.Decryption(pwd);
                if (uname == username1 && decryptedpwd1 == password1)
                {

                    //  if (anudeesh.Equals(TextBox4.Text))

                    //{
                    status = 1;
                    TextBox4.Text = "";
                    Label1.Text = "staff Validation Successful";
                    Label1.Text = "user Validation Successful";
                    HttpCookie myCookies = new HttpCookie("myCookieId");
                    myCookies["Name"] = TextBox2.Text;
                    // myCookies["Email"] = TextBox2.Text;
                    myCookies.Expires = DateTime.Now.AddMonths(6);
                    Response.Cookies.Add(myCookies);
                    // lblUser.Text = "Name stored in cookies " + myCookies["Name"];
                    // lblEmail.Text = "Email stored in cookies " + myCookies["Email"];  
                    // Response.Redirect("manager.aspx");

                    return true;
                    //    }
                    //   else
                    //   {
                    //      TextBox4.Text = "";
                    //      count = 1;
                    //  }
                }
                i++;
            }
            foreach (XmlNode nod2 in nod)
            {
                uname = nod2.InnerText;
                pwd = nod1[j].InnerText;
                String decryptedpwd1 = EncryptionDecryption.Class1.Decryption(pwd);
                if (uname == username1 && decryptedpwd1 == password1)
                {

                    // status = 1;
                    // if (venu.Equals(TextBox4.Text))
                    // {
                    status1 = 1;
                    TextBox4.Text = "";
                    Label1.Text = "user Validation Successful";
                    HttpCookie myCookies = new HttpCookie("myCookieId");
                    myCookies["Name"] = TextBox2.Text;
                    // myCookies["Email"] = TextBox2.Text;
                    myCookies.Expires = DateTime.Now.AddMonths(6);
                    Response.Cookies.Add(myCookies);
                    // lblUser.Text = "Name stored in cookies " + myCookies["Name"];
                    // lblEmail.Text = "Email stored in cookies " + myCookies["Email"];  

                    //Response.Redirect("Apartment.aspx");
                    return true;

                    //   }
                    // else
                    // {

                    //    count = 1;

                    //}
                }
                j++;
            }

            if (status == 1 || status1 == 1)
            {
                // Label1.Text = "username and password does not match";
                // Response.Redirect("login.aspx");
                return true;
            }
            else
            {
                return false;
            }



        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }

}