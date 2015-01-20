<%-- 
    Document   : index
    Created on : Aug 28, 2014, 4:02:38 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/commen_header.jsp");
                $("#nav").load("UI_Parts/nav2.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
              //  $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
        </head>
        <body >

            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Welcome To Management Information System</h1>
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




                <div id="content_container">
                    <center>
                        <br/>
                        <h3>Sorry this site is not publish yet</h3>
                        <br>
                        Web site is not still published.Please use following link to access the  System.<br>
                        <a href="Main Login.jsp">Go to Login Page</a>
                        <a href="uitester.jsp">UI tester</a>
                        <a href="uitest2.jsp">UI tester 2</a>
                        <a href="UI_Parts/index.html">UI tester 2</a>
                    </center>
                </div>

            </div>

            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>



    </body>

</html>
