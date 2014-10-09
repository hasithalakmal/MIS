<%-- 
    Document   : updateOldBoyData
    Created on : Sep 21, 2014, 4:39:38 PM
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
            if(session.getAttribute("useID") == null){
               RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }            
            
            String p1 = (String) request.getAttribute("p1");
            String p2 = (String) request.getAttribute("p2");
            String p3 = (String) request.getAttribute("p3");
            String p4 = (String) request.getAttribute("p4");
            String p5 = (String) request.getAttribute("p5");
            String p6 = (String) request.getAttribute("p6");
            String p7 = (String) request.getAttribute("p7");
            String p8 = (String) request.getAttribute("p8");
            String p9 = (String) request.getAttribute("p9");
            String p10 = (String) request.getAttribute("p10");
            String p11 = (String) request.getAttribute("p11");
            String p12 = (String) request.getAttribute("p12");
            String p13 = (String) request.getAttribute("p13");
            String p14 = (String) request.getAttribute("p14");
            String p15 = (String) request.getAttribute("p15");
            String p16 = (String) request.getAttribute("p16");
            String p17 = (String) request.getAttribute("p17");
            String p18 = (String) request.getAttribute("p18");
        %>
        
        
        <center>
        <h1>OB Registation</h1>
        <br>
        <form action="SubmitUpdateOldBoy" method="post">
            <table>
                <tr>
                    <td><b>Old Pupil Id</b></td>
                    <td><input type="text" name="obId" value="<%= p1%>" ></td>
                </tr>
                <tr>
                    <td><b>Student Id</b></td>
                    <td><input type="text" name="stuId" value="<%= p2%>" ></td>
                </tr>


                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="text" value="<%= p3%>"  name="Reg_Date" ></td>
                </tr>
                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value="<%= p4%>"  ></td>
                </tr>

                <tr>
                    <td><b>Office Phone</b></td>
                    <td><input type="text" name="office_phone" value="<%= p5%>"  ></td>
                </tr>
                <tr>
                    <td><b>Office address</b></td>
                    <td><input type="text" name="Office_address" value="<%= p6%>"  ></td>
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
