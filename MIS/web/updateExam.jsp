<%-- 
    Document   : updateExam
    Created on : Sep 25, 2014, 2:09:04 PM
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
            
            String examID = (String) request.getAttribute("examID");
            String Grade = (String) request.getAttribute("Grade");
            String ExamName = (String) request.getAttribute("ExamName");
            String Subject = (String) request.getAttribute("Subject");

        %>
    <center>
        <h1>Add Exam!</h1>

        <br>
        <form action="SubmitUpdateExam" method="post">
            <table>
                <tr>
                    <td>
                        Exam ID
                    </td>
                    <td>
                        <input type="text" name="exmID" value="<%=examID%>">
                    </td>
                </tr>
                <tr>
                    <td><b>Grade</b></td>
                    <td><input type="text" name="Grade" value="<%=Grade%>" ></td>
                </tr>
                <tr>
                    <td>Exam Name</td>
                    <td>
                        <input type="text" name="exmName" value="<%=ExamName%>">
                    </td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>
                        <input type="text" name="Subject" value="<%=Subject%>">
                    </td>
                </tr>

            </table>
            <input type="submit" value="Update Exam">
        </form>
    </center>
</body>

</html>
