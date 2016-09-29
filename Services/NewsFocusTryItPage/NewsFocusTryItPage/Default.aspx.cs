using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsFocusTryItPage
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
            string[] urls = obj.NewsFocus(TextBox1.Text);
            foreach (string url in urls)
            {
                ListBox1.Items.Add(url);
            }
        }
    }
}