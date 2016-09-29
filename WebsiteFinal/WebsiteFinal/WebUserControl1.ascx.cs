using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteFinal
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
       
            protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "All contents &copy; 2015. All rights reserved. Website designed by Abstract5 - UNCC";
        }

        
    }
}