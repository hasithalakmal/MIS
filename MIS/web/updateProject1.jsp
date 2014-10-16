<%-- 
    Document   : updateProject1
    Created on : Oct 15, 2014, 5:34:53 AM
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

            // String uid = (String) session.getAttribute("useID");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

            String ProjectID = (String) request.getAttribute("ProjectID");
            String ProjectName = (String) request.getAttribute("ProjectName");
            String Projectreport = (String) request.getAttribute("Projectreport");
            String ProjectPPT = (String) request.getAttribute("ProjectPPT");
            String Discription = (String) request.getAttribute("Discription");


        %>

    <center>
        <h1>comity  details management</h1>

        <br><br>
        <h3>update Projects </h3>
        <form action="submitUpdateProjects" method="post">
            <table>
                <tr>
                    <td>
                        Project ID
                    </td>
                    <td>
                        <input type="text" name="ProjectID" value="<%=ProjectID%>">
                    </td>
                </tr>
                <tr>
                    <td>Project Name</td>
                    <td><input type="text" name="ProjectName" value="<%=ProjectName%>"></td>
                </tr>
                 
                <tr>
                    <td>Project report</td>
                    <td><input type="text" name="Projectreport" value="<%=Projectreport%>"></td>
                </tr>
                <tr>
                    <td>
                        Project ppt
                    </td>
                    <td>
                        <input type="text" name="ProjectPPT" value="<%=ProjectPPT%>">
                    </td>
                </tr>
                <tr>
                    <td>Discription</td>
                    <td>
                        <input type="text" name="Discription" value="<%=Discription%>">
                    </td>
                </tr>

                
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
    </body>
</html>
