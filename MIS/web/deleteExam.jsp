<%-- 
    Document   : deleteExam
    Created on : Oct 16, 2014, 9:51:58 PM
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
         <h3>Delete Exam</h3>
        <form action="DeleteExam" method="post">
            <input type="text" name="examID">
            <input type="submit" value="delete">
        </form>
    </body>
</html>
