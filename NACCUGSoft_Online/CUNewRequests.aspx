<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CUNewRequests.aspx.cs" Inherits="NACCUGSoft_Online.CUNewRequests" %>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
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
          <h2>Online Request</h2>
    <div id='container'>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="custcode" DataSourceID="SqlDataSourceNewRequest" ForeColor="#333333" GridLines="None" Width="1155px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="custcode" HeaderText="custcode" InsertVisible="False" ReadOnly="True" SortExpression="custcode" />
                <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" SortExpression="EmpNo" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="trandate" HeaderText="trandate" SortExpression="trandate" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                <asp:CheckBoxField DataField="checked" HeaderText="checked" SortExpression="checked" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceNewRequest" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" DeleteCommand="DELETE FROM [OnlineRequestForOnlineAccess] WHERE [custcode] = @custcode" InsertCommand="INSERT INTO [OnlineRequestForOnlineAccess] ([EmpNo], [fname], [mname], [lname], [title], [phone], [trandate], [remarks], [checked], [email]) VALUES (@EmpNo, @fname, @mname, @lname, @title, @phone, @trandate, @remarks, @checked, @email)" SelectCommand="SELECT * FROM [OnlineRequestForOnlineAccess] ORDER BY [trandate]" UpdateCommand="UPDATE [OnlineRequestForOnlineAccess] SET [EmpNo] = @EmpNo, [fname] = @fname, [mname] = @mname, [lname] = @lname, [title] = @title, [phone] = @phone, [trandate] = @trandate, [remarks] = @remarks, [checked] = @checked, [email] = @email WHERE [custcode] = @custcode">
            <DeleteParameters>
                <asp:Parameter Name="custcode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpNo" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter DbType="Date" Name="trandate" />
                <asp:Parameter Name="remarks" Type="String" />
                <asp:Parameter Name="checked" Type="Boolean" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="custcode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
