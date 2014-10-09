<%-- 
    Document   : removePrefectBehaviors
    Created on : Oct 8, 2014, 5:14:40 PM
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
        <%

            // String uid = (String) session.getAttribute("useID");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }


        %>

    <center>
        <h1>Remove Prefect Behavior</h1>

        <br><br>
        <h3>Add service</h3>
        <form action="RemovePrfBehaviorReport" method="post">
            <table>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td><b>Term</b></td>
                    <td><input type="text" name="Term"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>

</body>
</html>
