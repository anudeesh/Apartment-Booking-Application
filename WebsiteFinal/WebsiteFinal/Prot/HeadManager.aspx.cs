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
    public partial class HeadManager : System.Web.UI.Page
    {
        static int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                Label1.Text = "Welcome, new user";
            }
            else if (myCookies["Name"] == "anudeesh")
            {
                Label1.Text = "Welcome, " + myCookies["Name"];
                txtUserName.Text = myCookies["Name"];
            }
            else
            {
                Response.Redirect("~/Prot/manager1.aspx");
            }
            if (!IsPostBack)
            {
                int i = 0;
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml"));
                XmlNodeList xmlTitleList = xmlDoc.GetElementsByTagName("Title");
                foreach (XmlNode node in xmlTitleList)
                {
                    utilitiesList.Items.Insert(i, node.InnerText);
                    i++;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/manager1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button4.Visible = true;
            Button5.Visible = true;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            utilitiesList.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Button3.Visible = false;
            TextBox4.Visible = false;
            Label7.Visible = false;
            message.Visible = false;
        }

        protected void utilitiesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = 0;
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml"));
            XmlNodeList xmlTitleList = xmlDoc.GetElementsByTagName("Title");
            XmlNodeList xmlDescList = xmlDoc.GetElementsByTagName("Description");
            XmlNodeList xmlPriceList = xmlDoc.GetElementsByTagName("Price");
            foreach (XmlNode node in xmlTitleList)
            {
                if (utilitiesList.SelectedValue == node.InnerText)
                {
                    TextBox1.Text = node.InnerText;
                    TextBox2.Text = xmlDescList[i].InnerText;
                    TextBox3.Text = xmlPriceList[i].InnerText;
                    i++;
                    temp = i - 1;
                }
                else
                {
                    i++;
                    continue;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (utilitiesList.Visible)
            {
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml"));
                XmlNodeList xmlTitleList = xmlDoc.GetElementsByTagName("Title");
                XmlNodeList xmlDescList = xmlDoc.GetElementsByTagName("Description");
                XmlNodeList xmlPriceList = xmlDoc.GetElementsByTagName("Price");
                xmlTitleList[temp].InnerText = TextBox1.Text;
                xmlDescList[temp].InnerText = TextBox2.Text;
                xmlPriceList[temp].InnerText = TextBox3.Text;
                xmlDoc.Save(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml"));
                message.Text = "Updated Successfully";
                message.Visible = true;
            }
            else
            {
                string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml");
                XmlTextReader xmlTextReader = new XmlTextReader(fLocation);
                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(xmlTextReader);
                xmlTextReader.Close();
                addNode(fLocation, xmlDocument, TextBox4.Text, TextBox2.Text, TextBox3.Text);
                message.Text = "New Entry updated Successfully";
                message.Visible = true;
            }
        }

        static void addNode(string fileName, XmlDocument xmlDoc, String title, String description, String price)
        {
            XmlElement userselement = xmlDoc.CreateElement("Utility");

            XmlElement titleElement = xmlDoc.CreateElement("Title");
            titleElement.InnerText = title;
            userselement.AppendChild(titleElement);

            XmlElement descElement = xmlDoc.CreateElement("Description");
            descElement.InnerText = description;
            userselement.AppendChild(descElement);

            XmlElement priceElement = xmlDoc.CreateElement("Price");
            priceElement.InnerText = price;
            userselement.AppendChild(priceElement);

            xmlDoc.DocumentElement.AppendChild(userselement);
            xmlDoc.Save(fileName);

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Server.Transfer("~/Home.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            utilitiesList.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button3.Visible = true;
            Button4.Visible = false;
            Button5.Visible = false;
            TextBox4.Visible = false;
            Label7.Visible = false;
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
            message.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            Label4.Visible = false;
            Label5.Visible = true;
            Label6.Visible = true;
            TextBox4.Visible = true;
            TextBox1.Visible = false;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button3.Visible = true;
            Button4.Visible = false;
            Button5.Visible = false;
            utilitiesList.Visible = false;
            Label3.Visible = false;
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
            message.Visible = false;
        }

    }
}