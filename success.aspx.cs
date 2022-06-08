using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_management_System
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string OID = string.Empty;

            if (Session["ORDER_ID"] != null)
            {
                OID = Session["ORDER_ID"].ToString();
                Session.Remove("ORDER_ID");
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            lblOrderID.Text = "Payment is successfully " + OID;
        }

        protected void home_Click(object sender, EventArgs e)
        {
          //  Response.Redirect("index.aspx");
        }
    }
}