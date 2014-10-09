<%-- 
    Document   : RegistationOldBoy
    Created on : Sep 7, 2014, 6:57:07 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

        // String uid = (String) session.getAttribute("useID");
        if (session.getAttribute("useID") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }


    %>
    <center>
        <h1>OB Registation</h1>
        <br>
        <form action="OBRegistation" method="post">
            <table>
                <tr>
                    <td><b>Old Pupil Id</b></td>
                    <td><input type="text" name="obId" value="" ></td>
                </tr>
                <tr>
                    <td><b>Student Id</b></td>
                    <td><input type="text" name="stuId" value="" ></td>
                </tr>


                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="date" name="Reg_Date"  ></td>
                </tr>
                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value=""  ></td>
                </tr>

                <tr>
                    <td><b>Office Phone</b></td>
                    <td><input type="text" name="office_phone" value=""  ></td>
                </tr>
                <tr>
                    <td><b>Office address</b></td>
                    <td><input type="text" name="Office_address" value=""  ></td>
                </tr>
                <tr>
                    <td>
                        <b>Educational qilification</b>
                    </td>
                    <td>
                        <input type="checkbox" name="education1" value="O/L">O/L
                        <input type="checkbox" name="education2" value="A/L">A/L
                        <input type="checkbox" name="education3" value="graduate">graduate
                        <input type="checkbox" name="education4" value="postGraduate">postGraduate
                        <input type="checkbox" name="education5" value="Doctor">Doctor

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="checkbox" name="education6" value="HND">HND
                        <input type="checkbox" name="education10" value="Proffessional">Proffessional
                        <input type="checkbox" name="education7" value="awasana">awasana
                        <input type="checkbox" name="education8" value="darmacharya">darmacharya
                        <input type="checkbox" name="education9" value="other bidhist">other bidhist

                    </td>
                </tr>
                </table>
            <input type="submit" value="Add Old Pupil">
        </form>
    </center>

</body>
</html>
