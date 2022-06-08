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
    public partial class Insurance_plan : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {



            //manage session
           /*if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }*/
            //manage session







            String category = "select Category_name from category";
            SqlCommand cmd = new SqlCommand(category, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
            con.Close();

            policydisplay();
 

            //  String policy = "Select  policy_name,Policy_description,Policy_Image,Policy_purchase_value,policy_claim_value from  policy";
            //SqlCommand cmd2 = new SqlCommand(policy, con);
            //con.Open();
            //SqlDataReader reade1r = cmd.ExecuteReader();
            // Repeater.DataSource = reader;
            // Repeater1.DataBind();
            con.Close();

            
        }
        public void policydisplay()
        {
            
            //  String policy = "Select  Policy_description from  policy";
            String policy = "Select  * from  policy";
            // SqlCommand cmd2 = new SqlCommand(policy, con);
            //con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(policy, con);
            DataSet ds = new DataSet();

            adp.Fill(ds);
            rep1.DataSource = ds;
            rep1.DataBind();

            //con.Close();
        }

    }
}