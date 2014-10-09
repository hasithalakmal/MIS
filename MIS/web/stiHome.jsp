<%-- 
    Document   : stiHome
    Created on : Sep 9, 2014, 1:04:17 PM
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
       
        if(session.getAttribute("useID") == null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);}
              
        %>
        <center>
        <h1>Hello Staff in charge World!</h1>
        <form action="LogOut" method="post">
            <input type="submit" value="Log Out">
        </form>
        
        <br><br>
        <a href="PasswordChange.jsp">change Password</a>

          <br><br>
        <a href="addResourse.jsp">add Resourse</a>

        <br><br>
        <a href="downloardResourses.jsp">Downloard Resourse</a>
        
        <form action="adminSearchUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                     </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Search">
                    </td>
                </tr>
            </table>
        </form>

         <form action="admUpdateUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Update">
                    </td>
                </tr>
            </table>
        </form>
        </center>
        
    </body>
</html>
