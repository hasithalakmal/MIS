<%-- 
    Document   : studentUpdateInCourse0
    Created on : Oct 12, 2014, 6:35:02 AM
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
        <h1>Student  details management</h1>

        <br><br>
        <h3>update Student for  TSS course</h3>
        <form action="updateStudentforTSScourse" method="post">
            <table>
                <tr>
                    <td>
                        TSS ID
                    </td>
                    <td>
                        <input type="text" name="TSSID">
                    </td>
                </tr>
                <tr>
                    <td><b>CourseID</b></td>
                    <td><input type="text" name="CourseID"></td>
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
