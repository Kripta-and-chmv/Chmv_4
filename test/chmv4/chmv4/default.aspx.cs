using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chmv4
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void name_TextChanged(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
          if (!Page.IsValid)
            {
                return;
            }
        }


       

        protected void ddlFindCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
            }
        }

        protected void btnEnterance_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {

            }
            else
            {
                Server.Transfer("Registration.aspx", true);
            }
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Registration.aspx", true);
        }

        protected void MultiView1_Init(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("PersonalManagement.aspx", true);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}