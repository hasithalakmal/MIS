<%-- 
    Document   : Main Login
    Created on : Aug 28, 2014, 4:04:28 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MainLogin</title>
        <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </SCRIPT>
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
        <body >



            <div id="container">
            <div id="header">
                <table >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Welcome To Our Main login</h1>
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
                    <li><a href="gallary.html">Gallery</a></li>

                    <li><a href="PasswordChange.jsp">Change password</a></li>

                </ul>
            </div>

            <div id="section">


                <center>
                    <br>
                    <br>
                    <br>
                    <!-- Create a table to design the page layout-->
                    <form name="MainLogin" action="mainAccessControler" method="post" >
                        <table>

                            <tr>
                                <td><b>User ID</b></td>
                                <td><input type="text" id="uid" name="userid" value="" size="50" required></td>
                            </tr>
                            <tr>
                                <td><b>Password</b></td>
                                <td><input type="password" id="pass" name="userpassword" value="" size="50" required></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                            <center>
                                <input type="submit" Value="Log In" name="Login">
                            </center>
                            </td>
                            </tr>


                        </table>
                    </form> 
                    <p>
                        If you forget your user ID or Password flow these links.
                    </p>
                    <br><br>
                    <a href="FogetUserID.jsp" target="_blank">Forget User ID</a>
                    <br><br>
                    <a href="FogetPassword.jsp" target="_blank">Forget password</a>
                    <br><br>

                </center>
            </div>
        </div>

    </body>

</html>
