using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_management_System.Admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String  email=TextBox2.Text;
            String password = TextBox1.Text;
            if (email=="jayeshsaini099@gmail.com" &&  password=="jayesh")
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                lblMessage.Text = "Something went wrong plz try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}