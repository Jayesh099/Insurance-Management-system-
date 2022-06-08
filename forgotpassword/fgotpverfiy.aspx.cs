using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_management_System.forgotpassword
{
    public partial class fgotpverfiy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnotpverify_Click(object sender, EventArgs e)
        {
            int old_otp = Convert.ToInt32(Session["otp"]);
            int cur_otp = Convert.ToInt32(txtotp.Text);
            if (cur_otp == old_otp)
            {
                Response.Redirect("changepassword.aspx");
            }
            else
            {
                lblMessage.Text = "invalid OTP plz try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}