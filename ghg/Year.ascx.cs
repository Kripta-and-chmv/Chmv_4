using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghg
{
    public partial class Year : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1990; i <= DateTime.Now.Year; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
        }

       
        public int SelectedYear
        {
            get
            { 
                return Convert.ToInt32(DropDownList1.SelectedValue);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}