<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BalanceEnquiryUI.aspx.cs" Inherits="NACCUGSoft_Online.BalanceEnquiryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title>Balance Enquiry</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
            text-align: center;
        }
    </style>
<%--    <title>Balance Enquiry</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <link rel="Stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css" />
    <link rel="Stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="Scripts/Datatable.js"></script>--%>
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

         <h2>Balance Enquiry</h2>
<%--        <P>
        <h2 style=" color: aliceblue;">Balance Enquiry</h2>
            </P>--%>
        <div id="container">
<%--            <p>
               <label>
                    Member Code<br>
                    <input type="text" id="mcode" name="mcode" placeholder="">
                </label>
                 </p>--%>
          <%--  <div class="balance-enquiry">             
                <button style=" border-radius: 4px; ">Member Enquiry</button>
            </div>--%>
            <P>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </P>
           <%-- <div class="table-reponsive box">
                <table id="example" class="table table-striped table-bordered">
                    <thead>
            <tr>
                <th>Account Number</th>
                <th>Member Name</th>
                <th>Member Code</th>
                <th>Account Name</th>
                <th>Account Balance</th>

            </tr>
               </thead>
        <tbody>
            <tr>
                <td class="auto-style1">13000000102</td>
                <td class="auto-style1">NDEY HADDY BADJIE</td>
                <td class="auto-style1">000001</td>
                <td class="auto-style1">Loan</td>
                <td class="auto-style1">1500.00</td>

            </tr>
            <tr>
                <td>13000000103</td>
                <td>NDEY HADDY BADJIE</td>
                <td>000001</td>
                <td>Loan</td>
                <td>600.00</td>
            </tr>
            <tr>
                <td class="auto-style1">13000000104</td>
                <td class="auto-style1">NDEY HADDY BADJIE</td>
                <td class="auto-style1">000001</td>
                <td class="auto-style1">Saving</td>
                <td class="auto-style1">4002.13</td>

            </tr>
            <tr>
                <td>13000000105</td>
                <td>NDEY HADDY BADJIE</td>
                <td>000001</td>
                <td>Shares</td>
                <td>987.75</td>

            </tr>
            <tr>
                <td>13000000106</td>
                <td>NDEY HADDY BADJIE</td>
                <td>000001</td>
                <td>Shares</td>
                <td>700.00</td>

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
