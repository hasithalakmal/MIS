<%-- 
    Document   : updateCourse
    Created on : Oct 11, 2014, 7:17:19 AM
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

            
          String courseID =(String) request.getAttribute("courseID");
          String CourseName =(String) request.getAttribute("CourseName");
          String Discription =(String) request.getAttribute("Discription");
          String Sylabus =(String) request.getAttribute("Sylabus");

        %>

    <center>
        <h1>TSS  details management</h1>

        <br><br>
        <h3>Add course</h3>
        <form action="SubmitUpdateCourse" method="post">
            <table>
                <tr>
                    <td>
                        Course ID
                    </td>
                    <td>
                        <input type="text" name="courseID" value="<%= courseID %>">
                    </td>
                </tr>
                <tr>
                    <td>
                        Course Name
                    </td>
                    <td>
                        <input type="text" name="CourseName"  value="<%= CourseName %>">
                    </td>
                </tr>
                <tr>
                    <td>Discription</td>
                    <td><input type="text" name="Discription"  value="<%= Discription %>"></td>
                </tr>
                <tr>
                    <td>Sylabus</td>
                    <td>
                        <input type="text" name="Sylabus"  value="<%= Sylabus %>">
                    </td>
                </tr>
    
            </table>
            <input type="submit" value="Add course">
        </form>
    </center>
    </body>
</html>
