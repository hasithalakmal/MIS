<%-- 
    Document   : FogetUserID
    Created on : Oct 26, 2014, 7:02:39 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#submit').click(function () {
                    var usertype = $('#ut').val();
                    var userName = $('#un').val();
                    var birthday = $('#bd').val();
                    $.get('FogotUserID', {usertype: usertype, userName: userName, birthday: birthday}, function (responseText) {
                        $('#namelist').text(responseText);
                    });
                });
            });
        </script>
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



            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e">
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Forgot User ID</h1>
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

                </ul>
            </div>

            <div id="section">
                <br><br><br>  
                <center>
                    <form id="form1" >
                        <table>
                            <tr>
                                <td>
                                    User Type
                                </td>
                                <td>
                                    <select  name="usertype" id="ut">

                                        <option value="stu">Student</option>
                                        <option value="stf">Staff</option>
                                        <option value="ops">Old Boy</option>
                                        <option value="prf">Prefect</option>
                                        <option value="tss">Thurunusaviya Student</option>                          
                                        <option value="prn">Guardian</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    User Name 
                                </td>
                                <td>
                                    <input type="text" name="userName" id="un" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Birth Day 
                                </td>
                                <td>
                                    <input type="text" name="birthday" id="bd" required>
                                </td>
                            </tr>
                        </table>
                        <input id="submit" type="button" value="search">
                    </form>
                    <p id="namelist"></p>
                </center>
            </div>
            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>
    </body>
</html>
