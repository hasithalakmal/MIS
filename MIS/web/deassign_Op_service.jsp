<%-- 
    Document   : deassign_Op_service
    Created on : Jan 18, 2015, 7:05:31 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.IDGenorator"%>
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
                $("#header").load("UI_Parts/opi_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/opi_menue.jsp");
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
                    <h3>Assign Old Pupils to Service</h3>
                    <form action="deassign_ob_servis" method="post" >
                        <table>
                            <tr>
                                <td>
                                    Old Pupil ID
                                </td>
                                <td>
                                    <input type="text"  name="oid" required >
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Service ID
                                </td>
                                <td>
                                    <input type="text" name="sid" required>
                                </td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" value="Remove">
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

