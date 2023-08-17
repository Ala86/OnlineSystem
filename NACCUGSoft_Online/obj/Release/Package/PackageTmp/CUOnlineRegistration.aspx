<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CUOnlineRegistration.aspx.cs" Inherits="NACCUGSoft_Online.CUOnlineRegistration" %>
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
          <h2>Online Registration</h2>
    <div id='container'>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NACCUDATAConnectionStringALA %>" DeleteCommand="DELETE FROM [OnlineRegistration] WHERE [custcode] = @custcode" InsertCommand="INSERT INTO [OnlineRegistration] ([fname], [lname], [mname], [othername], [branch], [maritalstatus], [title], [gender], [dob], [datejoin], [idtype], [idnumber], [placeIssued], [dateissued], [dateexpired], [nationality], [district], [ward], [residential], [dependance], [country], [city], [address], [phone], [email], [rname], [raddress], [rmobile], [remail], [nextofkin], [nextphone], [relationship], [relationaddress], [employer], [empaddress], [employerphone], [monthlySavings], [EmpNo], [salary], [position], [dept], [checked], [remark], [pinnumber]) VALUES (@fname, @lname, @mname, @othername, @branch, @maritalstatus, @title, @gender, @dob, @datejoin, @idtype, @idnumber, @placeIssued, @dateissued, @dateexpired, @nationality, @district, @ward, @residential, @dependance, @country, @city, @address, @phone, @email, @rname, @raddress, @rmobile, @remail, @nextofkin, @nextphone, @relationship, @relationaddress, @employer, @empaddress, @employerphone, @monthlySavings, @EmpNo, @salary, @position, @dept, @checked, @remark, @pinnumber)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [OnlineRegistration]" UpdateCommand="UPDATE [OnlineRegistration] SET [fname] = @fname, [lname] = @lname, [mname] = @mname, [othername] = @othername, [branch] = @branch, [maritalstatus] = @maritalstatus, [title] = @title, [gender] = @gender, [dob] = @dob, [datejoin] = @datejoin, [idtype] = @idtype, [idnumber] = @idnumber, [placeIssued] = @placeIssued, [dateissued] = @dateissued, [dateexpired] = @dateexpired, [nationality] = @nationality, [district] = @district, [ward] = @ward, [residential] = @residential, [dependance] = @dependance, [country] = @country, [city] = @city, [address] = @address, [phone] = @phone, [email] = @email, [rname] = @rname, [raddress] = @raddress, [rmobile] = @rmobile, [remail] = @remail, [nextofkin] = @nextofkin, [nextphone] = @nextphone, [relationship] = @relationship, [relationaddress] = @relationaddress, [employer] = @employer, [empaddress] = @empaddress, [employerphone] = @employerphone, [monthlySavings] = @monthlySavings, [EmpNo] = @EmpNo, [salary] = @salary, [position] = @position, [dept] = @dept, [checked] = @checked, [remark] = @remark, [pinnumber] = @pinnumber WHERE [custcode] = @custcode">
                <DeleteParameters>
                    <asp:Parameter Name="custcode" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="mname" Type="String" />
                    <asp:Parameter Name="othername" Type="String" />
                    <asp:Parameter Name="branch" Type="String" />
                    <asp:Parameter Name="maritalstatus" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter DbType="Date" Name="datejoin" />
                    <asp:Parameter Name="idtype" Type="String" />
                    <asp:Parameter Name="idnumber" Type="String" />
                    <asp:Parameter Name="placeIssued" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateissued" />
                    <asp:Parameter DbType="Date" Name="dateexpired" />
                    <asp:Parameter Name="nationality" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="ward" Type="String" />
                    <asp:Parameter Name="residential" Type="String" />
                    <asp:Parameter Name="dependance" Type="Decimal" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="rname" Type="String" />
                    <asp:Parameter Name="raddress" Type="String" />
                    <asp:Parameter Name="rmobile" Type="String" />
                    <asp:Parameter Name="remail" Type="String" />
                    <asp:Parameter Name="nextofkin" Type="String" />
                    <asp:Parameter Name="nextphone" Type="String" />
                    <asp:Parameter Name="relationship" Type="String" />
                    <asp:Parameter Name="relationaddress" Type="String" />
                    <asp:Parameter Name="employer" Type="String" />
                    <asp:Parameter Name="empaddress" Type="String" />
                    <asp:Parameter Name="employerphone" Type="String" />
                    <asp:Parameter Name="monthlySavings" Type="Decimal" />
                    <asp:Parameter Name="EmpNo" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="dept" Type="String" />
                    <asp:Parameter Name="checked" Type="Boolean" />
                    <asp:Parameter Name="remark" Type="String" />
                    <asp:Parameter Name="pinnumber" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="mname" Type="String" />
                    <asp:Parameter Name="othername" Type="String" />
                    <asp:Parameter Name="branch" Type="String" />
                    <asp:Parameter Name="maritalstatus" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="dob" />
                    <asp:Parameter DbType="Date" Name="datejoin" />
                    <asp:Parameter Name="idtype" Type="String" />
                    <asp:Parameter Name="idnumber" Type="String" />
                    <asp:Parameter Name="placeIssued" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateissued" />
                    <asp:Parameter DbType="Date" Name="dateexpired" />
                    <asp:Parameter Name="nationality" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="ward" Type="String" />
                    <asp:Parameter Name="residential" Type="String" />
                    <asp:Parameter Name="dependance" Type="Decimal" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="rname" Type="String" />
                    <asp:Parameter Name="raddress" Type="String" />
                    <asp:Parameter Name="rmobile" Type="String" />
                    <asp:Parameter Name="remail" Type="String" />
                    <asp:Parameter Name="nextofkin" Type="String" />
                    <asp:Parameter Name="nextphone" Type="String" />
                    <asp:Parameter Name="relationship" Type="String" />
                    <asp:Parameter Name="relationaddress" Type="String" />
                    <asp:Parameter Name="employer" Type="String" />
                    <asp:Parameter Name="empaddress" Type="String" />
                    <asp:Parameter Name="employerphone" Type="String" />
                    <asp:Parameter Name="monthlySavings" Type="Decimal" />
                    <asp:Parameter Name="EmpNo" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="dept" Type="String" />
                    <asp:Parameter Name="checked" Type="Boolean" />
                    <asp:Parameter Name="remark" Type="String" />
                    <asp:Parameter Name="pinnumber" Type="String" />
                    <asp:Parameter Name="custcode" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                 <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style3" HorizontalAlign="Center" DataKeyNames="custcode" Width="1400px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="custcode" HeaderText="custcode" InsertVisible="False" ReadOnly="True" SortExpression="custcode" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                    <asp:BoundField DataField="othername" HeaderText="othername" SortExpression="othername" />
                    <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                    <asp:BoundField DataField="maritalstatus" HeaderText="maritalstatus" SortExpression="maritalstatus" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="datejoin" HeaderText="datejoin" SortExpression="datejoin" />
                    <asp:BoundField DataField="idtype" HeaderText="idtype" SortExpression="idtype" />
                    <asp:BoundField DataField="idnumber" HeaderText="idnumber" SortExpression="idnumber" />
                    <asp:BoundField DataField="placeIssued" HeaderText="placeIssued" SortExpression="placeIssued" />
                    <asp:BoundField DataField="dateissued" HeaderText="dateissued" SortExpression="dateissued" />
                    <asp:BoundField DataField="dateexpired" HeaderText="dateexpired" SortExpression="dateexpired" />
                    <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
                    <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                    <asp:BoundField DataField="ward" HeaderText="ward" SortExpression="ward" />
                    <asp:BoundField DataField="residential" HeaderText="residential" SortExpression="residential" />
                    <asp:BoundField DataField="dependance" HeaderText="dependance" SortExpression="dependance" />
                    <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="rname" HeaderText="rname" SortExpression="rname" />
                    <asp:BoundField DataField="raddress" HeaderText="raddress" SortExpression="raddress" />
                    <asp:BoundField DataField="rmobile" HeaderText="rmobile" SortExpression="rmobile" />
                    <asp:BoundField DataField="remail" HeaderText="remail" SortExpression="remail" />
                    <asp:BoundField DataField="nextofkin" HeaderText="nextofkin" SortExpression="nextofkin" />
                    <asp:BoundField DataField="nextphone" HeaderText="nextphone" SortExpression="nextphone" />
                    <asp:BoundField DataField="relationship" HeaderText="relationship" SortExpression="relationship" />
                    <asp:BoundField DataField="relationaddress" HeaderText="relationaddress" SortExpression="relationaddress" />
                    <asp:BoundField DataField="employer" HeaderText="employer" SortExpression="employer" />
                    <asp:BoundField DataField="empaddress" HeaderText="empaddress" SortExpression="empaddress" />
                    <asp:BoundField DataField="employerphone" HeaderText="employerphone" SortExpression="employerphone" />
                    <asp:BoundField DataField="monthlySavings" HeaderText="monthlySavings" SortExpression="monthlySavings" />
                    <asp:BoundField DataField="EmpNo" HeaderText="EmpNo" SortExpression="EmpNo" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                    <asp:CheckBoxField DataField="checked" HeaderText="checked" SortExpression="checked" />
                    <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
                    <asp:BoundField DataField="pinnumber" HeaderText="pinnumber" SortExpression="pinnumber" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
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
