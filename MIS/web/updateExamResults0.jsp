<%-- 
    Document   : updateExamResults0
    Created on : Oct 16, 2014, 9:53:13 PM
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
       <h3>Update Exam Results</h3>
        <form action="UpdateExamResults" method="post">
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
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>

            </table>
            <input type="submit" value="Update">
        </form>

    </body>
</html>
