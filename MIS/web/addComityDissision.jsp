<%-- 
    Document   : addComityDissision
    Created on : Oct 9, 2014, 4:03:24 PM
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
        <h1>comity  details management</h1>

        <br><br>
        <h3>add comity Dissision</h3>
        <form action="addComittyDissison" method="post">
            <table>
                <tr>
                    <td>
                        Dissision ID
                    </td>
                    <td>
                        <input type="text" name="DisisonID">
                    </td>
                </tr>
                <tr>
                    <td>
                        Comity ID
                    </td>
                    <td>
                        <input type="text" name="comityID">
                    </td>
                </tr>
                <tr>
                    <td>year</td>
                    <td><input type="text" name="year"></td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>
                        <input type="text" name="Subject">
                    </td>
                </tr>

                <tr>
                    <td>Discription</td>
                    <td>
                        <input type="text" name="Discription">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Comity dissision">
        </form>
    </center>
    </body>
</html>
