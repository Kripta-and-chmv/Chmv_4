using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghg
{
    public partial class controls : System.Web.UI.Page
    {

        protected override void OnPreInit(EventArgs e)
        {
            if (Session["OK"]!=null)
            {
                TextBox txt = new TextBox();
                txt.Text = "for example";
                txt.ID = "txt1";
                PlaceHolder1.Controls.Add(txt);
                DropDownList ddl = new DropDownList();
                ddl.ID = "ddl1";
                ddl.Items.Add("for_example1");
                ddl.Items.Add("for_example2");
                ddl.AutoPostBack = true;
                ddl.SelectedIndexChanged += Ddl_SelectedIndexChanged;
                PlaceHolder1.Controls.Add(ddl);
            }

            base.OnPreInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            PlaceHolder1.Controls.Add(new LiteralControl("<b>Bold</><i>Italic</i>"));
           /* Session["OK"] = 1;

            Response.Redirect("controls.aspx");*/








           
            
        }

        private void Ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)PlaceHolder1.FindControl("txt1");
            txt.Text = ((DropDownList)sender).SelectedValue;
            
        }
    }
}