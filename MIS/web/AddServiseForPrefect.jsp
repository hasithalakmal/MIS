<%-- 
    Document   : AddServiseForPrefect
    Created on : Oct 16, 2014, 11:13:18 PM
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
       <h3>Add service for Prefect</h3>
        <form action="addServiceForPrefect" method="post">
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
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date
                    </td>
                    <td>
                        <input type="text" name="Date">
                    </td>
                </tr>
                <tr>
                    <td>Marks</td>
                    <td><input type="text" name="Marks"></td>
                </tr>
                <tr>
                    <td>Is Assigned</td>
                    <td>
                        <input type="text" name="Assigned">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Servise to Prefect">
        </form>
    </body>
</html>
