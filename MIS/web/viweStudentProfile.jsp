<%-- 
    Document   : viweStudentProfile
    Created on : Aug 28, 2014, 5:28:05 PM
    Author     : Mr.Mic
--%>


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
                rd.forward(request, response);
            }            
            
            String p1 = (String) request.getAttribute("p1");
            String p2 = (String) request.getAttribute("p2");
            String p3 = (String) request.getAttribute("p3");
            String p4 = (String) request.getAttribute("p4");
            String p5 = (String) request.getAttribute("p5");
            String p6 = (String) request.getAttribute("p6");
            String p7 = (String) request.getAttribute("p7");
            String p8 = (String) request.getAttribute("p8");
            String p9 = (String) request.getAttribute("p9");
            String p10 = (String) request.getAttribute("p10");
            String p11 = (String) request.getAttribute("p11");
            String p12 = (String) request.getAttribute("p12");
            String p13 = (String) request.getAttribute("p13");
            String p14 = (String) request.getAttribute("p14");
            String p15 = (String) request.getAttribute("p15");
            String p16 = (String) request.getAttribute("p16");
            String p17 = (String) request.getAttribute("p17");
            String p18 = (String) request.getAttribute("p18");
            
            
                
        %>
        <h1>Student Profile!!!</h1>
        <p>
            p1 = <%=p1%>
            <br>
            p2 = <%= p2%>
            <br>
            p3 = <%= p3%>
            <br>
            p4 = <%= p4%>
            <br>
            p5 = <%= p5%>
            <br>
            p6 = <%= p6%>
            <br>
            p7 = <%=  p7%>
            <br>
            p8 = <%= p8%>
            <br>
            p9 = <%= p9%>
            <br>
            p10 = <%= p10%>
            <br>
            p11 = <%= p11%>
            <br>
            p12 = <%= p12%>
            <br>
            p13 = <%=  p13%>
            <br>
            p14 = <%= p14%>
            <br>
            p15 = <%= p15%>
            <br>
            p16 = <%= p16%>
            <br>
            p17 = <%=p17%>
            <br>

        </p>


       

    </body>
</html>
