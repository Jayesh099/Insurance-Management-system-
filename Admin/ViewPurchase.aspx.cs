using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Insurance_management_System.Admin.admindisplay
{
    public partial class ViewPurchase : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from Tbl_purchase order by Purchase_id desc", con);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                repeater1.DataSource = dt;
                repeater1.DataBind();
                con.Close();
            }
        }
    }
}