using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal.Prot
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        static int count = 0;
        string apartmentName = null;
        int aptRent = 0;

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
                //lblEmail.Text = "We have your email " + myCookies["Email"];
            }
            count = Convert.ToInt16(Request.QueryString["counter"]);
            apartmentName = Request.QueryString["Apartment"];
            aptRent = Convert.ToInt16(Request.QueryString["amount"]);
            if (!IsPostBack)
            {
                double totalPrice = 0;
                double amount = 0;
                int numberOfItems = 0;
                utilitiesSelected.Items.Add(apartmentName);
                quantityList.Items.Add("1");
                priceList.Items.Add(aptRent.ToString());
                totalPriceList.Items.Add(aptRent.ToString());
                amount = amount + aptRent;
                numberOfItems++;
                for (Int16 i = 1; i <= Convert.ToInt16(Request.QueryString["counter"]); i++)
                {
                    utilitiesSelected.Items.Add(Session["Name" + i].ToString());
                    quantityList.Items.Add(Session["Quantity" + i].ToString());
                    priceList.Items.Add(Session["Price" + i].ToString());
                    int price = Convert.ToInt16(Session["Price" + i]);
                    int qty = Convert.ToInt16(Session["Quantity" + i]);
                    totalPrice = price * qty;
                    amount = amount + totalPrice;
                    totalPriceList.Items.Add(totalPrice.ToString());
                    numberOfItems++;
                }
                subtotal.Text = "(" + numberOfItems + " items) = $" + Convert.ToString(amount);
                totalAmount.Text = "$" + Convert.ToString(amount + (0.05 * amount));

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = Convert.ToInt32(Request.QueryString["counter"]);
            if (utilitiesSelected.Items.Count == 0)
            {
                count = 0;
                Response.Redirect("ShoppingItems.aspx?counter=" + count + "&Apartment=" + apartmentName + "&amount=" + aptRent);
            }
            else
                Response.Redirect("ShoppingItems.aspx?counter=" + count + "&Apartment=" + apartmentName + "&amount=" + aptRent);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            utilitiesSelected.Items.Clear();
            priceList.Items.Clear();
            quantityList.Items.Clear();
            totalPriceList.Items.Clear();
            Session.Clear();
            Session.Abandon();
            subtotal.Text = "(0 items) = $" + 0;
            totalAmount.Text = "$0";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String utilities = null;
            string apartment = null;
            apartment = utilitiesSelected.Items[0].Text;
            for (int i = 1; i < utilitiesSelected.Items.Count - 1; i++)
                utilities += utilitiesSelected.Items[i].Text + ", ";
            utilities += utilitiesSelected.Items[utilitiesSelected.Items.Count - 1].Text;
            Response.Redirect("Checkout.aspx?apartment=" + apartment + "&utilities=" + utilities + "&amount=" + totalAmount.Text + "&counter=" + utilitiesSelected.Items.Count);
        }

        protected void myCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx?counter=" + count + "&Apartment=" + apartmentName + "&amount=" + aptRent);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Server.Transfer("~/Home.aspx");
        }
    }
}