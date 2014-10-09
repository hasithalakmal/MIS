<%-- 
    Document   : addExam
    Created on : Sep 25, 2014, 1:27:07 PM
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
        <h1>Add Exam!</h1>
        
        <br>
        <form action="addExam" method="post">
            <table>
                <tr>
                    <td>
                        Exam ID
                    </td>
                    <td>
                        <input type="text" name="exmID">
                    </td>
                </tr>
                <tr>
                    <td><b>Grade</b></td>
                    <td><input type="text" name="Grade" value="" ></td>
                </tr>
                <tr>
                    <td>Exam Name</td>
                    <td>
                        <input type="text" name="exmName">
                    </td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>
                        <input type="text" name="Subject">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="ADD EXAM">
        </form>
    </center>
    </body>
</html>
