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
    public partial class UpdateAgent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fetch_agent();
            }

        }


        //function to   fetch  data  
        public void fetch_agent()
        {
            if (Request.QueryString["upid"] != null)
            {
                String update = "select *  from agent where Agent_id='" + Request.QueryString["upid"] + "'";
                SqlCommand cmd = new SqlCommand(update, con);
                con.Open();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ad.Fill(dt);


                String name = TextBox1.Text = dt.Rows[0][1].ToString();
                String email = TextBox2.Text = dt.Rows[0][2].ToString();
                String Fathername = TextBox3.Text = dt.Rows[0][3].ToString();
                String Mothername = TextBox4.Text = dt.Rows[0][4].ToString();
                String AdharNo = TextBox5.Text = dt.Rows[0][5].ToString();
                //String pwd = TextBox6.Text = dt.Rows[0][6].ToString();
                String Gender = DropDownList1.SelectedValue = dt.Rows[0][7].ToString();
                String DOb = TextBox7.Text = dt.Rows[0][8].ToString();
                String Age = TextBox8.Text = dt.Rows[0][9].ToString();
                String Contact = TextBox9.Text = dt.Rows[0][10].ToString();
               //  String Image =FileUpload1.=  dt.Rows[0][6].ToString();
                String Annualincome = TextBox6.Text = dt.Rows[0][12].ToString();

                //SqlData sqlda = New SqlDataAdapter(com)
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["upid"] != null)
            {
                String update_agent = "update agent  set Name='" + TextBox1.Text + "',Email='" + TextBox2.Text + "',Fathername='" + TextBox3.Text + "',MotherName='" + TextBox4.Text + "',AdharNumber='" + TextBox5.Text + "',Gender='" + DropDownList1.SelectedValue + "',Dob='" + TextBox7.Text + "',Age='" + TextBox8.Text + "',Contact='" + TextBox9.Text + "' ,AnnualIncome='" + TextBox11.Text + "'  where  Agent_id='" + Request.QueryString["upid"] + "'   ";
                SqlCommand cmd = new SqlCommand(update_agent, con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Updated Successfully..";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                con.Close();
                Response.Redirect("viewagent.aspx");
            }
        }
    }






}