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
    <body>
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
            <a href="Main Login.jsp">
                Main Login
            </a>
            
            <img src="blood.jpg" width="50" height="100" />    
    </body>
</html>
