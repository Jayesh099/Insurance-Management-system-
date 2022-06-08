using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Insurance_management_System.Admin.admindisplay
{
    public partial class demopolicy : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            get_brand_name();

        }

        public string get_brand_name()
        {
            string data = null;
            String get = "select * from category";
            //Response.Write(get);
            SqlCommand cmd = new SqlCommand(get, con);
            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = Convert.ToInt32(dr["category_id"].ToString());
                String name = dr["Category_name"].ToString();

                data += "<option value=" + id + ">" + name + "<option>";
            }

            return data;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("~/Admin/PolicyImage/") + FileUpload1.FileName);

            }
            else
            {
                imageupload.Text = "Select image first";
            }
            String url = FileUpload1.FileName;

            //pfd upload code  
            if (uploadPDF.HasFile)
            {

                uploadPDF.SaveAs(Server.MapPath("~/Admin/PolicyImage/") + uploadPDF.FileName);

            }
            else
            {
                imageupload.Text = "Select image first";
            }
            String url1 = uploadPDF.FileName;




            //pfd upload code 








            //image code where  admin have to save their own  name in which they want to store image  jitu bhai no  code 
            /* if (FileUpload1.HasFile)
             {
                 string fname = "newname";

                 FileUpload1.SaveAs(Server.MapPath("~/Admin/PolicyImage/") + fname);
                 // imageupload.Text = "Image uploaded Successfully";
             }
             else
             {
                 imageupload.Text = "Select image first";
             }
             String url = "~\\PolicyImage\\" + FileUpload1.FileName;
            */ //image code where  admin have to save their own  name in which they want to store image 





            //image code ended 
            int catid = Convert.ToInt32(Request.Form.Get("catid"));

            String policy = "insert into PPolicydemo values('" + catid + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + url + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + url1 + "','"+ dicount .Text+ "')";
            //Response.Write(policy);
            SqlCommand cmd = new SqlCommand(policy, con);
            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Inserted  Successfully..";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            con.Close();
        }
    }
}