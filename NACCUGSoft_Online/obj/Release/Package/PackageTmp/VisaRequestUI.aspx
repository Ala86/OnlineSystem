<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaRequestUI.aspx.cs" Inherits="NACCUGSoft_Online.VisaRequestUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Visa Request</title>
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
      <a href="#!">GPFCCU Online</a>
    </div>
    <nav class="signout">Sign Out</nav>
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
      </ul>
    </nav>
  </div>
</section>

    <form id="form1" runat="server">
        <h2>Statment Request</h2>
        <div id="container">
            <p>
                <label>
                    Member Code<br>
                       <asp:TextBox ID="mcode" name ="mcode" runat="server" Enabled="False"></asp:TextBox>
                </label>
                <label>
                    First Name<br>
                    <input type="text" id ="fname" name ="fname" placeholder=" ">
                </label>
                <label>
                    Address<br>
                    <input type="text" id ="address" name ="address" placeholder=" ">
                </label>
                 <label>
                    Phone Number <br>
                    <input type="text" id ="phonenumber" name ="phonenumber" placeholder=" ">
                </label>
            </p>
            <p>
                <label>
                    Employment Number<br>
                <input type="text" id ="enumber" name ="enumber" placeholder=" ">
                </label>
                <label>
                    Middle Name<br>
                    <input type="text" id ="mname" name ="mname" placeholder=" ">
                </label>
                <label>
                    Job Title<br>
                    <input type="text" id ="jobtitle" name ="jobtitle" placeholder=" ">
                </label>
                                <label>
                    Date<br>
                    <input type="date" id ="ddate" name ="ddate">
                </label>
            </p>
            <p>
                <label style="visibility:hidden">
                    number<br>
                    <input type="number" id ="number" name ="number" placeholder=" ">
                </label>
                                <label>
                    Last Name<br>
                    <input type="text" placeholder="Enter Last Name">
                </label>
                <label>
                    Purpose<br>
                    <input type="text" id ="purpose" name ="purpose" placeholder=" ">
                </label>
            </p>
            <p>
                <button id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
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
