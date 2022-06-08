using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Insurance_management_System.Agent
{
    public partial class Update_View_Claim : System.Web.UI.Page
    {

        //sql connection string  
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            /*fetch_data();*/
            String name = "Approved";
            if (Request.QueryString["fid"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["fid"]);
               // Response.Write(id);
               // String call = "Called";
                String Update_faq = "update claim set Status='" + name + "'  where  claim_id=" + id;
                SqlCommand cmd2 = new SqlCommand(Update_faq, con);
                con.Open();
                cmd2.ExecuteNonQuery();
                //Response.Write(Update_faq);
                con.Close();
                Response.Redirect("View_Claim.aspx");
            }
        }


        //public void fetch_data()
        //{
        //    SqlCommand cmd = new SqlCommand("Select *  from  claim  where  claim_id='" + Request.QueryString["fid"] + "'", con);
        //    con.Open();
        //    SqlDataAdapter dt = new SqlDataAdapter(cmd);
        //    DataTable datatable = new DataTable();
        //    dt.Fill(datatable);
        //    //String status = txtname4.Text = datatable.Rows[0][6].ToString();
        //    txtname4.Text = datatable.Rows[0]["Status"].ToString();
        //    con.Close();

        //}


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
        }
    }
}

