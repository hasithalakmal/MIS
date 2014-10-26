<%-- 
    Document   : index
    Created on : Aug 28, 2014, 4:02:38 PM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.PasswordEncoding"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body background="5.jpg">
        <h1>loard........</h1>
        <%
           
            String un = (String) request.getAttribute("userid");

            PasswordEncoding pe = new PasswordEncoding();
            String pass = pe.Encode("adm1");
            String pass2 = pe.Encode("stu1");

        %>
        <p>code is working...........</p>
        <p><%= pass%></p>
        <p><%= pass2%> </p>
        
           <img src="6.jpg" width="300" height="200" /> 
           <br><br>
            <a href="Main Login.jsp">
                Main Login
            </a>
    </body>
</html>
