<%-- 
    Document   : prnHome
    Created on : Aug 31, 2014, 6:29:30 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>prn Page</title>
    </head>
    <body>
          
        <%
       
        if(session.getAttribute("useID") == null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);}
              
        %>
        <center>
        <h1>Hello parent World!</h1>
        <form action="LogOut" method="post">
            <input type="submit" value="Log Out">
        </form>
        
        <br><br>
        <a href="PasswordChange.jsp">change Password</a>

        <br><br>
         <form action="viweParenttProfile" method="post">
             
            <input type="submit" value="Personal Data">
        </form>
        </center>
        
    </body>
</html>
