<%-- 
    Document   : RemoveComity
    Created on : Oct 9, 2014, 3:07:18 PM
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
        <h3>remove comity</h3>
        <form action="removecomitty" method="post">
            <table>
                <tr>
                    <td>
                        Comity ID
                    </td>
                    <td>
                        <input type="text" name="comityID">
                    </td>
                </tr>
                

                
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
    </body>
</html>
