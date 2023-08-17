<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TranferFormUI.aspx.cs" Inherits="NACCUGSoft_Online.TranferFormUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Transfer Form</title>
    <link rel="Stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" type="text/css" />
    <link rel="Stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="Scripts/Datatable.js"></script>
    <link rel="Stylesheet" href="Content/Site.css" type="text/css" />
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
        <h2>Tranfer Form</h2>
        <div id="container">
               <p>
                <label>
                    Account Number<br>
                    <input type="text" placeholder="Account Number" />
                </label>
                 <label>
                    Beneficiary Account<br>
                <input type="number" placeholder="Beneficiary Account" />
                </label>
                </p>
                <p>
                <label>
                    Transaction Amount<br>
                    <input type="number" placeholder="Amount" />
                </label>
                <label>
                    Transaction Date<br>
                    <input type="date" placeholder="01/01/1900" />
                </label>

                </p>
            <p>
                 Description<br>
            <textarea rows="5" cols="80"></textarea>
            </p>
          
             <p>
                 <br>
                <button>SAVE DETAILS</button>
                <button>ACCOUNT ENQUIRY</button>
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
