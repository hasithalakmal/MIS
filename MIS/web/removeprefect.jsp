<%-- 
    Document   : removeprefect
    Created on : Jan 17, 2015, 3:17:42 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <script>
            $(function () {
                $("#header").load("UI_Parts/pbi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/pbi_menu.jsp");
            });
        </script>
    </head>
    <body>
        <%

                String x1 = (String) session.getAttribute("useID");
                if (x1 == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

            %>
        <div id="container">
            <div id="header">
                <!-- outer file -->
            </div>
            <div id="nav">
                <!-- outer file -->
            </div>
            <div id="section" >
                <div id="wrap" >
                    <!-- outer file -->
                </div>



                <div id="content_container">
                    <form action="remove_prefect" method="post">
                        <table>
                            <tr>
                                <td>
                                    Prefect ID 
                                </td>
                                <td>
                                    <input type="text" name ="id" required >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" value="Delete" >
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>





            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>


