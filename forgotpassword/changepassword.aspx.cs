using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Insurance_management_System.forgotpassword
{
    public partial class changepassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnchange_Click(object sender, EventArgs e)
        {
            string pswd = txtnewpassword.Text;
            string cnpsw = txtrepeatnewpassword.Text;
            string email = Session["email"].ToString();

            if (pswd == cnpsw)
            {
                int Status = 1;

                String get1 = "update registration_customer set Password='" + pswd + "' where email='" + email + "'";
               // Response.Write(get1);
                con.Open();
                SqlCommand cmd1 = new SqlCommand(get1, con);
                // int getValue1 = Convert.ToInt32(cmd1.ExecuteScalar());
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("../login.aspx");
            }
            else
            {
                lblMessage.Text = "Password and conform password not matched..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}