using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
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