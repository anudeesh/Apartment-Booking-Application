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
    public partial class ShoppingItems : System.Web.UI.Page
    {
        static int count = 0;
        static int aptRent = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie myCookies = Request.Cookies["myCookieId"];
            if ((myCookies == null) || (myCookies["Name"] == ""))
            {
                txtUserName.Text = "Welcome, new user";
            }
            else
            {
                txtUserName.Text = "Welcome, " + myCookies["Name"];
                //lblEmail.Text = "We have your email " + myCookies["Email"];
            }
            count = Convert.ToInt16(Request.QueryString["counter"]);
            apartmentName.Text = Request.QueryString["Apartment"];
            aptRent = Convert.ToInt16(Request.QueryString["amount"]);

            //XElement xmlTree = new XElement("Utilities",
            //    new XElement("Utility",
            //        new XElement("Title", "Carpet Flooring"),
            //        new XElement("Description", "New carpet will be replaced with the old carpet for every 3 months"),
            //        new XElement("Price", "$150")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "Roach Prevention"),
            //        new XElement("Description", "Roaches prevention will be done every alternate week of a month"),
            //        new XElement("Price", "$100")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "Laundry"),
            //        new XElement("Description", "Laundry card helps you to make use of the washers and dryers present within the apartment society"),
            //        new XElement("Price", "$25")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "Recreation Facilities"),
            //        new XElement("Description", "Recreation facilities include Gym, Sqimming pool access, game room access."),
            //        new XElement("Price", "$50")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "House Cleaning"),
            //        new XElement("Description", "Our house cleaning team will come and clean your house by vacuuming, cleaning bathrooms etc"),
            //        new XElement("Price", "$200")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "Internet Facility"),
            //        new XElement("Description", "We have connections with two internet providers: Century Link and Cox. You can choose either of it but we will charge same price for both."),
            //        new XElement("Price", "$40")
            //    ),
            //    new XElement("Utility",
            //        new XElement("Title", "Insurance"),
            //        new XElement("Description", "We provide insurance to your house if any theft, fire or any other incidents occur."),
            //        new XElement("Price", "$100")
            //    )
            //);
            //xmlTree.Save(AppDomain.CurrentDomain.BaseDirectory + "Utilities.xml");

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

        

        protected void utilitiesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = 0;
            description.Text = "Description:";
            quantity.Text = "Quantity:";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Utilities.xml"));
            XmlNodeList xmlTitleList = xmlDoc.GetElementsByTagName("Title");
            XmlNodeList xmlDescList = xmlDoc.GetElementsByTagName("Description");
            XmlNodeList xmlPriceList = xmlDoc.GetElementsByTagName("Price");
            foreach (XmlNode node in xmlTitleList)
            {
                if (utilitiesList.SelectedValue == node.InnerText)
                {
                    utility.Text = node.InnerText;
                    desc.Text = xmlDescList[i].InnerText;
                    price.Text = xmlPriceList[i].InnerText;
                    i++;
                    description.Visible = true;
                    utility.Visible = true;
                    desc.Visible = true;
                    price.Visible = true;
                    quantity.Visible = true;
                    quantityField.Visible = true;
                    addToCart.Visible = true;
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                }
                else
                {
                    i++;
                    continue;
                }
            }
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            int numberOfItems = Convert.ToInt16(quantityField.Text);
            if (numberOfItems > 0)
            {
                count++;
                Session["Name" + count] = utilitiesList.SelectedValue;
                Session["Price" + count] = price.Text.Substring(1);
                Session["Quantity" + count] = numberOfItems.ToString();
                Response.Redirect("ShoppingCart.aspx?counter=" + count + "&Apartment=" + apartmentName.Text + "&amount=" + aptRent);
            }
        }

        protected void myCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx?counter=" + count + "&Apartment=" + apartmentName.Text + "&amount=" + aptRent);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Server.Transfer("~/Home.aspx");
        }

        
    }
}