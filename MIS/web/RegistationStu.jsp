<%-- 
    Document   : RegistationStu
    Created on : Aug 28, 2014, 6:51:48 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration_Student</title>
    </head>


    <body >
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
        <form action="StudentRegistation" name="StudentRegistation" method="post">

            <table>
                <tr>
                    <td><b>Student_Id</b></td>
                    <td><input type="text" name="Id" value="" size="50"></td>
                </tr>
                
                
                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="date" name="Reg_Date" value="" ></td>
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
                    </td></tr>
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
                    <td><b>School</b></td>
                    <td><input type="text" name="school" value="" size="50"></td></tr>
                <tr>
                    <td><b>School_Lerning_Medium</b></td>
                    <td><input type="radio" name="slm" value="Singhela">Singhela
                        <input type="radio" name="slm" value="English">English
                        <input type="radio" name="slm" value="Tamil">Tamil
                    </td></tr>
                <tr>
                    <td><b>Dhamma_School_Medium</b></td>
                    <td><input type="radio" name="dlm" value="Singhela">Singhela
                        <input type="radio" name="dlm" value="English">English
                        
                    </td></tr>
                
            </table>
            
            <center><input type="submit" Value="Register Student" name="Submit"></center>
            <br><br>

        </form>

    </center>
</body>

</html>
