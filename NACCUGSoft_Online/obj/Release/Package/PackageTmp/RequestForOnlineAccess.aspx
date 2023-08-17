<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestForOnlineAccess.aspx.cs" Inherits="NACCUGSoft_Online.RequestForOnlineAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Request for Closure</title>
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
      <a href="RequestForOnlineAccess.aspx">GPFCCU Online</a>
    </div>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
     
    </nav>
  </div>
</section>
    <form id="form1" runat="server">
        <h2>Request for Online Services</h2>
        <div id="container">
            <p>
                <label>
                    Member Code<br>
                      <asp:TextBox ID="mcode" name ="mcode" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    First Name<br>
                      <asp:TextBox ID="fname" name ="fname" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    Phone Number<br>
                     <asp:TextBox ID="phonenumber" name ="phonenumber" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>           
            </p>
            <p>
                <label>
                    Employment Number<br>
                     <asp:TextBox ID="enumber" name ="enumber" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    Middle Name<br>
                    <asp:TextBox ID="mname" name ="mname" runat="server" BorderColor="Black"></asp:TextBox>
                </label>
                <label>
                    Job Title<br>
                     <asp:TextBox ID="jobtitle" name ="jobtitle" runat="server" BorderColor="Black" ></asp:TextBox>
                </label>
            </p>
            <p>
                <label">
                    Email<br>
                     <asp:TextBox ID="email" name ="email" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    Last Name<br>
                     <asp:TextBox ID="lname" name ="lname" runat="server" BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                </label>
                <label>
                    Date<br>
                   
                    
                      <asp:TextBox ID="ddate" type ="date"  runat="server" BackColor="#FFFF66" BorderColor="Black"></asp:TextBox>
                </label>
            </p>
            <p>
                <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click">SAVE</button>
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

