<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLoginUI.aspx.cs" Inherits="NACCUGSoft_Online.NewLoginUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

     <%--<script language="C#" runat="server">

      protected void Submit_Click(object sender, EventArgs e)
      {  
        Response.Write("HTML Server Control Button...");
      }
      
    </script>--%>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Login</title>
     <link rel="Stylesheet" href="Content/Login.less" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            height: 148px;
            width: 225px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <div
      class="signup-bg d-flex flex-column justify-content-center align-items-center">
      <div
        class="signup-modal col-11 col-sm-6 col-md-5 d-flex flex-column justify-content-center align-items-center">
        <h3 class="signup-heading text-center">Welcome To Gambia Police Force Co-operative Credit Union</h3>
          <img alt="" class="auto-style2" longdesc="http://localhost:26530/gtucculogoc.jpe" src="gtucculogoc.jpe" />
        <form runat="server" class="signup-form">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False">
                <asp:ListItem Selected="True" Value="1">Members</asp:ListItem>
                <asp:ListItem Value="0">Staff</asp:ListItem>
            </asp:RadioButtonList>

            <div class="form-group">
                <strong>User Name </strong>
                    <asp:TextBox ID="name"  placeholder="Eg. Member Code (000001)" name="name" aria-hidden="False" autofocus="autofocus" class="form-control signup-form-input" runat="server"  BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
                <strong>Password </strong>
              <asp:TextBox ID="password" class="form-control signup-form-input" placeholder=" " type="password" runat="server"  BorderColor="Black" BackColor="#FFFF66"></asp:TextBox>
           </div>
          <div class="form-group">

            <button  id ="btnSubmit"  runat="server" name ="btnSubmit" onserverclick="Submit_Click" class="get-started-btn">Login </button>
               <button id ="Button1" runat="server" name ="Button1" onserverclick="Submittt_Click" class="get-started-btn">Request For Online Services</button>
            <button id ="btnSubmitt" runat="server" name ="btnSubmitt" onserverclick="Submitt_Click" class="get-started-btn">New Member Register</button>
          </div>
        </form>
      </div>
    </div>
        <footer>
        <div  class="auto-style3"> <a href="http://www.gpfccu.com/" title="Flaticon" class="footer-link">Cick Here to Email Us</a></div>
        <div  class="auto-style4"> <a href="https://www.gmail.com/" title="Flaticon" class="footer-link">Click Here to Visit Our Website</a></div>
        <div  class="auto-style4"> <a href="https://www.facebook.com/Gambia-Police-Force-Co-Operate-Credit-Union-179975342776118" title="Flaticon" class="footer-link">Click Here to Visit Our Facebook Page</a></div>
        <div  class="auto-style4">Contact Us 7859285 / 7957576</div>
       <div class="auto-style3">Copyright New vision Technologies Ltd.  2020</div>
     </footer>
  </body>
</html>
