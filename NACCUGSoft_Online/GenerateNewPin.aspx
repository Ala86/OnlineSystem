<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateNewPin.aspx.cs" Inherits="NACCUGSoft_Online.GenerateNewPin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Dashboard</title>
    <link rel="Stylesheet" href="Content/Site.less" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 173px;
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
      <h2>Generate a New PIN</h2>
        <div id="container">
            <p>        
                    <label>
                   Enter Member Code<br>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         </label>
                 <label> 
                     Full Name<br>
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                     </label>
                <br>
                 <button id ="Button1" runat="server" name ="Button1" onserverclick="Submit_Click">Update Records</button>
                   </p>
            <p>
              <br>

             <button id ="btnSubmitt" runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="auto-style2">Confirm Details</button>
             <br>
                 <label> 
                     Enter Password<br>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              </label>
            </p>
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
