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
    public partial class Update_Category : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fetch_Category();
            }
        }

        public void fetch_Category()
        {
            if (Request.QueryString["upid"] != null)
            {
                String update = "select *  from category where category_id='" + Request.QueryString["upid"] + "'";
                SqlCommand cmd = new SqlCommand(update, conn);
                conn.Open();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);


                String name = TextBox1.Text = dt.Rows[0][1].ToString();
              

                //SqlData sqlda = New SqlDataAdapter(com)
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["upid"] != null)
            {
                String update_category = "update category  set Category_name='" + TextBox1.Text + "'  where  category_id='" + Request.QueryString["upid"] + "'   ";
                SqlCommand cmd = new SqlCommand(update_category, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Updateed  Successfully..";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                conn.Close();
                Response.Redirect("categorydisplay.aspx");
            }
        }
    }
}