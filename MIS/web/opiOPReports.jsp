<%-- 
    Document   : opiOPReports
    Created on : 26-Oct-2014, 17:00:03
    Author     : Prasanga
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
            <style>
            header {
                background-color:black;
                color:white;
                text-align:center;
                padding:5px;	 
            }
            nav {
                line-height:30px;
                background-color:#eeeeee;
                height:300px;
                width:100px;
                float:left;
                padding:5px;	      
            }
            section {
                width:350px;
                float:left;
                padding:10px;	 	 
            }
            footer {
                background-color:black;
                color:white;
                clear:both;
                text-align:center;
                padding:5px;	 	 
            }
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
                            <h1 style="color: #FFF">Student Profile</h1>
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

                        <li><a href="#">||Profile Management||</a>
                            <ul>
                                <li><a href="#">View Personal Details</a></li>                    
                                <li><a href="#">View Student Details</a></li>
                                <li><a href="#">View Student Profile</a></li>
                                <li><a href="#">View TSS Profile</a></li>
                                <li><a href="#">Old Pupil Involvement</a></li>
                                <li><a href="#">Old Pupil Donations</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="prfPersonalDetails.jsp">Prefect Details</a></li>
                                <li><a href="opiOPReports.jsp">Old Pupil Involvements</a></li>                         
                                <li><a href="#">Old Pupil Donations</a></li>


                            </ul>
                        </li>
                        <li><a href="#">||Feedback||</a>
                            <ul>
                                <li><a href="#">Send Email</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Gallery||</a>
                            <ul>
                                <li><a href="#"> File</a></li>
                                <li><a href="#"> Video</a></li>
                                <li><a href="#"> Audio</a></li>
                                <li><a href="#"> Image</a></li>

                            </ul>
                        </li>

                    </ul>
                </div>


                <div id="content_container">

                    <br>
                    <p><b>Want to get OldPupil list?</b></p>
                    <a href="OPI-all-OldboyList-Non.jsp" target="_blank">Get Old Pupils</a>
                    <br>


                    <br>
                    <p><b>Want to get Old Pupil Contacts?</b></p>
                    <a href="OPI-all-contacts-non.jsp" target="_blank">Get Old Pupils Contacts</a>
                    <br>
                    <br>

                    <form action="OPI-one-personalDetails-OBID.jsp" target="_blank">
                        <p><b>Get All Personal Details</b></p>
                        <table>
                            <tr>
                                <td>
                                    OB ID
                                </td>
                                <td>
                                    <input type="text" name="OBID" >

                                </td>
                                <td>
                                    <input type="submit" value="Genarate">
                                </td>
                            </tr>
                        </table>
                    </form>


                </div>

            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>


    </body>
</html>
