<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardUI.aspx.cs" Inherits="NACCUGSoft_Online.DashboardUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>

 <section class="navigation">
  <div class="nav-container">
    <div class="brand">
      <a href="DashboardUI.aspx">GPFCCU Online</a>
     </div>
<%--    <div class="nav navbar-nav navbar-right">
      <a href="NewLoginUI.aspx">Sign Out</a>
    </div>--%>
<%--    <nav class="signout">
          <a href="NewLoginUI.aspx"></a>Sign Out</>
    </nav>--%>
<%--      <ul class="nav navbar-nav navbar-right">
          <li><a href="NewLoginUI.aspx"></a>Sign Out</li>
      </ul>--%>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="NewOnlineRegistrationUI.aspx" style="background: #2581DC;">Loan Application</a>
        </li>
        <li>
          <a href="VisaRequestUI.aspx">Request Statement </a>
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
         <li>
          <a href="NewLoginUI.aspx">Sign Out</a>
        </li>
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">

        <main role="main" class="container">
      <div id="jumbotron">
        <h1 class="header">Welcome to GPFCCU Online platform</h1>
          <img alt="" class="logo" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" />

<%--          <h4>Sub Menu for CUs</h4>
            <a class="btn btn-lg btn-primary" href="CUOnlineRegistration.aspx" role="button">Member Registration »</a>
              <a class="btn btn-lg btn-primary" href="Online_LoanApplication.aspx" role="button">Loan Application »</a>
              <a class="btn btn-lg btn-primary" href="CUOnlineVisaApplication.aspx" role="button">Visa Request Statement »</a>
              <a class="btn btn-lg btn-primary" href="CUSavingsAdjustment.aspx" role="button">Savings Adjustment »</a>
              <a class="btn btn-lg btn-primary" href="CURequestforclosure.aspx" role="button">Request for Closure »</a>--%>
              
          <h4>Sub Menu for Members</h4>
              <a class="btn btn-lg btn-primary" href="ConfirmLoanApplied.aspx" role="button">Confirm Loan Applied »</a>
              <a class="btn btn-lg btn-primary" href="ConfirmVisaRequest.aspx" role="button">Confirm Statement Request »</a>
              <a class="btn btn-lg btn-primary" href="ConfirmSavingsAdjustment.aspx" role="button">Confirm Adjustment »</a> 
             <a class="btn btn-lg btn-primary" href="ChangePinCode.aspx" role="button">Change your Password »</a> 
              </div>
    </main>
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
