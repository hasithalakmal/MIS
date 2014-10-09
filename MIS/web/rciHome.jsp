<%-- 
    Document   : rciHome
    Created on : Aug 31, 2014, 5:23:51 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Research center in charge Page</title>
        
    </head>
     <body >
       
     <%
           
          String x1 =(String) session.getAttribute("uid");
        if(session.getAttribute("useID") == null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);}
              
        %>
        
    <center>
        <h1>Admin Home Page <%=x1%></h1>
       
        <!-- Create a table to design the page layout>-->
        <form action="RegistationStu.jsp" method="post" name="AdmControler">
            <h2>ADD Student in hear</h2>
            <table>
                
                <tr>
                    <td>
                        <input type="submit" Value="Add Student" name="Submit">
                    </td>
                </tr>

            </table>
             

        </form>

        


        
       <br>
        <h2>Click this to logout</h2>
         
        <form action="LogOut" method="post">
            <input type="submit" value="Log Out">
        </form>
        
        <br><br>
        <a href="PasswordChange.jsp">Click hear to change your Password</a>
        
          <br><br>
        <a href="addResourse.jsp">add Resourse</a>

        <br><br>
        <a href="downloardResourses.jsp">Downloard Resourse</a>
        
        <br><br>
         <form action="viweOUProfile" method="post">
             
            <input type="submit" value="Personal Data">
        </form>

        
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
