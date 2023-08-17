<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CUDashboard.aspx.cs" Inherits="NACCUGSoft_Online.CUDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
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
      <a href="CUDashboardUI.aspx">GPFCCU Online - Staff Menu</a>
     </div>

    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
      <ul class="nav-list">
        <li>
          <a href="cuOnlineRegistration.aspx" style="background: #2581DC;">Registration</a>
        </li>
        <li>
          <a href="GenerateNewPin.aspx">Generate New Password</a>
        </li>
            <li>
          <a href="CUNewRequests.aspx">Services Request</a>
        </li>
        <li>
          <a href="Online_LoanApplication.aspx">Loan Application </a>
        </li>
        <li>
          <a href="CUOnlineVisaApplication.aspx">Statement Request </a>
        </li>
        <li>
          <a href="CURequestforclosure.aspx">Request for Closure</a>
        </li>
        <li>
          <a href="CUSavingsAdjustment.aspx">Savings Adjustment</a>
        </li>
           <li>
          <a href="changePasswordStaff.aspx">Change Password</a>
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
        <h1 class="header">Welcome GPF CCU Online</h1>
          <img alt="" class="logo" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" />

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

