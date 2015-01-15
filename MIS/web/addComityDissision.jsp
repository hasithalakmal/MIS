<%-- 
    Document   : addComityDissision
    Created on : Oct 9, 2014, 4:03:24 PM
    Author     : Mr.Mic
--%>

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
                height:450px;
                float:left;
                padding:10px;
                background-color:#d4dadc;
                text-align:center;
            }
            #content_container
            { width: 330px;
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
                padding: 0px;
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
        <body>
            <%

                // String uid = (String) session.getAttribute("useID");
                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }


                 IDGenorator idg = new IDGenorator();

                String ID = idg.getComityID();
            %>

            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Staff In-Charge</h1>
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
                    <li><a href="PasswordChange.jsp">Change Password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">

                    <a href="stiHome.jsp"><img src="Images/home.png" width="75" height="75" align="right"></a>
                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->

                        <li><a href="#">||Committee||</a>
                            <ul>
                                <li><a href="addComity.jsp">Add Committee</a></li>
                                <li><a href="RemoveComity.jsp">Remove Committee</a></li>
                                <li><a href="#">Update Committee</a></li>
                                <li><a href="addComityMember.jsp">Add Committee Member </a></li>
                                <li><a href="RemoveComityMember.jsp">Remove Committee Member</a></li>
                                <li><a href="addComityDissision.jsp">Add Committee Decision</a></li>
                                <li><a href="RemoveComityDissision.jsp">Remove Committee Decision </a></li>
                                <li><a href="#">Update Committee Decision</a></li>


                            </ul>
                        </li>


                        <li><a href="#">||Service||</a>
                            <ul>
                                <li><a href="addServise.jsp">Add Service</a></li>
                                <li><a href="#">Remove Service</a></li>
                                <li><a href="#">Update service</a></li>

                                <li><a href="staffaddservice.jsp">Allocate Service</a></li>
                                <li><a href="removestaffservice.jsp">Remove Allocate Service</a></li>
                                <li><a href="#"> Update Allocate Service</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||User||</a>
                            <ul>
                                <li><a href="RegistationStf.jsp">Add Staff Member</a></li>                    
                                <li><a href="removeUser.jsp">Remove Staff Member</a></li>
                                <li><a href="updateStaffData.jsp">Update Staff Member</a></li>
                                <li><a href="searchUser.jsp">Search User</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Staff  Reports</a></li>
                                <li><a href="#">Reports</a></li>
                                <li><a href="#">Course Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and E-mails||</a>
                            <ul>
                                <li><a href="#">Send SMS to Student</a></li>
                                <li><a href="#">Send SMS to Parent</a></li>
                                <li><a href="#">Send SMS to Staff</a></li>
                                <li><a href="#">Send E-mail to Parent</a></li>
                                <li><a href="#">Send E-mail to Student</a></li>
                                <li><a href="#">Send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource||</a>
                            <ul>
                                <li><a href="#">Add File</a></li>
                                <li><a href="#">Add video</a></li>
                                <li><a href="#">Add Audio</a></li>
                                <li><a href="#">Add Image</a></li>
                                <li><a href="#">Remove File</a></li>
                                <li><a href="#">Remove video</a></li>
                                <li><a href="#">Remove Audio</a></li>
                                <li><a href="#">Remove Image</a></li>
                            </ul>
                        </li>

                    </ul>

                </div>

                <div id="content_container">



                    <h3>Add Committee Decision</h3>

                    <form action="addComittyDissison" method="post">
                        <table>
                            <tr>
                                <td>
                                    Decision ID
                                </td>
                                <td>
                                    <input type="text" name="DisisonID" value="<%=ID%>" readonly required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Committee ID
                                </td>
                                <td>
                                    <input type="text" name="comityID" required>
                                </td>
                            </tr>
                            <tr>
                                <td>Year</td>
                                <td><input type="text" name="year" required></td>
                            </tr>
                            <tr>
                                <td>Subject</td>
                                <td>
                                    <input type="text" name="Subject">
                                </td>
                            </tr>

                            <tr>
                                <td>Description</td>
                                <td>
                                    <input type="text" name="Discription">
                                </td>
                            </tr>

                        </table>
                        <input type="submit" value="Add">
                    </form>

                </div></div>



            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>


    </body>
</html>


<h1>comity  details management</h1>


</body>
</html>
