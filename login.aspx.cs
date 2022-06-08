using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;
using System.Web.Security;

namespace Insurance_management_System
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Status = 1;
            int id = 0;
            string name=null;
          //  String encpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(T"SHA1");
            String get = "select * from registration_customer where email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
            //Response.Write(get);
            SqlCommand cmd = new SqlCommand(get, con);
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                id = Convert.ToInt32(dr["Id"].ToString());
                name = dr["Name"].ToString();
            }
            int getValue = Convert.ToInt32(cmd.ExecuteScalar());
           // Response.Write(getValue);
            if (getValue != 0)
            {
                Session["user"] = TextBox1.Text;
                Session["name"] = name;
                Session["customer_id"] = id;
                Response.Redirect("index.aspx");
            }
            else
            {
                lblMessage.Text = "invalid email or password try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}