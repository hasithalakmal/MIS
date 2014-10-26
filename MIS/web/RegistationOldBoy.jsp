<%-- 
    Document   : RegistationOldBoy
    Created on : Sep 7, 2014, 6:57:07 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
                height:550px;
                float:left;
                padding:10px;
                background-color:#d4dadc;
            }
            #content_container
            { width: 750px;
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
    <body><%

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                 IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getOPSID();
                String today = dg.getToday();
            %>
            <div id="container">
            <div id="header">
                <table >
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
                    <li><a href="home.html">Home</a></li>
                    <li><a href="history.html">History</a></li>
                    <li><a href="thurunusaviya.html">Thurunusaviya</a></li>
                    <li><a href="gallary.html">Gallary</a></li>
                    <li><a href="#">View My Details</a></li>
                    <li><a href="PasswordChange.jsp">Change Password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">

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
                   
                   
                   <center>
        <h3>Old Pupil Registration</h3>
        <br>
        <form action="OBRegistation" method="post">
            <table>
                <tr>
                    <td><b>Old Pupil Id</b></td>
                    <td><input type="text" name="obId" value="<%=ID%>" ></td>
                </tr>
                <tr>
                    <td><b>Student Id</b></td>
                    <td><input type="text" name="stuId" value="" ></td>
                </tr>


                <tr>
                    <td><b>Registration Date</b></td>
                    <td><input type="text" name="Reg_Date" value="<%=today%>" ></td>
                </tr>
                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value=""  ></td>
                </tr>

                <tr>
                    <td><b>Office Phone</b></td>
                    <td><input type="text" name="office_phone" value=""  ></td>
                </tr>
                <tr>
                    <td><b>Office address</b></td>
                    <td><input type="text" name="Office_address" value=""  ></td>
                </tr>
                <tr>
                    <td>
                        <b>Educational qualification<b>
                    </td>
                    <td>
                        <input type="checkbox" name="education1" value="O/L">O/L
                        <input type="checkbox" name="education2" value="A/L">A/L
                        <input type="checkbox" name="education3" value="graduate">Graduate
                        <input type="checkbox" name="education4" value="postGraduate">PostGraduate
                        <input type="checkbox" name="education5" value="Doctor">Doctor

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="checkbox" name="education6" value="HND">HND
                        <input type="checkbox" name="education10" value="Proffessional">Professional
                        <input type="checkbox" name="education7" value="awasana">Daham pasal awasana
                        <input type="checkbox" name="education8" value="darmacharya">Darmacharya
                        <input type="checkbox" name="education9" value="other bidhist">Other Buddhist

                    </td>
                </tr>
                </table><br><br>
            <input type="submit" value="Add">
        </form>
    </center>

                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>
    
       
       

        


        
      
        
</body>
</html>
