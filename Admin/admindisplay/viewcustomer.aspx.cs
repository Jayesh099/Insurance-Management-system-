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
    public partial class viewcustomer : System.Web.UI.Page
    {
        //conncetion
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cn.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from registration_customer order by Id desc", cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                repeater1.DataSource = dt;
                repeater1.DataBind();
                cn.Close();
                delete_member();

            }
        }
        public void delete_member()
        {
            if (Request.QueryString["delid"] != null)
            {
                int clid;
                clid = Convert.ToInt32(Request.QueryString["delid"]);
                String delete = "delete from registration_customer where Id='" + clid + "'";
                SqlCommand cmd = new SqlCommand(delete, cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("viewcustomer.aspx");
            }


        }
    }
}