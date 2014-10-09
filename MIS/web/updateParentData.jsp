<%-- 
    Document   : updateParentData
    Created on : Sep 21, 2014, 4:06:39 PM
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
        <br>
    <center>

        <h1>Register Form </h1>

        <!--The registration form for the users -->
        <form action="SubmitUpdateParent"  method="post">

            <table>
                <tr>
                    <td><b>Parent Id</b></td>
                    <td><input type="text" name="Id" value="<%=p1%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Relation</b></td>
                    <td>
                        <input type="radio" name='Relation' value='father'>father
                        <input type="radio" name='Relation' value='mother'>mother
                        <input type="radio" name='Relation' value='gardian'>gardian
                    </td>
                </tr>

                <tr>
                    <td><b>Registration_Date</b></td>
                    <td><input type="text" name="Reg_Date" value="<%=p2%>" ></td>
                </tr>
                <tr>
                    <td><b>State</b></td>
                    <td><input type="radio" name='state' value='Mr.'>Mr
                        <input type="radio" name='state' value='Mrs.'>Mrs.
                    </td>
                </tr>
                <tr>
                    <td><b>Full_Name</b></td>
                    <td><input type="text" name="Full_Name" value="<%=p4%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Initials</b></td>
                    <td><input type="text" name="Initial_Name" value="<%=p5%>" size="50"></td>
                </tr> 
                <tr>
                    <td><b>Birth day</b></td>
                    <td><input type="text" name="bDay" value="<%=p6%>" size="50"></td>
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
                    <td><input type="text" name="NIC" value="<%=p9%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Address</b></td>
                    <td><input type="text" name="Address" value="<%=p10%>" size="50">
                    </td>
                </tr><tr>
                    <td><b>Land_Phone</b></td>
                    <td><input type="text" name="Land_Phone" value="<%=p11%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile_Phone 1</b></td>
                    <td><input type="text" name="Mobile_Phone1" value="<%=p12%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Mobile_Phone 2</b></td>
                    <td><input type="text" name="Mobile_Phone2" value="<%=p13%>" size="50"></td>
                </tr>
                <tr>
                    <td><b>Fax</b></td>
                    <td><input type="text" name="Fax" value="<%=p14%>" size="50"></td></tr>
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="text" name="email" value="<%=p15%>" placeholder="@gmail.com" size="50"></td>
                </tr>

                <tr>
                    <td><b>Occupation</b></td>
                    <td><input type="text" name="occupation" value="<%=p16%>"  size="50"></td>
                </tr>
                <tr>
                    <td><b>Office Phone</b></td>
                    <td><input type="text" name="office_phone" value="<%=p17%>"  size="50"></td>
                </tr>
                <tr>
                    <td><b>Office address</b></td>
                    <td><input type="text" name="Office_address" value="<%=p18%>"  size="50"></td>
                </tr>
               
            </table>

            <center><input type="submit" Value="Register Staff" name="Submit"></center>
            <br><br>

        </form>

    </center>
    </body>
</html>
