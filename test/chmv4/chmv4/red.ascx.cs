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
            Label1.Text = "Товар " + txtProductName.Text + " успешно добавлен в категорию " + ddlCategories.SelectedValue;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Random rand = new Random();
            int k = rand.Next(1, 100);
            if (k >= 80)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}