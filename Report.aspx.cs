using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Insurance_management_System
{
    public partial class Report : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {*/
                SqlCommand cmd = new SqlCommand("select * from Tbl_purchase where Customer_id='" + Session["user"] + "'", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                rep1.DataSource = dt;
                rep1.DataBind();
            /*}*/
        }
    }
}