<%-- 
    Document   : addServise
    Created on : Oct 16, 2014, 11:11:50 PM
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
        <h3>Add service</h3>
        <form action="addService" method="post">
            <table>
                <tr>
                    <td>
                        Service ID
                    </td>
                    <td>
                        <input type="text" name="ServiseID">
                    </td>
                </tr>
                <tr>
                    <td><b>Service Name</b></td>
                    <td><input type="text" name="ServiseName"></td>
                </tr>
                <tr>
                    <td>Discription</td>
                    <td>
                        <input type="text" name="Discription">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add servise">
        </form>
    </body>
</html>
