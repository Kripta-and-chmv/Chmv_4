using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghg
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;
            lblOut.Text = txtFirstName.Text + " " + txtLastName.Text + " " + txtEmail.Text;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Random r = new Random();
            int randNum = r.Next(1, 100);
            if (randNum > 41)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}