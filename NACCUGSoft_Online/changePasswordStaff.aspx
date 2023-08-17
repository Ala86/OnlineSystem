g<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePasswordStaff.aspx.cs" Inherits="NACCUGSoft_Online.changePasswordStaff" %>
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
      <h2>Change Your Password</h2>
        <div id="container">
            <p>   
                 <label>
                   Enter User ID<br>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                         </label>   
                 <label>  
                  Staff Name<br>
                 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   </label>
                <label>
                  Enter your Old Password<br>
                <asp:TextBox ID="TextBox1" type="password" runat="server"></asp:TextBox>
                         </label>
           <button  id ="Button2"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">Update the New Password </button>     
                    </p>    
            <p>
                   <button  id ="Button1"  runat="server" name ="btnSubmitt" onserverclick="Submitt_Click">Display Staff Details</button> 
                           <label> 
                  New Password<br>
                 <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
                   </label>
                 <label> 
                  Confirm New Password<br>
                 <asp:TextBox ID="TextBox3" type="password" runat="server"></asp:TextBox>
                   </label>
               
                </p>      
        </div>
    </form>
         <footer>
        <div class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div class="auto-style1">Contact Us 7833358 / 9138402</div>
        <div class="auto-style1">Copyright New Vision Technologies Ltd 2020</div>
         </footer>
</body>
</html>
