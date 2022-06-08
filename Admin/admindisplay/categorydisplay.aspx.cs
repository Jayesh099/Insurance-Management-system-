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




    public partial class categorydisplay : System.Web.UI.Page
    {

        //comnnection string  
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cn.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from category order by category_id desc", cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                repeater1.DataSource = dt;
                repeater1.DataBind();
                cn.Close();
                delete_category();

            }
        }
        public void delete_category()
        {
            if (Request.QueryString["delid"] != null)
            {
                int cid;
                cid = Convert.ToInt32(Request.QueryString["delid"]);
                String delete = "delete from category where category_id='" + cid + "'";
                Response.Write(delete);
                SqlCommand cmd = new SqlCommand(delete, cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("categorydisplay.aspx");
            }
        }


    }
    }
