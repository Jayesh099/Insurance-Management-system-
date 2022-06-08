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
    public partial class Update_View_Inquiry : System.Web.UI.Page
    {
        
        //sql  Connection  String  
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        String name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = "Called";
            if (Request.QueryString["fid"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["fid"]);
                Response.Write(id);
               // String call = "Called";
                String Update_faq = "update FAQ set Status='" + name + "'  where  Faq_id=" + id;
                SqlCommand cmd2 = new SqlCommand(Update_faq, con);
                con.Open();
                cmd2.ExecuteNonQuery();
                //Response.Write(Update_faq);
                con.Close();
                Response.Redirect("View_inquiry.aspx");
            }

        }

        
       
    }
}