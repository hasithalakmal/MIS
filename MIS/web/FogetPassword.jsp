<%-- 
    Document   : FogetPassword
    Created on : Sep 4, 2014, 7:16:42 PM
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
    <center>    
        <h1>Foget password page</h1>

        <form name="MainLogin" action="FogetPassword" method="post">

            <table>

                <tr>
                    <td><b>User ID</b></td>
                    <td><input type="text" name="userid" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>BirthDay</b></td>
                    <td><input type="date" name="Bday" value="" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <center>
                    <input type="submit" Value="Send new PW to my Email" name="Login">
                </center>
                </td>
                </tr>

            </table>
        </form>
    </center>

</body>
</html>
