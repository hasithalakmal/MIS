<%-- 
    Document   : RemoveComityDissision
    Created on : Oct 9, 2014, 4:16:18 PM
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
                $("#header").load("UI_Parts/sti_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/sti_menue.jsp");
            });
        </script>
        </head>
        <body>
            <%

                // String uid = (String) session.getAttribute("useID");
                if (session.getAttribute("useID") == null) {
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

                    <h3>Remove Committee Decision</h3>
                    <form action="removeComittyDissison" method="post">
                        <table>
                            <tr>
                                <td>
                                    Decision ID
                                </td>
                                <td>
                                    <input type="text" name="DisisonID">
                                </td>
                            </tr>

                        </table>
                        <input type="submit" value="Remove">
                    </form>
                </div></div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
