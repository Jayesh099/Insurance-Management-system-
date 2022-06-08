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
    public partial class UpdatePolicy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            fetch_policy();
        }

        //fetching  details about policy for updating 
        public void fetch_policy()
        {
            if (Request.QueryString["upid"] != null)
            {
                String update = "select *  from policy where Policy_id='" + Request.QueryString["upid"] + "'";
                SqlCommand cmd = new SqlCommand(update, con);
                con.Open();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);


                String Policy_name = TextBox3.Text = dt.Rows[0][2].ToString();
                String policy_description = TextBox2.Text = dt.Rows[0][3].ToString();
                //String policyimage  = TextBox3.Text = dt.Rows[0][3].ToString();

                String policypurchase = TextBox4.Text = dt.Rows[0][5].ToString();
                String claimvalue = TextBox6.Text = dt.Rows[0][6].ToString();


               // SqlData sqlda = New SqlDataAdapter(com)
                con.Close();
            }
        }

        //fetching  details about policy for updating 



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["upid"] != null)
            {
                String update_policy = "update policy set Policy_name='" + TextBox3.Text + "',Policy_description='" + TextBox2.Text + "',Policy_purchase_value='" + TextBox4.Text + "',policy_claim_value='" + TextBox6.Text + "'  where  Policy_id='" + Request.QueryString["upid"] + "'   ";
                SqlCommand cmd = new SqlCommand(update_policy, con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Updated  Successfully..";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                con.Close();
                Response.Redirect("viewpolicy.aspx");
            }
        }
    }
}