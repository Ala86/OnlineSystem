using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Net;

namespace NACCUGSoft_Online
{
    public partial class changePasswordStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }
        protected void Submitt_Click(object sender, EventArgs e)
        {
            getEntityAccounts();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text.Trim() == TextBox3.Text.Trim())
            {
                //string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                //SqlConnection con = new SqlConnection(connStr);
                //con.Open();
                //string query = "update susers set pswd = '" + TextBox3.Text.Trim() + "' where oprcode = '" + TextBox1.Text.Trim() + "'";
                //SqlCommand cmd = new SqlCommand(query, con);
                //cmd.ExecuteNonQuery();

                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
                SqlCommand cmd = null;
                //string query = "update person set pinnumber = '" + lblOTP.Text + "' where  person.personid = (select distinct person.personid from person,customerperson,customer where customerperson.personid = person.personid and customerperson.customerid = customer.customerid and customer.number = '" + TextBox1.Text.Trim() + "')";
                string query = "update susers set pswd = '" + TextBox3.Text.Trim() + "' where oprcode = '" + TextBox4.Text.Trim() + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                //   This is to send SMS to the member

               // sms();

                //this is to uodate
                string message = "Member PIN has been Updated!.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                string message = "Your PIN did not march.";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                return;
            }

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }
        private void getEntityAccounts()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            SqlCommand command = new SqlCommand("OnlineOTPStaff", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", TextBox4.Text));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                TextBox5.Text = Convert.ToString(dt.Rows[0]["fullname"]);
            }
        }
        private void sms()
        {
            // Find your Account Sid and Token at twilio.com / console
            //  DANGER!This is insecure.See http://twil.io/secure
            const string accountSid = "AC25bde79e64a93e1844baddb3a5a77608";
            const string authToken = "49b2e50d4eca4870a2f44dd38ec7eb9b";

            TwilioClient.Init(accountSid, authToken);
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls11;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;
            var message = MessageResource.Create(
                body: "Please find your new PIN number '" + TextBox2.Text + "'",
                from: new Twilio.Types.PhoneNumber("+12513129241"),
                to: new Twilio.Types.PhoneNumber("+2202790316")
            );

            Console.WriteLine(message.Sid);

        }
    }
}