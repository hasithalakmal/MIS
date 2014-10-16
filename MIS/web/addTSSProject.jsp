<%-- 
    Document   : addTSSProject
    Created on : Oct 14, 2014, 9:17:13 PM
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


        %>

    <center>
        <h1>comity  details management</h1>

        <br><br>
        <h3>Add Projects </h3>
        <form action="addProjects" method="post">
            <table>
                <tr>
                    <td>
                        Project ID
                    </td>
                    <td>
                        <input type="text" name="ProjectID">
                    </td>
                </tr>
                <tr>
                    <td>Project Name</td>
                    <td><input type="text" name="ProjectName"></td>
                </tr>
                 
                <tr>
                    <td>Project report</td>
                    <td><input type="text" name="Projectreport"></td>
                </tr>
                <tr>
                    <td>
                        Project ppt
                    </td>
                    <td>
                        <input type="text" name="ProjectPPT">
                    </td>
                </tr>
                <tr>
                    <td>Discription</td>
                    <td>
                        <input type="text" name="Discription">
                    </td>
                </tr>

                
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
    </body>
</html>
