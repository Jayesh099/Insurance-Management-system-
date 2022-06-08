using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace Insurance_management_System.forgotpassword
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnmailsend_Click(object sender, EventArgs e)
        {

            //code for  sending otp
            int Status = 0;
            String num = "0123456789";
            int len = num.Length;
            string otp = string.Empty;

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
            String get = "select * from registration_customer where email='" + txtforgotemail.Text + "'";
            SqlCommand cmd = new SqlCommand(get, con);
            con.Open();
            int getValue = Convert.ToInt32(cmd.ExecuteScalar());
            Response.Write(getValue);
            if (getValue != 0)
            {
                Session["email"] = txtforgotemail.Text;
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("nilusilu3@gmail.com");
                msg.To.Add(txtforgotemail.Text);
                msg.Subject = "RANDOM  OTP";
                msg.Body = "Your OTP  is:" + otp;
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "Insurancecompany7883@gmail.com"; //Your Email ID  
                ntwd.Password = "IMS@7883"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Redirect("fgotpverfiy.aspx");
            }
            else
            {
                lblMessage.Text = "Email ID is not exist,plz try again..";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }



            //code for  sending  otp  to email 

        }
    }
}