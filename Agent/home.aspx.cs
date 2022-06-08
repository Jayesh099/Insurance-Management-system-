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
    public partial class home : System.Web.UI.Page
    {
        //connection  String  
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            String faq = "SELECT COUNT(*) FROM  FAQ";
            String claim = "Select   Count(*) from  claim"; 
            SqlCommand cmd = new SqlCommand(faq, con);
            SqlCommand cmdclaim = new SqlCommand(claim, con);
            con.Open();
            Int32 count_faq = (Int32)cmd.ExecuteScalar();
            Int32 count_claim = (Int32)cmdclaim.ExecuteScalar();
            Label1.Text = count_faq.ToString();
            txtclaim.Text = count_claim.ToString();
            con.Close();

        }   
    }
}