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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            //otp  generation code 








            int Status = 0;
            String num = "0123456789";
            int len = num.Length;
            string otp = string.Empty;
            String txtEmail = TextBox2.Text;
            String encpwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox3.Text, "SHA1");
            //how many digits you wants to mention below;
            int otpdigit = 6;
            string finaldigit;
            int getindex;
            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();
                } while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }
            Session["otp"] = otp;
            String insert = "Insert into  registration_customer  values  ('"+ TextBox1.Text + "','"+ TextBox2.Text + "','"+ encpwd + "','"+ TextBox14.Text + "','"+ TextBox4.Text + "','"+ TextBox5.Text + "','"+ TextBox6.Text + "','"+ TextBox7.Text + "','"+ TextBox8 .Text+ "','"+ RadioButtonList1 .SelectedValue+ "','"+ TextBox10.Text + "','"+ TextBox9 .Text+ "','"+ TextBox11.Text + "','"+ TextBox12 .Text+ "','"+TextBox13.Text+ "','"+ Status + "'  )";
            SqlCommand cmd = new SqlCommand(insert, con);
            con.Open();
           
            int a=cmd.ExecuteNonQuery();
            if (a == 1)
            {
                //String Status = "notverify";
              

                // l1.Text = otp; show ki liya 
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("nilusilu3@gmail.com");
                msg.To.Add(txtEmail);
                msg.Subject = "RANDOM  OTP";
                msg.Body = "Your OTP  is:" + otp;
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "19bmiit083@gmail.com"; //Your Email ID  
                ntwd.Password = "sainijayesh@099"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lblMessage.Text = "Registration Successfully check your mail for verify your account.";
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                Response.Redirect("otp.aspx");
                // MessageBox.Show("Inserted  successfully");

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