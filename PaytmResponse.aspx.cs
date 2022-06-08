using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Insurance_management_System
{
    public partial class PaytmResponse : System.Web.UI.Page
    {
        string merchantKey = "rKFy9v9vGjp7ajt5";  //Change this constant's value with Merchant key
        Dictionary<string, string> paramList = new Dictionary<string, string>();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\Insurance_management_System\App_Data\Insurance_Management _System.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string paytmChecksum = string.Empty;
            foreach (string key in Request.Form.Keys)
            {
                if (key.Equals("CHECKSUMHASH"))
                {
                    paytmChecksum = Request.Form[key];
                }
                else
                {
                    paramList.Add(key.Trim(), Request.Form[key].Trim());
                }
            }
            bool isValidChecksum = Paytm.Checksum.verifySignature(paramList, merchantKey, paytmChecksum);
            //string TXNID = paramList["TXNID"];
           
                string ParameterORD = paramList["ORDERID"];
            string[] strArr = ParameterORD.Split('_');
            Session["ORDER_ID"] = strArr[0];
            Session["customer_id"] = strArr[1];
            Session["policy_id"] = strArr[2];
            /*DateTime date =Convert.ToDateTime( DateTime.Now.ToString("D"));
        //    String Date = Convert.ToDateTime("date");
            DateTime time =Convert.ToDateTime( DateTime.Now.ToString("T"));*/
            if (isValidChecksum)
            {
                if (paramList["STATUS"].Equals("TXN_SUCCESS"))
                {
                   String category = "insert into Tbl_purchase values('"+Session["customer_id"]+"','"+Session["policy_id"]+"','" + Session["ORDER_ID"] + "',GETDATE(),GETDATE())";
                   // String category = "insert into purchase values(" + Session["customer_id"] + ", " + Session["policy_id"] + ",'" + Session["ORDER_ID"] + "');";
                    SqlCommand cmd = new SqlCommand(category, con);
                    Response.Write(category);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("success.aspx");
                }
            }
            else
            {

                //Send Order
                Response.Redirect("error.aspx");
            }

        }
    }
}