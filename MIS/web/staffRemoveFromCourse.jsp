<%-- 
    Document   : staffRemoveFromCourse
    Created on : Oct 14, 2014, 11:09:58 AM
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
        <h1>Staff details management</h1>

        <br><br>
        <h3>staff add for  TSS course</h3>
        <form action="RemoveStaffforTSScourse" method="post">
            <table>
                <tr>
                    <td>
                        Staff ID
                    </td>
                    <td>
                        <input type="text" name="StaffID">
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
