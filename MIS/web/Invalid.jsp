<%-- 
    Document   : Invalid
    Created on : Sep 4, 2014, 8:00:08 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="5.jpg">
        <%
           String msg =(String) request.getAttribute("massage");
        %>
        <center>
        <h1>Invalid</h1>
        <br><br>
        <p style="color: red">Error : <%=msg%></p>
        
        </center>
    </body>
</html>
