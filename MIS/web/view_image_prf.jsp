<%-- 
    Document   : view_image_prf
    Created on : Jan 17, 2015, 6:42:58 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="UI_Parts/mystyle_Aplication.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
            $(function () {
                $("#header").load("UI_Parts/prf_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/prf_menue.jsp");
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
                    <center>
                        <iframe src="slider-master/examples-jquery/overlay-cover.source.jsp"  width="630" height="330" frameborder="0" ></iframe>
                        <p>Slide to see more images</p>
                    </center>
                </div>

            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
