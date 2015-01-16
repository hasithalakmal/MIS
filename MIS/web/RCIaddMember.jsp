<%-- 
    Document   : RCIaddMember
    Created on : Oct 16, 2014, 11:51:28 PM
    Author     : Mr.Mic
--%>

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

                  
                        <h2>Add User</h2>
                        <form action="adminAddUser" method="post" name="AdmControler" >

                            <table>
                                <tr >
                                    <td>
                                        Select User Type
                                    </td>
                                    <td>
                                        <select  name="usertype">

                                            <option value="rci">Reserch Center In-charge</option>
                                            <option value="pbi">Prefect Board In-charge</option>
                                            <option value="tsi">Thurunusaviya In-charge</option>
                                            <option value="opi">Old Pupil In-charge</option>
                                            <option value="sti">Staff In-charge</option>
                                            <option value="ebi">Exam Branch In-charge</option>
                                            <option value="stu">Student</option>
                                            <option value="stf">Staff</option>
                                            <option value="ops">Old Boy</option>
                                            <option value="prf">Prefect</option>
                                            <option value="tss">Thurunusaviya student</option>

                                            <option value="prn">Guardian</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>

                                <center><br>
                                    <input type="submit" Value="Add User" name="Submit">
                                </center>
                                </td>
                                </tr>

                            </table>

                        </form>
                   
                </div>

          </div>
            <div id="footer">
                <!-- outer file -->
            </div>
        </div>
    </body>
</html>
