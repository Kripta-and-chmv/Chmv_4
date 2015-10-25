using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghg
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            LinkButton l = (LinkButton)sender;
            int index =Convert.ToInt32( l.ID.Substring(l.ID.Length - 1, 1));
            MultiView1.ActiveViewIndex = index - 1;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
           Server.Transfer("WebForm1.aspx", true);
        }
    }
}