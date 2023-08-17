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

namespace NACCUGSoft_Online
{
    public partial class NewLoginUI : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            Global.GlUserNames = string.Empty; ;
            Global.GlUserNamesf = string.Empty; ;
            Global.GlUserNamesl = string.Empty; ;
            Global.GlUserNamesc = string.Empty; ;
            Global.GlUserNamesp = string.Empty; ;

            //  Global.GCmemtype0 = RadioButtonList1.SelectedValue;
            Global.GCmemtype0 = 0.ToString();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            //string name = Request.Form["Name"];
            //string password = Request.Form["password"];
            string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);

            //  int distance;
            if (RadioButtonList1.SelectedValue == "1")
            {

                SqlDataAdapter sda = new SqlDataAdapter("select Number,name,Forename,Surname,Telephone3,SocialSecurityNumber, count(*) as ala from person ,CustomerPerson, Customer where CustomerPerson.PersonID = person.PersonID and CustomerPerson.customerid = Customer.CustomerID and Number = '" + name.Text.ToString().Trim() + "' and pinnumber ='" + password.Text.ToString().Trim() + "' group by Number,name,Forename,Surname,Telephone3,SocialSecurityNumber", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Global.GlUserNames = Convert.ToString(dt.Rows[0]["number"]);
                    Global.GlUserNamesf = Convert.ToString(dt.Rows[0]["Forename"]);
                    Global.GlUserNamesl = Convert.ToString(dt.Rows[0]["Surname"]);
                    Global.GlUserNamesc = Convert.ToString(dt.Rows[0]["Telephone3"]);
                    Global.GlUserNamesp = Convert.ToString(dt.Rows[0]["SocialSecurityNumber"]);
                    this.Visible = false;
                    Response.Redirect("~/DashboardUI.aspx");
                }
                else 
                {
                    string connStr1 = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                    SqlConnection con1 = new SqlConnection(connStr1);
                    SqlDataAdapter sda1 = new SqlDataAdapter("select oprcode,count (*) from susers where oprcode ='" + name.Text.ToString().Trim() + "' and pswd ='" + password.Text.ToString().Trim() + "' group by oprcode", con1);
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    //  if (dt1.Rows[0][0].ToString() == "1")
                    if (dt1.Rows.Count > 0)
                    {
                        Global.GlUserNames = Convert.ToString(dt1.Rows[0]["oprcode"]);

                        this.Visible = false;
                        Response.Redirect("~/CUDashboard.aspx");
                    }
                     else //if (RadioButtonList1.SelectedValue == "0")
                        {

                        string message = "Incorrect UserName and Password";

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

            }
           
        
          }
        protected void Submitt_Click(object sender, EventArgs e) //Button1
        {
            Response.Redirect("~/RegistrationUI.aspx");
        }
        protected void Submittt_Click(object sender, EventArgs e) //Button1
        {
            Response.Redirect("~/RequestForOnlineAccess.aspx");
        }

    }
}