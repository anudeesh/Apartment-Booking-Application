using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal
{
    public partial class HeaderUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String str;
            str = DateTime.Now.ToString();
            Label4.Text = "   Date and Time  : " + str;
            //Label4.Text = str;
            String semester, year;
            Int32 m = DateTime.Now.Month;
            if (m <= 5) semester = "Spring";
            else if (m <= 7) semester = "Summer";
            else semester = "Fall";
            Int32 yr = DateTime.Now.Year;
            year = yr.ToString();
            Label1.Text = semester;
            Label2.Text = year;

        }
    }
}