using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;

namespace Insurance_management_System
{
    public partial class otp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int  cur_otp= Convert.ToInt32(TextBox2.Text);
            int otp = Convert.ToInt32(Session["otp"]);
            
            //if (otp == Session["otp"].ToString())
            
            if (otp == cur_otp)
            {
                Session["otp"] = otp;
                /*String get1 = "update registration_customer set Status='"+ Status + "' where otp='" + otp + "'";
               // Response.Write(get1);
               /*con.Open();
                SqlCommand cmd1 = new SqlCommand(get1, con);
                int getValue1 = Convert.ToInt32(cmd1.ExecuteScalar());
               con.Close();*/
                Response.Redirect("login.aspx");
            }
            else
            {
                lblMessage.Text = "invalid OTP plz try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();

        }
    }
}