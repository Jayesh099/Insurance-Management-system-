using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Insurance_management_System
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }*/
            //lblMessage.Text = "Welcome User ";
        }

      

      

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String Status = "not Called";
            String faq = "Insert into  FAQ(Name,Email,Type_of_policy,Message,Contact,Status) values('" + txtname.Text + "','" + txtname2.Text + "','" + txtname3.Text + "','" + txtname4.Text + "','" + txtname5.Text + "','" + Status + "')";
            SqlCommand enquiry = new SqlCommand(faq, con);

            con.Open();
            enquiry.ExecuteNonQuery();
            lblMessage.Text = "Inserted  Successfully..";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            con.Close();
        }

        /* protected void btnsubmit_Click(object sender, EventArgs e)
         {
             String Status = "not Called";
             String faq = "Insert into  FAQ(Name,Email,Type_of_policy,Message,Contact,Status) values('" + txtname.Text + "','" + txtname2.Text + "','" + txtname3.Text + "','" + txtname4.Text + "','" + txtname5.Text + "','"+ Status + "')";
             SqlCommand enquiry = new SqlCommand(faq, con);

             con.Open();
            enquiry.ExecuteNonQuery();
             lblMessage.Text = "Inserted  Successfully..";
             lblMessage.ForeColor = System.Drawing.Color.Green;
             con.Close();
         }*/
    }
}