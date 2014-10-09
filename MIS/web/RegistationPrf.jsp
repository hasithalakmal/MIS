<%-- 
    Document   : RegistationPrf
    Created on : Sep 7, 2014, 8:07:57 AM
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
        <h1>Prefect Registation</h1>
        <br>
        <form action="PrfRegistation" method="post">
            <table>
                <tr>
                    <td>
                        New user ID
                    </td>
                    <td>
                        <input type="text" name="prfID">
                    </td>
                </tr>
                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="date" name="Reg_Date" value="" ></td>
                </tr>
                <tr>
                    <td>Student ID</td>
                    <td>
                        <input type="text" name="stuID">
                    </td>
                </tr>
                
            </table>
            <input type="submit" value="Add Prefect">
        </form>
        </center>
    </body>
</html>
