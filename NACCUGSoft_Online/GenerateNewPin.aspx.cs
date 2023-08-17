using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
using System.ComponentModel;
using System.Text.RegularExpressions;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using System.Net;

namespace NACCUGSoft_Online
{
    public partial class GenerateNewPin : System.Web.UI.Page
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

            //string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            //string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            //string numbers = "1234567890";

            //string characters = numbers;
            //if (rbType.SelectedItem.Value == "1")
            //{
            //    characters += alphabets + small_alphabets + numbers;
            //}
            //int length = int.Parse(ddlLength.SelectedItem.Value);
            //string otp = string.Empty;
            //for (int i = 0; i < length; i++)
            //{
            //    string character = string.Empty;
            //    do
            //    {
            //        int index = new Random().Next(0, characters.Length);
            //        character = characters.ToCharArray()[index].ToString();
            //    } while (otp.IndexOf(character) != -1);
            //    otp += character;
            //}
            //lblOTP.Text = otp;
          //  TextBox3.Text = otp;
            // Generate();
        }
        //protected void Submittt_Click(object sender, EventArgs e)
        //{
        //    GenerateOTP();
        //}
        private void getEntityAccounts()
        {
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            SqlCommand command = new SqlCommand("OnlineOTP", con);
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", TextBox1.Text));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                 TextBox2.Text = Convert.ToString(dt.Rows[0]["fullname"]);

                        }

            else

            {

                string message = "Member Number is not correct";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim() != string.Empty && TextBox1.Text.Trim() != string.Empty)
            {

            //string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            //cmd = new SqlCommand();
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.CommandText = "SPUpdatePassword";
            //cmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());
            //cmd.Parameters.AddWithValue("@MemberCOde", TextBox1.Text.Trim());
            //cmd.Connection = con;
            //cmd.ExecuteNonQuery();
            //this is to update
            //string message = "You are about to update!!!.";

            //System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //sb.Append("<script type = 'text/javascript'>");

            //sb.Append("window.onload=function(){");

            //sb.Append("alert('");

            //sb.Append(message);

            //sb.Append("')};");

            //sb.Append("</script>");
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            //string message = "You are about to update.";

            //System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //sb.Append("<script type = 'text/javascript'>");

            //sb.Append("window.onload=function(){");

            //sb.Append("alert('");

            //sb.Append(message);

            //sb.Append("')};");

            //sb.Append("</script>");
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            SqlCommand cmd = null;
            //string query = "update person set pinnumber = '" + lblOTP.Text + "' where  person.personid = (select distinct person.personid from person,customerperson,customer where customerperson.personid = person.personid and customerperson.customerid = customer.customerid and customer.number = '" + TextBox1.Text.Trim() + "')";
         //   string query = "update person set pinnumber = '" + TextBox3.Text + "' where  (select distinct number from Customer where person.PersonID = Customer.CustomerID) = '" + TextBox1.Text.Trim() + "'";
            string query = "update Person set pinnumber = '" + TextBox3.Text + "' where  '" + TextBox1.Text.Trim() + "' = (select distinct number from Customer, CustomerPerson where CustomerPerson.PersonID = Person.PersonID and CustomerPerson.CustomerID = Customer.CustomerID and Customer.number = '" + TextBox1.Text.Trim() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            //   This is to send SMS to the member
          //  sms();

            ////this is to update
            string message = "Member Password has been Set!!!.";

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

                string message = "Please enter the records";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
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
                body: "Please find your new PIN number '"+ TextBox3.Text+"'",
                from: new Twilio.Types.PhoneNumber("+12513129241"),
                to: new Twilio.Types.PhoneNumber("+2202790316")
            );

            Console.WriteLine(message.Sid);

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}
        //protected void Generate()
        //{
        //    string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        //    string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        //    string numbers = "1234567890";

        //    string characters = numbers;
        //    if (rbType.SelectedItem.Value == "1")
        //    {
        //        characters += alphabets + small_alphabets + numbers;
        //    }
        //    int length = int.Parse(ddlLength.SelectedItem.Value);
        //    string otp = string.Empty;
        //    for (int i = 0; i < length; i++)
        //    {
        //        string character = string.Empty;
        //        do
        //        {
        //            int index = new Random().Next(0, characters.Length);
        //            character = characters.ToCharArray()[index].ToString();
        //        } while (otp.IndexOf(character) != -1);
        //        otp += character;
        //    }
        //    lblOTP.Text = otp;
        //}
        //protected void Submitttt_Click(object sender, EventArgs e)
        //{
        //    Generate();
        //}
        //protected void GenerateOTP(object sender, EventArgs e)
        //{
        //    string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        //   string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        //   string numbers = "1234567890";

        //   string characters = numbers;
        //   if (rbType.SelectedItem.Value == "1")
        //   {
        //      characters += alphabets + small_alphabets + numbers;
        //   }
        //   int length = int.Parse(ddlLength.SelectedItem.Value);
        //   string otp = string.Empty;
        //   for (int i = 0; i < length; i++)
        //   {
        //       string character = string.Empty;
        //      do
        //      {
        //         int index = new Random().Next(0, characters.Length);
        //         character = characters.ToCharArray()[index].ToString();
        //     } while (otp.IndexOf(character) != -1);
        //     otp += character;
        //    }
        //    lblOTP.Text = otp;
        //   TextBox3.Text = otp;
        //}

    }
}