<%-- 
    Document   : removeTSSProject
    Created on : Oct 15, 2014, 5:17:37 AM
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
        <h3>remove Projects </h3>
        <form action="removeProjects" method="post">
            <table>
                <tr>
                    <td>
                        Project ID
                    </td>
                    <td>
                        <input type="text" name="ProjectID">
                    </td>
                </tr>
                 </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
    </body>
</html>
