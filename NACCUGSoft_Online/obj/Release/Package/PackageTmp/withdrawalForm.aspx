<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdrawalForm.aspx.cs" Inherits="NACCUGSoft_Online.withdrawalForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Withdrawal Form</title>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 6px;
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
        <h2>Withdrawal Form</h2>
        <div id="container">
            <p>
                  <label>
                    Date<br>
                    <input type="date" id ="ddate" name ="ddate"/>
                </label>
                <label>
                    First Name<br>
                    <input type="text" id ="fname" name ="fname" />
                </label>
                <label>
                    Address<br>
                    <input type="text" id ="address" name ="address" />
                </label>
                 <label>
                    Phone Number <br>
                    <input type="text" id ="phonenumber" name ="phonenumber" />
                </label>
            </p>
            <p>
                <label>
                    Employment Number<br>
                <input type="text" id ="enumber" name ="enumber" />
                </label>
                <label>
                    Middle Name<br>
                    <input type="text" id ="mname" name ="mname" />
                </label>
                <label>
                    Savings Balance<br>
                    <input type="number" id ="sbalance" name ="sbalance"/>
                </label>
               
            </p>
            <p>
            <label>
                Member Code <br>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </label>
               <label>
                    Last Name<br>
                    <input type="text" id ="lname" name ="lname"/>
                </label>
                <label>
                    Loan Balance<br>
                    <input type="number" id ="lbalance" name ="lbalance" />
                </label>
            </p>
            <p>
                <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
            </p>
        </div>
    </form>
        <footer>
        <div  class="auto-style1"> <a href="http://www.naccug.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style1"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style1"> <a href="https://www.facebook.com/naccug/" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style1">Contact Us 7833358 / 9138402</div>
       <div class="auto-style1"">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
</body>
</html>
