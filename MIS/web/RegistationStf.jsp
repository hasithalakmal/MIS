<%-- 
    Document   : RegistationStf
    Created on : Aug 31, 2014, 11:50:18 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stf registation</title>
         <style>
            #container {
                width: 1320px ;
                margin-left: auto ;
                margin-right: auto ;
                background-color:#254a6e;

            }
            #header {
                background-color:#254a6e;//dark blue
                color:white;
                border-radius: 10px;
                padding:5px;

            }

            #nav {
                line-height:30px;
                margin: 7px; 
                float:left;
                background-color:#d4dadc;//ash
                border-radius: 10px;
                height:300px;
                width:200px;
                float:left;
                padding:5px;	      
            }

            #section {
                width:1050px;
                margin: 7px; 
                float:left;
                border-radius: 10px;
                height:1000px;
                float:left;
                padding:10px;
                background-color:#d4dadc;
            }
            #content_container
            { width: 1000px;
              margin: 20px 10px 0 0;
              float: left;}
            #sidebar {

                margin: 7px; 
                float:left;
                background-color:#d4dadc;
                border-radius: 10px;
                height:200px;
                width:200px;
                float:left;
                padding:5px; 	      

            }
            #footer {
                background-color:black;
                color:white;
                clear:both;
                text-align:center;
                padding:5px;
                border-radius: 10px;
            }
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            /* These styles are related to popup menu. */

            /* These styles just pretty up the page a bit. */
            body {
                font: 62.5%/1.2 Arial, Helvetica, sans-serif;
                background-color: #eee; }
            #wrap {
                font-size: 1.1em;
                width: 1000px;
                padding: 20px;
                margin: 0 0; 
                background-color: #d4dadc;
                position: relative; }

            /* These styles create the dropdown menus. */
            #navbar {
                margin: 0;
                padding: 0;
                height: 1em; }
            #navbar li {
                list-style: none;
                float: left; }
            #navbar li a {
                display: block;
                padding: 3px 8px;
                background-color: #254a6e;
                color: #fff;
                text-decoration: none; }
            #navbar li ul {
                display: none; 
                width: 10em; /* Width to help Opera out */
                background-color: #69f;
            }
            #navbar li:hover ul, #navbar li.hover ul {
                display: block;
                position: absolute;
                margin: 0;
                padding: 0; 
                opacity: 0.8}
            #navbar li:hover li, #navbar li.hover li {
                float: none; }
            #navbar li:hover li a, #navbar li.hover li a {
                background-color: #69f;
                border-bottom: 1px solid #fff;
                color: #000; }
            #navbar li li a:hover {
                background-color: #8db3ff; }
            </style>
    </head>
    <body  >
        <%

                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getStaffID();
                String today = dg.getToday();
            %>
            
              <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Research Center In-Charge</h1>
                        </td>
                        <td align="right">

                            <h3> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3> 
                        </td>
                    </tr>
                </table>
            </div>

            <div id="nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">History</a></li>
                    <li><a href="#">Thurunusaviya</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="PasswordChange_rci.jsp">Change Password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">
                    <a href="rciHome.jsp"><img src="Images/home.png" width="75" height="75" align="right"></a>
                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->

                        <li><a href="#">||User Management||</a>
                            <ul>
                                <li><a href="RCIaddMember.jsp">Add User</a></li>                    
                                <li><a href="updateUser.jsp">Update User</a></li>
                                <li><a href="searchUser.jsp">Search User</a></li>
                                <li><a href="ResetMemberPassword.jsp">Reset Password</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Personal Detail Reports</a></li>
                                <li><a href="#">Parent Reports</a></li>
                                <li><a href="#">Class Reports</a></li>
                                <li><a href="#">Exam Reports</a></li>
                                <li><a href="#">TSS Reports</a></li>
                                <li><a href="#">Prefect Reports</a></li>
                                <li><a href="#">Special Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and e-mails||</a>
                            <ul>
                                <li><a href="#">Send SMS to Student</a></li>
                                <li><a href="#">Send SMS to Parent</a></li>
                                <li><a href="#">Send SMS to Staff</a></li>
                                <li><a href="#">Send E-mail to Parent</a></li>
                                <li><a href="#">Send E-mail to Student</a></li>
                                <li><a href="#">Send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource Management||</a>
                            <ul>
                                <li><a href="#">Add File</a></li>
                                <li><a href="#">Add Video</a></li>
                                <li><a href="#">Add Audio</a></li>
                                <li><a href="#">Add Image</a></li>
                                <li><a href="#">Remove File</a></li>
                                <li><a href="#">Remove Video</a></li>
                                <li><a href="#">Remove Audio</a></li>
                                <li><a href="#">Remove Image</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>

                <div id="content_container">
                    <h3>Staff Registration</h3>

        <!--The registration form for the users -->
        <form action="StaffRegistation"  method="post">

            <table>
                <tr>
                    <td>Staff ID</td>
                    <td><input type="text" name="Id" value="<%=ID%>" size="50" required></td>
                </tr>
                <tr>
                    <td>Is Academic Staff</td>
                    <td>
                        <input type="radio" name='accademic' value='true' required>Yes,academic
                        <input type="radio" name='accademic' value='false' required>No, non academic
                    </td>
                </tr>

                <tr>
                    <td>Registration Date</td>
                    <td><input type="text" name="Reg_Date" value="<%=today%>" required ></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><input type="radio" name='state' value='Mr.' required>Mr
                        <input type="radio" name='state' value='Mrs.' required>Mrs.
                        <input type="radio" name='state' value='Vene.' required>Ven.
                        <input type="radio" name='state' value='Miss' required>Miss.
                    </td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="Full_Name" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Initials</td>
                    <td><input type="text" name="Initial_Name" value="" size="50" required></td>
                </tr> 
                <tr>
                    <td>Birth Day</td>
                    <td><input type="text" name="bDay" value="" size="50" required></td>
                </tr> 
                <tr>
                    <td>Race</td>
                    <td><input type="radio" name='Race' value='Sinhala' required>Sinhala
                        <input type="radio" name='Race' value='tamil' required>Tamil
                        <input type="radio" name='Race' value='Muslim' required>Muslim
                        <input type="radio" name='Race' value='Other' required>Other
                    </td>
                </tr>
                <tr>
                    <td>Religion</td>
                    <td><input type="radio" name="Religion" value="Buddhist" required>Buddhist
                        <input type="radio" name="Religion" value="christian" required>cristian 
                        <input type="radio" name="Religion" value="chataolic" required>catholic
                        <input type="radio" name="Religion" value="Hindu" required>Hindu
                        <input type="radio" name="Religion" value="Others" required>Others
                    </td></tr>
                <tr>
                    <td>NIC No</td>
                    <td><input type="text" name="NIC" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="Address" value="" size="50" required>
                    </td>
                </tr><tr>
                    <td>Land Phone</td>
                    <td><input type="text" name="Land_Phone" value="" size="50"></td>
                </tr>
                <tr>
                    <td>Mobile Phone 1</td>
                    <td><input type="text" name="Mobile_Phone1" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Mobile Phone 2</td>
                    <td><input type="text" name="Mobile_Phone2" value="" size="50"></td>
                </tr>
                <tr>
                    <td>Fax</td>
                    <td><input type="text" name="Fax" value="" size="50"></td></tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="" placeholder="@gmail.com" size="50"></td>
                </tr>

                <tr>
                    <td>Occupation</td>
                    <td><input type="text" name="occupation" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Office Phone</td>
                    <td><input type="text" name="office_phone" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Office Address</td>
                    <td><input type="text" name="Office_address" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>
                        Educational Qualifications
                    </td>
                    <td>
                        <input type="checkbox" name="education1" value="O/L">O/L
                        <input type="checkbox" name="education2" value="A/L">A/L
                        <input type="checkbox" name="education3" value="graduate">Graduate
                        <input type="checkbox" name="education4" value="postGraduate">post Graduate
                        <input type="checkbox" name="education5" value="Doctor">Doctor
                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="checkbox" name="education6" value="HND">HND
                        <input type="checkbox" name="education7" value="awasana">Dahampasal Awasana
                        <input type="checkbox" name="education8" value="darmacharya">Darmacharya
                        <input type="checkbox" name="education9" value="other bidhist">Other Buddhist Exams
                        <input type="checkbox" name="education10" value="Proffessional">professional
                    </td>
                </tr>
                 <tr>
                    <td>Is Student in our Dahampasala</td>
                    <td>
                        <input type="radio" name='student' value='true' required>Yes
                        <input type="radio" name='student' value='false' required>No
                    </td>
                <tr>
                    <td>Student ID</td>
                    <td><input type="text" name="stuid" value=""  size="50"></td>
                </tr>
                 <tr>
                    <td>Is Thurunusaviya Student</td>
                    <td>
                        <input type="radio" name='tss' value='true' required>Yes
                        <input type="radio" name='tss' value='false' required>No
                    </td>
                <tr>
                    <td>Thurunusaviya Student ID</td>
                    <td><input type="text" name="tssid" value=""  size="50"></td>
                </tr>
                <tr>
                    <td>Is Thurunusaviya teacher</td>
                    <td>
                        <input type="radio" name='tst' value='true' required>Yes
                        <input type="radio" name='tst' value='false' required>No
                    </td>
                <tr>
                
                </table>

            <center><input type="submit" Value="Add" name="Submit"></center>
            <br><br>

        </form>

                </div>

            </div>

            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>
 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
       

       
    
</body>
</html>
