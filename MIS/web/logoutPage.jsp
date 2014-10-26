<%-- 
    Document   : logoutPage
    Created on : Oct 8, 2014, 7:50:24 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </SCRIPT>
        
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" background="5.jpg">
        <%

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
        <form action="LogOut" method="post">

            
            <p>ARE YOU SURE</p>
            <input type="submit" value="Yes" > 
            <input type="submit" value=" No" >
        </form>
    </body>
</html>
