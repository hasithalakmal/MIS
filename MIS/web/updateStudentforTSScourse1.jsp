<%-- 
    Document   : updateStudentforTSScourse1
    Created on : Oct 12, 2014, 6:50:46 AM
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
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

            String TSSID = (String) request.getAttribute("TSSID");
            String CourseID = (String) request.getAttribute("CourseID");
            String Year = (String) request.getAttribute("Year");
            String attendance = (String) request.getAttribute("attendance");
            String LogMarks = (String) request.getAttribute("LogMarks");
            String PracticalMarks = (String) request.getAttribute("PracticalMarks");
            String IsLevelPass = (String) request.getAttribute("IsLevelPass");
            String gotbadge = (String) request.getAttribute("gotbadge");
            String gotcertificate = (String) request.getAttribute("gotcertificate");
            String p1 = (String)request.getAttribute("p1");
        %>

    <center>
        <h1>Student  details management</h1>

        <br><br>
        <h3>Add Student for  TSS course</h3>
        <form action="SubmitStudentforTSScourseUpdate" method="post" >
            <table>
                <tr>
                    <td>
                        TSS ID
                    </td>
                    <td>
                        <input type="text" name="TSSID" value="<%=TSSID%>">
                    </td>
                </tr>
                <tr>
                    <td><b>CourseID</b></td>
                    <td><input type="text" name="CourseID" value="<%=CourseID%>"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year" value="<%=Year%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        attendance
                    </td>
                    <td>
                        <input type="text" name="attendance" value="<%=attendance%>">
                    </td>
                </tr>
                <tr>
                    <td><b>LogMarks</b></td>
                    <td><input type="text" name="LogMarks" value="<%=LogMarks%>"></td>
                </tr>
                <tr>
                    <td>PracticalMarks</td>
                    <td>
                        <input type="text" name="PracticalMarks" value="<%=PracticalMarks%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        IsLevelPass
                    </td>
                    <td>
                        <input type="text" name="IsLevelPass" value="<%=IsLevelPass%>">
                    </td>
                </tr>
                <tr>
                    <td><b>gotbadge</b></td>
                    <td>
                        <input type="radio" name='gotbadge' value='yes'>yes
                        <input type="radio" name='gotbadge' value='no'>no
                    </td>
                </tr>
                <tr>
                    <td>gotcertificate</td>
                    <td>
                        <input type="radio" name='gotcertificate' value='yes'>yes
                        <input type="radio" name='gotcertificate' value='no'>no
                    </td>
                </tr>
            </table>
            <input type="submit" value="Add servise">
        </form>
    </center>

</body>
</html>
