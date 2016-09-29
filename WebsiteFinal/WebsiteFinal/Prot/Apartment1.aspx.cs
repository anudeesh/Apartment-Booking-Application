using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace WebsiteFinal.Prot
{
    public partial class Apartment1 : System.Web.UI.Page
    {
        static public String[] urltemp;
        static public int amt1 = 0, amt2 = 0, amt3 = 0, amt4 = 0, amt5 = 0, amt6 = 0, amt7 = 0, amt8 = 0, amt9 = 0, amt10 = 0;
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

            FileStream fileStream = null;
            string fileLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\cacheZipcode1.xml");
            fileStream = new FileStream(fileLocation, FileMode.Open, FileAccess.ReadWrite);
           

            //xmlDoc.Load(fileStream);
            fileStream.Close(); // close after loading
            XmlDocument xmlDoc = new XmlDocument();

            xmlDoc.Load(Path.Combine(Request.PhysicalApplicationPath, @"App_Data\cacheZipcode1.xml"));
            XmlElement zipelement = xmlDoc.CreateElement("zipcode");
            XmlElement childelement = xmlDoc.CreateElement("zipcode");

            childelement.InnerText = TextBox1.Text;
            zipelement.AppendChild(childelement);
            xmlDoc.DocumentElement.AppendChild(zipelement);
            xmlDoc.Save(fileLocation);
            if (Cache["cacheZipcode"] == null)
            {
                CacheDependency fileDependency = new CacheDependency(fileLocation);
                Cache.Insert("cacheZipcode", xmlDoc, fileDependency, DateTime.Now.AddMinutes(30), TimeSpan.Zero, CacheItemPriority.Default,
                    new CacheItemRemovedCallback(CacheRemovedCallBack));
              //  Label12.Text = Cache["cacheZipcode"].ToString();
            }
            var r = new Random();
            ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
            urltemp = obj.ApartmentFinder(TextBox1.Text);
            TextBox2.Text = urltemp[0];
            
            TextBox2.Text += urltemp[10];
            amt1 = r.Next(850, 1250);
            Label2.Text = "Amount : "+ amt1 + " $  with taxes";
           
            TextBox3.Text = urltemp[1];
            TextBox3.Text += urltemp[11];
            amt2 = r.Next(850, 1250);
            Label3.Text = "Amount : " + amt2 + " $  with taxes";
            TextBox4.Text = urltemp[2];
            TextBox4.Text += urltemp[12];
            amt3 = r.Next(850, 1250);
            Label4.Text = "Amount : " + amt3 + " $  with taxes";
            TextBox5.Text = urltemp[3];
            TextBox5.Text += urltemp[13];
            amt4 = r.Next(850, 1250);
            Label5.Text = "Amount : " + amt4 + " $,  with taxes";
            TextBox6.Text = urltemp[4];
            TextBox6.Text += urltemp[14];
            amt5 = r.Next(850, 1250);
            Label6.Text = "Amount : " + amt5 + " $  with taxes";
            TextBox7.Text = urltemp[5];
            TextBox7.Text += urltemp[15];
            amt6 = r.Next(850, 1250);
            Label7.Text = "Amount : " + amt6 + " $  with taxes";
            TextBox8.Text = urltemp[6];
            TextBox8.Text += urltemp[16];
            amt7 = r.Next(850, 1250);
            Label8.Text = "Amount : " + amt7 + "  with taxes";
            TextBox9.Text = urltemp[7];
            TextBox9.Text += urltemp[17];
            amt8 = r.Next(850, 1250); 
            Label9.Text = "Amount : " + amt8 + " $  with taxes";
            TextBox10.Text = urltemp[8];
            TextBox10.Text += urltemp[18];
            amt9 = r.Next(850, 1250);
            Label10.Text = "Amount : " + amt9 + " $  with taxes";
            TextBox11.Text = urltemp[9];
            TextBox11.Text += urltemp[19];
            amt10 = r.Next(850, 1250);
            Label11.Text = "Amount : " + amt10 + " $  with taxes";
        }

        private void CacheRemovedCallBack(string indexKey, object value,
                                            CacheItemRemovedReason reason)
        { // remove the cache if the file is changed
            if (indexKey == "AptListKey")
                Cache.Remove("AptListKey");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Home.aspx");
            FormsAuthentication.SignOut();
            /*if (Request.Cookies["myCookieId"] != null)
            {
                Response.Cookies["myCookieId"].Expires = DateTime.Now.AddDays(-1);
            }
            if (Request.Cookies["myCookieId"] != null)
            {
                HttpCookie myCookie = new HttpCookie("myCookieId");
                myCookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(myCookie);
            }*/
            Server.Transfer("~/Home.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?counter=" + 0 + "&Apartment=" + urltemp[0] + "&amount=" + amt1);    

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[1] + "&amount=" + amt2);   
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[2] + "&amount=" + amt3);   
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[3] + "&amount=" + amt4);   
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[4] + "&amount=" + amt5);   
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[5] + "&amount=" + amt6);   
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[6] + "&amount=" + amt7);   
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[7] + "&amount=" + amt8);   
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[8] + "&amount=" + amt9);   
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prot/ShoppingItems.aspx?Apartment=" + urltemp[9] + "&amount=" + amt10);   
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewsFocus.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Label12.Text = "";
            if ((Cache["cacheZipcode"] != null))
            {
                XmlDocument xd = (XmlDocument)Cache["cacheZipcode"];
                XmlNode node = xd;
                XmlNodeList children = node.ChildNodes;
                foreach (XmlNode child in children.Item(1))
                {
                    Label12.Text += child.FirstChild.InnerText + ", ";
                }
            }
        }
    }
}