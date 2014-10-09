<%-- 
    Document   : opsHome
    Created on : Aug 31, 2014, 6:02:30 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Old Pupils Socity Page</title>
    </head>
    <body>
        <%
       
        if(session.getAttribute("useID") == null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);}
              
        %>
        <center>
        <h1>Hello Old Pupils World!</h1>
        <form action="LogOut" method="post">
            <input type="submit" value="Log Out">
        </form>
        
        <br><br>
        <a href="PasswordChange.jsp">change Password</a>

        <br><br>
        <form action="viweOldBoyProfile" method="post">
             
            <input type="submit" value="Personal Data">
        </form>
        </center>
        
    </body>
</html>
