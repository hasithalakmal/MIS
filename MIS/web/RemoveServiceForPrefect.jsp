<%-- 
    Document   : RemoveServiceForPrefect
    Created on : Oct 16, 2014, 11:14:09 PM
    Author     : Mr.Mic
--%>

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

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

            %>
            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" border-radius="10px">
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Prefect board in charge</h1>
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
                    <li><a href="PasswordChange.jsp">Change password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">

                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->
                        <li><a href="#">||Prefect Management||</a>
                            <ul>
                                <li><a href="AddServiseForPrefect.jsp">Add Service For Prefect</a></li>
                                <li><a href="RemoveServiceForPrefect.jsp">Remove Service From Prefect</a></li>
                                <li><a href="#">Update Service From Prefect</a></li>
                                <li><a href="addPrefectBehaviors.jsp">add Prefect Behaviors</a></li>
                                <li><a href="removePrefectBehaviors.jsp">remove Prefect Behaviors</a></li>
                                <li><a href="#">update Prefect Behaviors</a></li>
                          </ul>
                        </li>


                        <li><a href="#">||Service Management||</a>
                            <ul>
                                <li><a href="addServise.jsp">Add Service</a></li>
                                <li><a href="deleteServise.jsp">Remove Service</a></li>
                                
                            </ul>
                        </li>
                        <li><a href="#">||User Management||</a>
                            <ul>
                                <li><a href="RegistationTss.jsp">Add Prefect</a></li> 
                                <li><a href="#">Remove Prefect</a></li>
                                <li><a href="RegistationTsi.jsp">Add Prefect Incharge</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Student Reports</a></li>
                                <li><a href="#">Prefect Reports</a></li>
                                <li><a href="#">Prefect Board Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and e-mails||</a>
                            <ul>
                                <li><a href="#">send SMS to Student</a></li>
                                <li><a href="#">send SMS to Parent</a></li>
                                <li><a href="#">send SMS to Staff</a></li>
                                <li><a href="#">send E-mail to Parent</a></li>
                                <li><a href="#">send E-mail to Student</a></li>
                                <li><a href="#">send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource Management||</a>
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

                    <h3>Remove service for Prefect</h3>
        <form action="RemoveServiceForPrefect" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date
                    </td>
                    <td>
                        <input type="text" name="Date">
                    </td>
                </tr>
               
            </table>
            <input type="submit" value="Remove Servise from Prefect">
        </form>
                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>


        
        
    </body>
</html>