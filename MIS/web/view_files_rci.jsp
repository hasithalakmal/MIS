<%-- 
    Document   : view_files_rci
    Created on : Jan 17, 2015, 11:42:08 AM
    Author     : Mr.Mic
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.MIS.lib.ProsedeurControls"%>
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
                $("#header").load("UI_Parts/rci_header.jsp");
                $("#nav").load("UI_Parts/nav.jsp");
                $("#footer").load("UI_Parts/footer.jsp");
                $("#wrap").load("UI_Parts/rci_menue.jsp");
            });
        </script>
    </head>
    <body>
        <%
            ProsedeurControls pc = new ProsedeurControls();
            String para = "('OU')";
            ResultSet rs = pc.callProc("select_files", para);
            String id[] = new String[20];
            String name[] = new String[20];
            for(int j=0; j<20 ;j++){
                id[j] = " ";
            }
            
            int i = 0;
            while (rs.next() && i < 20) {
                id[i] = rs.getString(1);
                name[i] = rs.getString(2);
                i++;
            }
        %>
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
                        <h3>Download files</h3>
                        <form action="downloardblob" method="get">
                            <table>
                                <tr>
                                    <td>
                                        Select File
                                    </td>

                                    <td>
                                        <select name="fid" style="width: 200px" >
                                            <option value="<%=id[0]%>"><%=name[0]%></option>
                                            <option value="<%=id[1]%>"><%=name[1]%></option>
                                            <option value="<%=id[2]%>"><%=name[2]%></option>
                                            <option value="<%=id[3]%>"><%=name[3]%></option>
                                            <option value="<%=id[4]%>"><%=name[4]%></option>
                                            <option value="<%=id[5]%>"><%=name[5]%></option>
                                            <option value="<%=id[6]%>"><%=name[6]%></option>
                                            <option value="<%=id[7]%>"><%=name[7]%></option>
                                            <option value="<%=id[8]%>"><%=name[8]%></option>
                                            <option value="<%=id[9]%>"><%=name[9]%></option>
                                            <option value="<%=id[10]%>"><%=name[10]%></option>
                                            <option value="<%=id[11]%>"><%=name[11]%></option>
                                            <option value="<%=id[12]%>"><%=name[12]%></option>
                                            <option value="<%=id[13]%>"><%=name[13]%></option>
                                            <option value="<%=id[14]%>"><%=name[14]%></option>
                                            <option value="<%=id[15]%>"><%=name[15]%></option>
                                            <option value="<%=id[16]%>"><%=name[16]%></option>
                                            <option value="<%=id[17]%>"><%=name[17]%></option>
                                            <option value="<%=id[18]%>"><%=name[18]%></option>
                                            <option value="<%=id[19]%>"><%=name[19]%></option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" value="Downloard">
                                    </td>
                                </tr>
                            </table>

                        </form>
                    </center>
                </div>





            </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
