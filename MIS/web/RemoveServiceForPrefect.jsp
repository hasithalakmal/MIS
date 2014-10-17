<%-- 
    Document   : RemoveServiceForPrefect
    Created on : Oct 16, 2014, 11:14:09 PM
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
         <h3>Remove service for Prefect</h3>
        <form action="RemoveServiceForPrefect" method="post">
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
               
            </table>
            <input type="submit" value="Remove Servise from Prefect">
        </form>
    </body>
</html>
