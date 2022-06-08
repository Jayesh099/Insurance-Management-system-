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
    public partial class addagent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //image upload code
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("~/Admin/agentimage/") + FileUpload1.FileName);

            }
            else
            {
                imageupload.Text = "Select image first";
            }
            String url =  FileUpload1.FileName;
            //image upload code 

            String agent="insert into  agent values('"+ TextBox1 .Text+ "','"+ TextBox2.Text + "','"+ TextBox3.Text + "','"+ TextBox4 .Text+ "','"+ TextBox5 .Text+ "','"+ TextBox6 .Text+ "','"+ DropDownList1.SelectedValue+"','"+ TextBox7 .Text+ "','"+ TextBox8 .Text+ "','"+ TextBox9 .Text+ "','"+ url + "','"+ TextBox11 .Text+ "') ";   
             SqlCommand cmd = new SqlCommand(agent,con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a == 1)
            {
                lblMessage.Text = "Inserted Successfully..";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else 
            {
                lblMessage.Text = "Something went wrong plz try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;    
            }
                con.Close();
        }
    }
}