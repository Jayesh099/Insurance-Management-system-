using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_management_System
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            int amount = 0;
            string CUST_ID = string.Empty;
            string ORDER_ID = string.Empty;
            int policy_id;
            if (Request.QueryString["amount"] != null)
            { 
                amount = Convert.ToInt32(Request.QueryString["amount"]);
                policy_id = Convert.ToInt32(Request.QueryString["policy_id"]);
                if (amount > 0)
                {
                    if(Session["user"] != null)
                    {
                        CUST_ID = Session["user"].ToString();
                        Session["policy_id"] = policy_id;
                    }
                    Random r = new Random();
                    ORDER_ID = "ORD" + r.Next(11111, 99999).ToString() + "_" + CUST_ID + "_" + policy_id;
                    string merchantKey = "rKFy9v9vGjp7ajt5";  //Change this constant's value with Merchant key

                    Dictionary<string, string> parameters = new Dictionary<string, string>();

                    parameters.Add("MID", "TYmwCE61492093834199");
                    parameters.Add("CHANNEL_ID", "WEB");
                    parameters.Add("INDUSTRY_TYPE_ID", "Retail");
                    parameters.Add("WEBSITE", "WEBSTAGING");
                    //parameters.Add("EMAIL", txtemailid.Text);
                    //parameters.Add("MOBILE_NO", txtcontactno.Text);
                    parameters.Add("CUST_ID", CUST_ID);
                    parameters.Add("ORDER_ID", ORDER_ID);
                    parameters.Add("TXN_AMOUNT", amount.ToString());
                    parameters.Add("CALLBACK_URL", "https://localhost:44398/PaytmResponse");


                    string checksum = Paytm.Checksum.generateSignature(parameters, merchantKey);
                    //sesion  id 


                    //session
                    //bool verifySignature = Paytm.Checksum.verifySignature(parameters, merchantKey, checksum);
                    //Response.Write(checksum + "<br>");
                    //Response.Write(verifySignature+"<br>");

                    //if (verifySignature.ToString() == "True" )
                    //{
                    string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";
                    string outputHTML = "<html>";
                    outputHTML += "<head>";
                    outputHTML += "<title>Merchant check out page</title>";
                    outputHTML += "</head>";
                    outputHTML += "<body>";
                    outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
                    outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
                    outputHTML += "<table border='1'>";
                    outputHTML += "<tbody>";
                    foreach (string Key in parameters.Keys)
                    {
                        outputHTML += "<input type='hidden' name='" + Key + "' value='" + parameters[Key] + "'>";
                    }
                    outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
                    outputHTML += "</tbody>";
                    outputHTML += "</table>";
                    outputHTML += "<script type='text/javascript'>";
                    outputHTML += "document.f1.submit();";
                    outputHTML += "</script>";
                    outputHTML += "</form>";
                    outputHTML += "</body>";
                    outputHTML += "</html>";

                    Response.Write(outputHTML);
                }
            }
        }
    }
}