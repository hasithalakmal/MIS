<%-- 
    Document   : updatecourse0
    Created on : Oct 11, 2014, 7:23:14 AM
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

            
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }


        %>

    <center>
        <h1>TSS  details management</h1>

        <br><br>
        <h3>Add course</h3>
        <form action="updateCourse" method="post">
            <table>
                <tr>
                    <td>
                        Course ID
                    </td>
                    <td>
                        <input type="text" name="courseID">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Add course">
        </form>
    </center>
    </body>
</html>
