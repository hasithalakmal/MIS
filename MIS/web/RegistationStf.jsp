<%-- 
    Document   : RegistationStf
    Created on : Aug 31, 2014, 11:50:18 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stf registation</title>
    </head>
    <body  >
         <%
           
          String x1 =(String) session.getAttribute("uid");
        if(session.getAttribute("useID") == null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);}
              
        %>
        <br>
    <center>

        <h1>Register Form </h1>

        <!--The registration form for the users -->
        <form action="StaffRegistation"  method="post">

            <table>
                <tr>
                    <td><b>staff Id</b></td>
                    <td><input type="text" name="Id" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Is accademic staff</b></td>
                    <td>
                        <input type="radio" name='accademic' value='true'>Yes,Accademic
                        <input type="radio" name='accademic' value='false'>No, Non accademic
                    </td>
                </tr>

                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="date" name="Reg_Date" value="" ></td>
                </tr>
                <tr>
                    <td><b>State</b></td>
                    <td><input type="radio" name='state' value='Mr.'>Mr
                        <input type="radio" name='state' value='Mrs.'>Mrs.
                        <input type="radio" name='state' value='Vene.'>Ven.
                        <input type="radio" name='state' value='Miss'>Miss.
                    </td>
                </tr>
                <tr>
                    <td><b>Full_Name</b></td>
                    <td><input type="text" name="Full_Name" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Initials</b></td>
                    <td><input type="text" name="Initial_Name" value="" size="50"></td>
                </tr> 
                <tr>
                    <td><b>Birth day</b></td>
                    <td><input type="text" name="bDay" value="" size="50"></td>
                </tr> 
                <tr>
                    <td><b>Race</b></td>
                    <td><input type="radio" name='Race' value='Sinhala'>Sinhala
                        <input type="radio" name='Race' value='tamil'>Tamil
                        <input type="radio" name='Race' value='Muslim'>Muslim
                        <input type="radio" name='Race' value='Other'>Other
                    </td>
                </tr>
                <tr>
                    <td><b>Religion</b></td>
                    <td><input type="radio" name="Religion" value="Buddhist">Buddhist
                        <input type="radio" name="Religion" value="christian">cristian
                        <input type="radio" name="Religion" value="chataolic">chataolic
                        <input type="radio" name="Religion" value="Hindu">Hindu
                        <input type="radio" name="Religion" value="Others">Others
                    </td></tr>
                <tr>
                    <td><b>NIC_No:</b></td>
                    <td><input type="text" name="NIC" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Address</b></td>
                    <td><input type="text" name="Address" value="" size="50">
                    </td>
                </tr><tr>
                    <td><b>Land_Phone</b></td>
                    <td><input type="text" name="Land_Phone" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile_Phone 1</b></td>
                    <td><input type="text" name="Mobile_Phone1" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile_Phone 2</b></td>
                    <td><input type="text" name="Mobile_Phone2" value="" size="50"></td>
                </tr>
                <tr>
                    <td><b>Fax</b></td>
                    <td><input type="text" name="Fax" value="" size="50"></td></tr>
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="text" name="email" value="" placeholder="@gmail.com" size="50"></td>
                </tr>

                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value=""  size="50"></td>
                </tr>
                <tr>
                    <td><b>Office Phone</b></td>
                    <td><input type="text" name="office_phone" value=""  size="50"></td>
                </tr>
                <tr>
                    <td><b>Office address</b></td>
                    <td><input type="text" name="Office_address" value=""  size="50"></td>
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
                        <input type="checkbox" name="education7" value="awasana">awasana
                        <input type="checkbox" name="education8" value="darmacharya">darmacharya
                        <input type="checkbox" name="education9" value="other bidhist">other bidhist
                        <input type="checkbox" name="education10" value="Proffessional">Proffessional
                    </td>
                </tr>
                 <tr>
                    <td><b>Is Student in our DP</b></td>
                    <td>
                        <input type="radio" name='student' value='true'>Yes
                        <input type="radio" name='student' value='false'>No
                    </td>
                <tr>
                    <td><b>Student ID</b></td>
                    <td><input type="text" name="stuid" value=""  size="50"></td>
                </tr>
                 <tr>
                    <td><b>Is TSS</b></td>
                    <td>
                        <input type="radio" name='tss' value='true'>Yes
                        <input type="radio" name='tss' value='false'>No
                    </td>
                <tr>
                    <td><b>TSS ID</b></td>
                    <td><input type="text" name="tssid" value=""  size="50"></td>
                </tr>
                <tr>
                    <td><b>Is TS teacher</b></td>
                    <td>
                        <input type="radio" name='tst' value='true'>Yes
                        <input type="radio" name='tst' value='false'>No
                    </td>
                <tr>
                
                </table>

            <center><input type="submit" Value="Register Staff" name="Submit"></center>
            <br><br>

        </form>

    </center>
</body>
</html>
