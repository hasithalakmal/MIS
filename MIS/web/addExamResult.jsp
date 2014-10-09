<%-- 
    Document   : addExamResult
    Created on : Sep 25, 2014, 5:39:15 PM
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
        <h1>Add exam Result</h1>
        <br>
        <form action="addExamResult" method="post">
            <table>
                <tr>
                    <td>
                        Student ID
                    </td>
                    <td>
                        <input type="text" name="StuID">
                    </td>
                </tr>
                <tr>
                    <td><b>Exam ID</b></td>
                    <td><input type="text" name="ExamID" ></td>
                </tr>
                <tr>
                    <td>Index Number</td>
                    <td>
                        <input type="text" name="IndexNumber">
                    </td>
                </tr>
                <tr>
                    <td>Result</td>
                    <td>
                        <input type="text" name="Result">
                    </td>
                </tr>
                <tr>
                    <td>Chance</td>
                    <td>
                        <input type="text" name="Chance">
                    </td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Result">
        </form>
        </center>
    </body>
</html>
