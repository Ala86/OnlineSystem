using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NACCUGSoft_Online
{
    public partial class BalanceEnquiryUI : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        int ncompid = 30;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Global.GlUserNames == "")  //|| Global.GlUserNames == " "
                {
                    Response.Redirect("NewLoginUI.aspx");
                }

                if (Global.GCmemtype0 == "0")
                {
                    string mcode = Request.Form["mcode"];
                   
                    mcode = Global.GlUserNames;
                    getEntityAccounts();

                }
                //else
                //{
                //    TextBox1.Visible = false;
                //    getEntityCode();
                //    getEntityAccounts2();
                //}
            }
        }

        private void getEntityAccounts()
        {
            string mcode = Request.Form["mcode"];
            String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
            command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", Global.GlUserNames));
            command.CommandType = CommandType.StoredProcedure;
            SqlDataReader da = command.ExecuteReader();
            table.Append("<table border='1' cellpadding='5' cellspacing = '0' style='border: 2px solid #ccc; font-size: 11pt; font-family:Arial'>");
            table.Append("<tr><th style ='background-color: #B8DBFD; border: 2px solid #ccc'>Account Number</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'>Member Name</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'> Member Code</th><th style ='background-color: #B8DBFD; border: 2px solid #ccc'> Account Name</th><th  style ='background-color: #B8DBFD; border: 2px solid #ccc'> Account Balance</th>");
            table.Append("</tr>");
            if (da.HasRows)
            {
                while (da.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[0] + "</td>");
                    table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[1] + "</td>");
                    table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[2] + "</td>");
                    table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[3] + "</td>");
                    table.Append("<td style ='width:300px; border: 2px solid #ccc'>" + da[4] + "</td>");
                    table.Append("<tr>");
                } 
                   
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            da.Close();
            

            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //acctgrid.DataSource = dt;
            //acctgrid.DataBind();
        }
        //private void getEntityAccounts2()
        //{

        //    String strConnString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(strConnString);
        //    con.Open();
        //    SqlCommand command = new SqlCommand("tsp_getIndMembersAccounts_Ala", con);
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@compid", ncompid));
        //    command.Parameters.Add(new System.Data.SqlClient.SqlParameter("@custcode", DropDownList1.SelectedValue));
        //    command.CommandType = CommandType.StoredProcedure;
        //    SqlDataReader da = command.ExecuteReader();
        //    table.Append("<table border='1'>");
        //    table.Append("<tr><th>Member Name</th><th> Account Number</th><th> Account Balance</th>");
        //    table.Append("</tr>");
        //    if (da.HasRows)
        //    {
        //        while (da.Read())
        //        {
        //            table.Append("<tr>");
        //            table.Append("<td>" + da[0] + "/td");
        //            table.Append("<td>" + da[1] + "/td");
        //            table.Append("<td>" + da[2] + "/td");
        //            table.Append("<tr>");
        //        }

        //    }

        //    table.Append("</table>");
        //    PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
        //    da.Close();
        //}


        //private void getEntityCode()
        //{
        //    string cmcode = Request.Form["cmcode"];
        //    // using (SqlConnection ndConnHandle1 = new SqlConnection(cs))
        //    string connStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connStr);
        //    con.Open();
        //    {

        //        string com = "select ltrim(rtrim(ccustfname))+' '+ltrim(rtrim(ccustmname))+' '+ltrim(rtrim(ccustlname))  as membname,ccustcode,cstaffno from cusreg where cusreg.compid=30 and lactive=1";
        //        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //        DataTable dt = new DataTable();
        //        adpt.Fill(dt);
        //        cmcode.DataSource = dt;
        //        DropDownList1.DataBind();
        //        DropDownList1.DataTextField = "membname";
        //        DropDownList1.DataValueField = "ccustcode";
        //        DropDownList1.DataBind();
        //    }
        //}
    }
}