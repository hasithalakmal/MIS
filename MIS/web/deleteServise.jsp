<%-- 
    Document   : deleteServise
    Created on : Oct 16, 2014, 11:12:33 PM
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
        <h1>Delete Service</h1>
        <form action="deleteService" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="delete servise">
        </form>
    </body>
</html>
