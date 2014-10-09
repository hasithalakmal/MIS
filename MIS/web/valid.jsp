<%-- 
    Document   : valid
    Created on : Sep 21, 2014, 8:15:45 PM
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
           String msg =(String) request.getAttribute("massage");
        %>
        <center>
        <h1>valid</h1>
        <br><br>
        <p style="color: greenyellow">Error : <%=msg%></p>
        
        </center>
    </body>
</html>
