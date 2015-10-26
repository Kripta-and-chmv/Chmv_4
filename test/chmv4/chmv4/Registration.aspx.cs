using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace chmv4
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEnterReg_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx", true);
        }

        protected void btnChangeTable_Click(object sender, EventArgs e)
        {
            if(MultiView1.ActiveViewIndex==1)
            {
                ltRegText.Text = "Уже зарегистрированы?";
                btnChangeTable.Text = "Войти";
                MultiView1.ActiveViewIndex = 0;
                btnEnterReg.Text = "Регистрация";
            }
            else
            {
                ltRegText.Text = "Ещё не зарегистрированы?";
                btnChangeTable.Text = "Зарегистрироваться";
                MultiView1.ActiveViewIndex = 1;
                btnEnterReg.Text = "Вход";
            }

        }

        protected void MultiView1_Init(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx", true);
        }
    }
}