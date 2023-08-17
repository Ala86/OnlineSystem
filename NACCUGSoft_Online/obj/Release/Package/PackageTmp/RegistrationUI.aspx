<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUI.aspx.cs" Inherits="NACCUGSoft_Online.RegistrationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>Registration</title>
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
      <a href="RegistrationUI.aspx">GPFCCU Online</a>
    </div>
    <nav class="primary-nav">
      <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
     
    </nav>
  </div>
</section>

    <form id="form1" runat="server">
        <h2>Registration</h2>
        <div id="container">
            <p>
                <label>
                    Select Membership type <br>
                      <select name="memtype" id="memtype"">
                        <option value="">Individual Member</option>
                        <option value="">Joint / Group Member</option>
                      </select>
                </label>
                <label>
                    First Name<br>
                    <input type="text" id="fname" name="fname" placeholder="Enter First Name">
                </label>
                <label>
                    Marital Status<br>
                    <input type="text" id="mstatus" name="mstatus" placeholder="">
                  <%--  <select name="mstatus" id="mstatus">
                        <option value="">Single</option>
                        <option value="">Married</option>
                      </select>--%>
                </label>
                 <label>
                    Nationality<br>
                    <select name="Nationality" id="Nationality">
                        <option value="">Gambia</option>
                        <option value="">Senegal</option>
                      </select>
                </label>
                                 <label>
                    Region<br>
                   <input type="text" id="Region" name="Region" placeholder="">
<%--                    <select name="Region" id="Region">
                        <option value="">BCC</option>
                        <option value="">KM</option>
                      </select>--%>
                </label>
            </p>
            <p>
                <label>
                    Branch<br>
                    <input type="text" id="branch" name="branch" placeholder="">
<%--                      <select name="Branch" id="Branch">
                        <option value="">Banjul</option>
                        <option value="">Serrekunda</option>
                      </select>--%>
                </label>
                <label>
                    Middle Name<br>
                    <input type="text" name="mname" id="mname" placeholder="Enter Middle Name">
                </label>
                <label>
                    Title<br>
                     <input type="text" name="title" id="title" placeholder="">
 <%--                     <select name="Title" id="Title">
                        <option value="">Mr</option>
                        <option value="">Mrs</option>
                      </select>--%>
                </label>
                                <label>
                    Date of Birth<br>
                    <input type="date" name="dbirth" id="dbirth">
                </label>
                                <label>
                    District<br>
                    <input type="text" name="district" id="district" placeholder="">
<%--                    <select name="district" id="district">
                        <option value="">Jarra East</option>
                        <option value="">Jarra West</option>
                      </select>--%>
                </label>
                <label>
                    Ward<br>
                    <input type="text" name="ward" id="ward" placeholder="">
<%--                    <select name="Ward" id="Ward">
                        <option value="">Ward 1</option>
                        <option value="">Ward 2</option>
                      </select>--%>
                </label>
            </p>
            <p>
                <label style="visibility:hidden">
                    number<br>
                    <input type="number" name="pnumber" id="pnumber" placeholder="123456789">
                </label>
                                <label>
                    Last Name<br>
                    <input type="text" name="lname" id="lname"  placeholder="Enter Last Name">
                </label>
                <label>
                    Gender<br>
                     <input type="text" name="gender" id="gender" placeholder="">
