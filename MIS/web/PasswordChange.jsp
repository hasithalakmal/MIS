<%-- 
    Document   : PasswordChange
    Created on : Sep 5, 2014, 9:18:24 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="5.jpg">
        <%

            String uid = (String) session.getAttribute("useID");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }
            

        %>
    <center>
        <h1>Password Change</h1>

        <form action="ChangePassword" method="post">
            <table>
                <tr>
                    <td>
                        Your user ID
                    </td>
                    <td>
                        <%= uid %>
                    </td>
                </tr>
                <tr>
                    <td>Enter current password</td>
                    <td>
                        <input type="password" name="oldpw">
                    </td>
                </tr>
                <tr>
                    <td>Enter new password</td>
                    <td>
                        <input type="password" name="newpw1">
                    </td>
                </tr>
                <tr>
                    <td>Re-Enter new password</td>
                    <td>
                        <input type="password" name="newpw2">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Change PW">
        </form>
    </center>
</body>
</html>
