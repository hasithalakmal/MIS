<%-- 
    Document   : ResetMemberPassword
    Created on : Oct 16, 2014, 11:57:51 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Reset member Password</h2>
        <form action="AdmResetMemberPassword" method="post">
            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Reset password">
        </form>
    </body>
</html>
