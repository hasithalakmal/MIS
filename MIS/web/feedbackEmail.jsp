<%-- 
    Document   : feedbackEmail
    Created on : Oct 26, 2014, 10:00:36 PM
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
            String userID =(String)session.getAttribute("useID");
        if (userID == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }
        
        %>
        <div id="container">
            <div id="header">
                <table width="100%"  border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Send Your Feed Back</h1>
                        </td>
                        <td align="right">
                            <h3 align="right"> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3>
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


             

                <div id="content_container">

                    <br>
                  
        <center>
           <form action="feedbackEmail" method="post">
            <table>
                <tr>
                    <td>
                    subject 
                    </td>
                    <td>
                        <input type="text" name="Subject" id="Subject" required>
                    </td>
                </tr>
                <tr>
                    <td>
                    Message 
                    </td>
                    <td>
                        <input type="text" name="Message" id="Message" required>
                    </td>
                </tr>
                <tr>
                    <td>
                    User ID 
                    </td>
                    <td>
                       <%=userID%> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="submit" name="submit" id="submit">
                    </td>
                </tr>
            </table>
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
