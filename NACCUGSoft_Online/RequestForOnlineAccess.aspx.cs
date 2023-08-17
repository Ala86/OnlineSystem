using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class RequestForOnlineAccess : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
            {
                Response.Redirect("NewLoginUI.aspx");
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            //string mcode = Request.Form["mcode"];
            //string fname = Request.Form["fname"];
            //string mname = Request.Form["mname"];
            //string phonenumber = Request.Form["phonenumber"];
            //DateTime ddate = Convert.ToDateTime(Request.Form["ddate"]);
            //string enumber = Request.Form["enumber"];
            //string jobtitle = Request.Form["jobtitle"];
            //string lname = Request.Form["lname"];
            //string address = Request.Form["address"];
            //string email = Request.Form["email"];

            if (mcode.Text != string.Empty && fname.Text != string.Empty && lname.Text != string.Empty && phonenumber.Text != string.Empty && ddate.ToString() != string.Empty && email.Text != string.Empty)
            {
                string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connStr);
                con.Open();
               string query = "insert into OnlineRequestForOnlineAccess ( empNo ,fname ,mname,lname,title,phone,trandate,email)  values ('" + enumber.Text + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + jobtitle.Text + "','" + phonenumber.Text + "','" + ddate.Text + "','" + email.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string message = "You will hear from us soon, Request sent Successfully!!!";

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

                string message = "Please make sure all the mandatory fields are filled!!!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

            fname.Text = string.Empty;
            mname.Text = string.Empty;
            lname.Text = string.Empty;
            email.Text = string.Empty;
            jobtitle.Text = string.Empty;
            enumber.Text = string.Empty;
            phonenumber.Text = string.Empty;
        }
    }
}