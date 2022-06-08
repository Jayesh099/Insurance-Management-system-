using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Insurance_management_System
{
    public partial class Claim : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

           




        }

        protected void btnclaim_Click(object sender, EventArgs e)
        {


            //image upload
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("/Claim_Document/") + FileUpload1.FileName);
              }
            else
            {
                imageupload.Text = "Select image first";
            }
            String url = FileUpload1.FileName;


            //String status_claim ="Not Approved ";

            //image upload
            String claim ="insert into claim(policy_id,Intimation_Date,description,Document,Total_amount) values('"+ txtclaimpolicynumber .Text+ "','"+ intimationdate .Text+ "','"+ txtDescription .Text+ "','"+url+"','"+ txttotalamount .Text+ "')";
            SqlCommand cmd = new SqlCommand(claim, con);
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Inserted  Successfully..";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            con.Close();


        }
    }
}