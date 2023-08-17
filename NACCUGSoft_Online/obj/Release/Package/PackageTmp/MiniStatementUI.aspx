<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MiniStatementUI.aspx.cs" Inherits="NACCUGSoft_Online.MiniStatementUI" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Mini Statement</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
        .auto-style2 {
            width: 251px;
        }
    </style>
</head>
<body>

 <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="DashboardUI.aspx">GPFCCU Online</a>
    </div>
    <nav class="signout">Sign Out</nav>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="NewOnlineRegistrationUI.aspx" style="background: #2581DC;">Loan Application</a>
        </li>
        <li>
          <a href="VisaRequestUI.aspx">Visa Request Statement </a>
        </li>
        <li>
          <a href="SavingAdjustmentUI.aspx">Savings Adjustment </a>
        </li>
        <li>
          <a href="RequestForClosureUI.aspx">Request for Closure</a>
        </li>
        <li>
          <a href="TranferFormUI.aspx">Account Transfer</a>
        </li>
          <li>
          <a href="withdrawalForm.aspx">Withdrawal Form</a>
        </li>
        <li>
          <a href="MiniStatementUI.aspx">Mini Statement </a>
        </li>
        <li>
          <a href="BalanceEnquiryUI.aspx">Balance Enquiry</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">
        <h2 style=" color: aliceblue;">Mini Statement</h2>
        <div id="container">
            <p>
                 <label>
                    Select Account <br>
           <select id ="selectemp" runat ="server" class="auto-style2"></select>
                     </label>
            </p>
            <p>
                   <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click" style=" border-radius: 4px; margin-top: 30px; ">Show Transactions</button>
            </p>
            <P>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </P>
                        <h3> Select the date range to preview the statement <br></h3>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            <p>
               <label>
                    Date From<br>
                    <input  name="datefrom" id="datefrom" type="date"/>
                </label>
           </p>
            <p>
               <label>
                    Date To<br>
                    <input  name="dateto" id="dateto" type="date"/>
                </label>
           </p>
             <p>
                   <button id ="Button2"  runat="server" name ="Button2" onserverclick="Button2_Click" style=" border-radius: 4px; margin-top: 30px; ">Preview the Statement</button>
            </p> 
           <%-- <div class="table-reponsive box">
                <table id="example" class="table table-striped table-bordered">
                    <thead>
            <tr>
                <th>Number</th>
                <th>Account Number</th>
                <th>Transaction Narrative</th>
                <th>Transaction Amount</th>
                <th>Transaction_Date</th>

            </tr>
               </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>13000000102</td>
                <td>Teller Interest Charged</td>
                <td>-1419.36</td>
                <td>6/30/2020 2:33 PM</td>

            </tr>
            <tr>
                <td>2</td>
                <td>13000000102</td>
                <td>Teller Interest Paid</td>
                <td>1419.36</td>
                <td>6/30/2020 2:33 PM</td>
            </tr>
            <tr>
                <td>3</td>
                <td>13000000102</td>
                <td>Loan Repayment</td>
                <td>2080.64</td>
                <td>6/30/2020 2:33 PM</td>

            </tr>
            <tr>
                <td>4</td>
                <td>13000000102</td>
                <td>Teller Interest Charged</td>
                <td>-619.16</td>
                <td>5/18/2020 9:41AM</td>

            </tr>
            <tr>
                <td>5</td>
                <td>13000000102</td>
                <td>Teller Interest Paid</td>
                <td>619.16</td>
                <td>5/18/2020 9:41 AM</td>

            </tr>

        </tbody>
    </table>
</div>--%>
            

        </div>
    </form>     
        <footer>
        <div  class="auto-style1"> <a href="http://www.gpfccu.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/Gambia-Police-Force-Co-Operate-Credit-Union-179975342776118" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7859285 / 7957576</div>
       <div class="auto-style1"">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
</body>
</html>
