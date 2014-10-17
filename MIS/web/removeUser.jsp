<%-- 
    Document   : removeUser
    Created on : Oct 16, 2014, 11:46:21 PM
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
         <form action="AdmDeleteMember" method="post">
            <h2>Delete Student</h2>
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
            <input type="submit" value="Deleat Member">
        </form>
    </body>
</html>
