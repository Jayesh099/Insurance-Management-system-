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
    public partial class addCategory : System.Web.UI.Page
    { 
        
        //connection string  
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            String category = "insert into category  (Category_name,Status)values('" + TextBox1.Text + "','"+1+"')";
            SqlCommand cmd = new SqlCommand(category, con);
            con.Open();
            cmd.ExecuteNonQuery();
          
            lblMessage.Text = "Inserted  Successfully..";
                lblMessage.ForeColor = System.Drawing.Color.Green;
         
            con.Close();
        }
    }
}