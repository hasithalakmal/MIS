<%-- 
    Document   : stuHome
    Created on : Aug 31, 2014, 5:59:26 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>stu home Page</title>
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
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
        <div style="color: #FFF">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e">
                <tr>
                    <td>
                        <img src="uper1.jpg" width="300">
                    </td>
                    <td>
                        <h1>Hello Student World!</h1>
                    </td>
                    <td align="right">

                        <h3> <%=x1%> You are Logged In!!! <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a>          </h3> 

                    </td>
                </tr>
            </table>

            <div id="nav">
                London<br>
                Paris<br>
                Tokyo<br>
            </div>             
        </div>

        <div id="navigation">
            <center>       
                <form action="LogOut.jsp" method="post">
                    <input type="submit" value="Log Out">
                </form>

                <br><br>
                <a href="PasswordChange.jsp">change Password</a>

                <br><br>
                <form action="viweStudentProfile" method="post">

                    <input type="submit" value="Personal Data">
                </form>
            </center>
        </div>
    </body>
</html>