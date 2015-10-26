using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chmv4
{
    public partial class red : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddcategory_Click(object sender, EventArgs e)
        {
          
            if (!Page.IsValid)
            {
                return;
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
        }
    }
}