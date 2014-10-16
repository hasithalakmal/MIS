<%-- 
    Document   : DeleteExamResults
    Created on : Oct 16, 2014, 9:54:01 PM
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
       <h3>Delete Exam Results</h3>
        <form action="DeleteExamResults" method="post">
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
            <input type="submit" value="Delete">
        </form>
    </body>
</html>
