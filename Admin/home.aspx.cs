using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Insurance_management_System.Admin
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            String cust = "SELECT COUNT(*) FROM registration_customer";
            String  agent= "SELECT COUNT(*) FROM agent";
            String claim = "Select count(*)  from  claim";
            String Category = "select  count(*) from category ";
           // String Faq = "select  count(*) from FAQ ";


            SqlCommand cmd = new SqlCommand(cust, con);
            SqlCommand aent = new SqlCommand(agent, con);
            SqlCommand Claim = new SqlCommand(claim, con);
            SqlCommand category = new SqlCommand(Category, con);
          //  SqlCommand cmd_faq = new SqlCommand(Faq, con); 


            con.Open();
            Int32 count_cust = (Int32)cmd.ExecuteScalar();
            Int32 Agent = (Int32)aent.ExecuteScalar();
            Int32 Cclaim = (Int32)Claim.ExecuteScalar();
            Int32 CCategory = (Int32)category.ExecuteScalar();
          //  Int32 Inquiry = (Int32)cmd_faq.ExecuteScalar();
         


            lbl_cust.Text = count_cust.ToString();
            lbl_agent.Text = Agent.ToString();
            lbl_claim.Text = Cclaim.ToString();
            lbl_Category.Text = CCategory.ToString();
           // Label1.Text = Inquiry.ToString();


            con.Close();
        }
    }
}