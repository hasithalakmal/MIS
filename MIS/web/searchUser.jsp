<%-- 
    Document   : searchUser
    Created on : Oct 16, 2014, 11:04:37 PM
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
       <form action="adminSearchUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Search">
                    </td>
                </tr>
            </table>
        </form>

    </body>
</html>
