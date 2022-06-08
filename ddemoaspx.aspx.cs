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
    public partial class ddemoaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       /* protected void btnclick_Click(object sender, EventArgs e)
        {

            String send_message = "insert into  FAQ values('" + txtname.Text + "','" + txtemail.Text + "','" + typepolicy.Text + "','" + txtmeassage.Text + "','" + phonenumber.Text + "')";
            SqlCommand sendmsg = new SqlCommand(send_message, con);
            if (sendmsg.Connection.State == ConnectionState.Open)
            {
                sendmsg.Connection.Close();
            }
            con.Open();
            sendmsg.ExecuteNonQuery();
            lblMessage.Text = "Inserted  Successfully..";
            lblMessage.ForeColor = System.Drawing.Color.Green;
            con.Close();
        }
*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            /* String send_message = "insert into  FAQ values('" + Txtname .Text+ "','" + Txtemail.Text + "','" + Txtpolicy.Text + "','" + txtmessage.Text + "','" + txtnumber.Text + "')";
             SqlCommand sendmsg = new SqlCommand(send_message, con);
             if (sendmsg.Connection.State == ConnectionState.Open)
             {
                 sendmsg.Connection.Close();
             }
             con.Open();
             sendmsg.ExecuteNonQuery();
             lblMessage.Text = "Inserted  Successfully..";
             lblMessage.ForeColor = System.Drawing.Color.Green;
             con.Close();*/


            String send_message = "insert into  FAQ values('" + Txtname.Text + "','" + Txtemail.Text + "','" + Txtpolicy.Text + "','" + txtmessage.Text + "','" + txtnumber.Text + "')";
            SqlCommand cmd = new SqlCommand(send_message, con);
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