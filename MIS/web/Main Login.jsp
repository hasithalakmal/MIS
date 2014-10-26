<%-- 
    Document   : Main Login
    Created on : Aug 28, 2014, 4:04:28 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MainLogin</title>
        <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </SCRIPT>
    </head>

    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
        <%              
                String type=(String) session.getAttribute("useID");
                        if ("adm".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/admHome.jsp");
                            rd.forward(request, response);
                        } else if ("stu".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/stuHome.jsp");
                            rd.forward(request, response);
                        } else if ("rci".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/rciHome.jsp");
                            rd.forward(request, response);
                        } else if ("stf".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/stfHome.jsp");
                            rd.forward(request, response);
                        } else if ("ops".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/opsHome.jsp");
                            rd.forward(request, response);
                        } else if ("prf".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/prfHome.jsp");
                            rd.forward(request, response);
                        } else if ("tss".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/tssHome.jsp");
                            rd.forward(request, response);
                        } else if ("acc".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/accHome.jsp");
                            rd.forward(request, response);
                        } else if ("pub".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/pubHome.jsp");
                            rd.forward(request, response);
                        } else if ("pbi".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/pbiHome.jsp");
                            rd.forward(request, response);
                        } else if ("tsi".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/tsiHome.jsp");
                            rd.forward(request, response);
                        } else if ("ebi".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/ebiHome.jsp");
                            rd.forward(request, response);
                        } else if ("prn".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/prnHome.jsp");
                            rd.forward(request, response);
                        } else if ("opi".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/opiHome.jsp");
                            rd.forward(request, response);
                        }else if ("sti".equals(type)) {
                            RequestDispatcher rd = request.getRequestDispatcher("/stiHome.jsp");
                            rd.forward(request, response);
                        } 
        %>
        
    <center>

        <h1>
            Main Login 
        
        </h1>
        <br>
        <br>
        <br>
        <!-- Create a table to design the page layout-->
        <form name="MainLogin" action="mainAccessControler" method="post">
            <table>

                <tr>
                    <td><b>User ID</b></td>
                    <td><input type="text" name="userid" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="password" name="userpassword" value="" size="50"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <center>
                    <input type="submit" Value="Log In" name="Login">
                </center>
                </td>
                </tr>
                

           </table>
            
            <p>
                If u can't remember your pass word enter UID and click hear. 
                        Then go to your e mail and get your new pass word.
            </p>
            <br><br>
            <a href="FogetUserID.jsp">Foget User ID</a>
            <br><br>
            <a href="FogetPassword.jsp">Foget password</a>
            <br><br>
            
    </center>


</body>

</html>
