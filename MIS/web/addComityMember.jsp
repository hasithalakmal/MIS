<%-- 
    Document   : addComityMember
    Created on : Oct 9, 2014, 3:11:20 PM
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
        <h3>Add comity member</h3>
        <form action="addComittyMember" method="post">
            <table>
                <tr>
                    <td>
                        Staff ID
                    </td>
                    <td>
                        <input type="text" name="staffID">
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
                    <td>possision</td>
                    <td>
                        <input type="text" name="possision">
                    </td>
                </tr>

                
            </table>
            <input type="submit" value="Add Comity member">
        </form>
    </center>
    </body>
</html>
