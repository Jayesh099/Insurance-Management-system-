using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Insurance_management_System.Agent
{
    public partial class Login_page_agent : System.Web.UI.Page
    {

        //sql  connection 
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            string uid = txtusername.Text;
            string pass = pwd.Text;
            con.Open();
            String login = "Select *  from  agent  where Email='" + uid + "'  and Password='" + pass + "' ";
            SqlCommand cmd = new SqlCommand(login, con);
            SqlDataReader dt = cmd.ExecuteReader();
            if(dt.Read())
            {
                Session["email"] = txtusername.Text;
                 lblmessage.Text = "Login  Successfull";
                Response.Redirect("home.aspx");
            }
            
            
            else
            {
                lblmessage.Text = "Please Enter Correct  UserName And Password ";
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();


        }
    }
}