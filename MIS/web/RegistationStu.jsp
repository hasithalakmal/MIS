<%-- 
    Document   : RegistationStu
    Created on : Aug 28, 2014, 6:51:48 AM
    Author     : Mr.Mic
--%>

<%@page import="com.MIS.lib.DateGenarator"%>
<%@page import="com.MIS.lib.IDGenorator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration_Student</title>
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


        <body >
            <%

                if (session.getAttribute("useID") == null) {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }

                IDGenorator idg = new IDGenorator();
                DateGenarator dg = new DateGenarator();
                String ID = idg.getStudentID();
                String today = dg.getToday();
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

                        <h1>Registration Form </h1>

                        <!--The registration form for the users -->
                        <form action="StudentRegistation"   method="post">

                            <table>
                                <tr>
                                    <td><b>Student ID</b></td>
                                    <td><input type="text" name="Id" value="<%=ID%>" size="50" required></td>
                                </tr>


                                <tr>
                                    <td><b>Registration Date</b></td>
                                    <td><input type="text" name="Reg_Date" value="<%=today%>" required ></td>
                                </tr>
                                <tr>
                                    <td><b>Full Name</b></td>
                                    <td><input type="text" aria-describedby="name-format" name="Full_Name" value="" size="50" required></td>
                                </tr>
                                <tr>
                                    <td><b>Initials</b></td>
                                    <td><input type="text" name="Initial_Name" value="" size="50" required></td>
                                </tr> 
                                <tr>
                                    <td><b>Birthday</b></td>
                                    <td><input type="text" name="bDay" value="" size="50" required></td>
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
                                        <input type="radio" name="Religion" value="christian">Christian
                                        <input type="radio" name="Religion" value="chataolic">Catholic
                                        <input type="radio" name="Religion" value="Hindu">Hindu
                                        <input type="radio" name="Religion" value="Others">Others
                                    </td></tr>
                                <tr>
                                    <td><b>NIC No</b></td>
                                    <td><input type="text" name="NIC" value="" size="50"></td>
                                </tr>
                                <tr>
                                    <td><b>Address</b></td>
                                    <td><input type="text" name="Address" value="" size="50" required>
                                    </td>
                                </tr><tr>
                                    <td><b>Land Phone</b></td>
                                    <td><input type="tel" name="Land_Phone" value="" size="50"></td>
                                </tr>
                                <tr>
                                    <td><b>Mobile Phone 1</b></td>
                                    <td><input type="tel" name="Mobile_Phone1" value="" size="50" required></td>
                                </tr>
                                <tr>
                                    <td><b>Mobile Phone 2</b></td>
                                    <td><input type="tel" name="Mobile_Phone2" value="" size="50"></td>
                                </tr>
                                <tr>
                                    <td><b>Fax</b></td>
                                    <td><input type="tel" name="Fax" value="" size="50"></td></tr>
                                <tr>
                                    <td><b>Email</b></td>
                                    <td><input type="email" name="email" value="" placeholder="yourmail@mail.com" size="50"></td>
                                </tr>
                                <tr>
                                    <td><b>School</b></td>
                                    <td><input type="text" name="school" value="" size="50" required></td></tr>
                                <tr>
                                    <td><b>School Learning Medium</b></td>
                                    <td><input type="radio" name="slm" value="Singhela" required>Sinhala
                                        <input type="radio" name="slm" value="English" required>English
                                        <input type="radio" name="slm" value="Tamil" required>Tamil
                                    </td></tr>
                                <tr>
                                    <td><b>Dhamma School Medium</b></td>
                                    <td><input type="radio" name="dlm" value="Singhela" required>Sinhala
                                        <input type="radio" name="dlm" value="English" required>English

                                    </td>
                                </tr>
                                <tr>
                                    <td><b>Parent ID</b></td>
                                    <td><input type="text" name="ParentID" value="" size="50" required></td></tr>
                                <tr>

                            </table>
                            <br><br><br>
                            <center><input type="submit" Value="Add" name="Submit"></center>
                            <br><br>

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