<%--                     <select name="gender" id="gender">
                        <option value="">Male</option>
                        <option value="">Female</option>
                      </select>--%>
                </label>
                <label>
                    Date Join<br>
                    <input type="date" name="datejoin" id="datejoin">
                </label>
                <label>
                    Residential type<br>
                    <select name="Residential" id="Residential">
                        <option value="">Residentail </option>
                        <option value="">Non Residentail</option>
                      </select>
                </label>
            </p>
            <p>
                  <label>
                    Identification Type<br>                               
                    <select name="idtype" id="idtype">
                        <option value="">PassPort</option>
                        <option value="">ID card</option>
                        <option value="">Birth Certificate</option>
                      </select>
                </label>
                  <label>
                    Place Issued<br>
                    <input type="text" name="pissued" id="pissued" placeholder="">
                </label>
                <label>
                    Date Expired<br>
                    <input  name="dexpired" id="dexpired" type="date">
                </label>
            </p>
            <p>
                <label>
                    Identification Number<br>
                    <input type="text" name="idnumber" id="idnumber"  placeholder="">
                </label>
                <label>
                    Membership type<br>
                                     
                    <select name="Membership" id="Membership">
                        <option value="">New Member</option>
                        <option value="">Old Member</option>
                      </select>
                
                </label>
            </p>
            <p>
                <label>
                    Number of Dependance<br>
                    <input type="number" name="Dependance" id="Dependance" placeholder="">
                </label>
                <label>
                    Date Issued<br>
                    <input type="date" name="dateissued" id="dateissued">
                </label>
            </p>

            <p>
                 <label>
                    Country<br>
                                     
                    <select name="Country" id="Country">
                        <option value="">Gambia</option>
                        <option value="">Senegal</option>
                      </select>
                
                </label>
                  <label>
                    Phone Number<br>
                    <input type="tel" name="phonenumber" id="phonenumber" placeholder="">
                </label>
                <label>
                    Referee Name<br>
                    <input type="text" name="refname" id="refname" placeholder="">
                </label>
                <label>
                    Next of kin Name<br>
                    <input type="text" name="nextofkin" id="nextofkin" placeholder="Next of kin Name">
                </label>
                <label>
                    Relationship Name<br>
                    <input type="text" name="Relationship" id="Relationship"  placeholder="Relationship Name">
                </label>
                 <label>
                    Relationship Address<br>
                    <input type="text" name="RelationshipAdress" id="RelationshipAdress"  placeholder="Relationship Address">
                </label>
            </p>
            <p>

             <label>
                City<br>
                    <input type="text" name="City" id="city"  placeholder="">
                </label>       
                   <%-- <select name="City" id="City">
                        <option value="">Serrekunda</option>
                        <option value="">Banjul</option>
                      </select>--%>
              
                <label>
                    Email Address<br>
                    <input type="email" name="email" id="email" placeholder="">
                </label>
                <label>
                    Referee's Address<br>
                    <input type="text" name="refaddress" id="refaddress" placeholder="">
                </label>
                <label>
                   Next of Kin's  Phone Number<br>
                    <input type="tel" name="nextofkinPhone" id="nextofkinPhone" placeholder="">
                </label>
            </p>
            <p>
                <label>
                    Address<br>
                    <input type="text" name="Address" id="Address" placeholder="">
                </label>
                <label>
                    Referee's Phone Number<br>
                    <input type="number" name="refphonenumber" id="refphonenumber" placeholder="">
                </label>
                 <label>
                   Referee's Email<br>
                    <input type="email" name="refemail" id="refemail" placeholder="">
                </label>
                 <label>
                  Next of Kin's Address<br>
                    <input type="text" name="nextofkinaddress" id="nextofkinaddress" placeholder="">
                </label>
            </p>

            <p>
                  <label>
                    Employer<br>   
                       <input type="text" name="Employer" id="Employer" placeholder="">                                
<%--                    <select name="Employer" id="Employer">
                        <option value="">MRC</option>
                        <option value="">Ports Authority</option>
                      </select>--%>
                   <label>
                    Salary<br>
                    <input type="number" name="Salary" id="Salary">
                </label>
                <label>
                    Employer's Phone Number<br>
                    <input type="tel" name="employeephne" id="employeephne" placeholder="">
                </label>
            </p>
            <p>
                <label>
                    Employer's Number <br>
                    <input type="number" name="employernumber" id="employernumber" placeholder="">
                </label>
                <label>
                    Position<br>
                    <input type="text" name="Position" id="Position" placeholder="">
                </label>
                <label>
                    Monthly Save Amount<br>
                    <input type="number" name="monthlysave" id="monthlysave" placeholder="">
                </label>
            </p>
            <p>
                <label>
                    Employer's Address<br>
                    <input type="text" name="employeraddress" id="employeraddress" placeholder="">
                </label>
                <label>
                    Department<br>
                    <input type="text" name="Department" id="Department" placeholder="">
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
