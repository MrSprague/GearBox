using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GearApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnForward_Click(object sender, EventArgs e)
        {
            string name = txtUser.Text;
            if(txtUser.Text == "")
            {
                txtUser.Text = "Type here ..";
                txtUser.ForeColor = System.Drawing.Color.Red;
            } else if(txtUser.Text == "Type here ..")
            {
                txtUser.Text = "You're hopeless.";
                txtUser.ForeColor = System.Drawing.Color.Red;
                btnBackward.Enabled = false;
                txtUser.Enabled = false;
                
            }else if (txtUser.Text == "You're hopeless.")
            {
                Response.Redirect("Console.aspx?Parameter1=Hopeless");
            } else
            {
                Response.Redirect("Console.aspx?Parameter1="+name);
            }
        }

        protected void btnBackward_Click(object sender, EventArgs e)
        {

        }
    }
}