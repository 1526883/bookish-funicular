using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrintedCanvas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username_tb.Focus();
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if(Username_tb.Text == "user" && Password_tb.Text == "pass")
            {
                loginbtn.Text = "Correct!"
            }
            else
            {
                loginbtn.Text = "Wrong!"
            }
        }


    }
}