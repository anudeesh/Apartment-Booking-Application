using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace WebsiteFinal.Prot
{
    public partial class Checkout : System.Web.UI.Page
    {
        static int count = 0;

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
            apartmentName.Text = Request.QueryString["apartment"];
            utilitiesSelectedList.Text = Request.QueryString["utilities"];
            totalAmount.Text = Request.QueryString["amount"];
            count = Convert.ToInt16(Request.QueryString["counter"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals(""))
                errorMessage.Text = "Credit Card Number field is required";
            else if (TextBox1.Text.Length != 16)
                errorMessage.Text = "Credit Card must be 16 digits";
            else
            {
                ServiceReference2.ServiceClient servObj = new ServiceReference2.ServiceClient();
                string cardType = servObj.CrediCardVerification(TextBox1.Text);
                if(!(cardType == "Invalid"))
                    errorMessage.Text = "Thank you for your order. Your order has been received";
                else
                    errorMessage.Text = cardType;
            }

            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\UserUtilitiesSelection.xml");

            FileStream fState = null;
            if (!File.Exists(fLocation))
            {

                try
                {
                    fState = new FileStream(fLocation, FileMode.CreateNew);

                    XmlTextWriter writer = new XmlTextWriter(fState, System.Text.Encoding.Unicode);
                    writer.Formatting = Formatting.Indented;
                    writer.WriteStartDocument();
                    writer.WriteStartElement("users");
                    writer.WriteStartElement("user");
                    writer.WriteElementString("name", txtUserName.Text);
                    writer.WriteElementString("utilities", utilitiesSelectedList.Text);
                    writer.WriteElementString("amount", totalAmount.Text);
                    writer.WriteEndElement();
                    writer.WriteEndElement();
                    writer.WriteEndDocument();
                    writer.Close();
                    fState.Close();
                }
                catch
                {
                    
                }
            }
            else
            {
                XmlTextReader xmlTextReader = new XmlTextReader(fLocation);
                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(xmlTextReader);
                xmlTextReader.Close();

                AddNode(fLocation, xmlDocument, txtUserName.Text, utilitiesSelectedList.Text, totalAmount.Text);
            }
            errorMessage.Visible = true;
        }

        static void AddNode(string fileName, XmlDocument xmlDoc, String name, String utilities, String amount)
        {
            XmlElement userselement = xmlDoc.CreateElement("user");

            XmlElement nameElement = xmlDoc.CreateElement("name");
            nameElement.InnerText = name;
            userselement.AppendChild(nameElement);

            XmlElement utilitiesElement = xmlDoc.CreateElement("utilities");
            utilitiesElement.InnerText = utilities;
            userselement.AppendChild(utilitiesElement);

            XmlElement amountElement = xmlDoc.CreateElement("amount");
            amountElement.InnerText = amount;
            userselement.AppendChild(amountElement);

            xmlDoc.DocumentElement.AppendChild(userselement);
            xmlDoc.Save(fileName);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Server.Transfer("~/Home.aspx");
        }

    }
}