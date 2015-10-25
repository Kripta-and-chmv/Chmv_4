using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghg
{
    public partial class Master1 : System.Web.UI.Page
    {

        protected override void OnPreInit(EventArgs e)
        {
            if(Request.Params["Theme"]!=null)
            {
                this.Theme = Request.Params["Theme"];
                
            }
            base.OnPreInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["Theme"] != null)
            {
                ListItem li = DropDownList1.Items.FindByText(Request.Params["Theme"]);
                if(li != null)
                {
                    li.Selected = true;
                }

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Response.Redirect("Master1.aspx?Theme="+ DropDownList1.SelectedValue);
        }
    }
}