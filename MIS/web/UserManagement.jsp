<%-- 
    Document   : UserManagement
    Created on : Oct 8, 2014, 4:03:59 PM
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

            String x1 = (String) session.getAttribute("useID");
            if (x1 == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }

        %>
    <center>
        <h1>Admin Home Page <%=x1%></h1>

        <!-- Create a table to design the page layout>-->
        <form action="adminAddUser" method="post" name="AdmControler">
            <h2>ADD Student in hear</h2>
            <table>
                <tr >
                    <td>
                        <b>Select User Type</b>
                    </td>
                    <td>
                        <select  name="usertype">
                            <option value="adm">Admin</option>
                            <option value="rci">Reserch Center Incharge</option>
                            <option value="pbi">Prefect Incharge</option>
                            <option value="tsi">Thurunusaviya Incharge</option>
                            <option value="opi">Old Boy Incharge</option>
                            <option value="sti">Staff Incharge</option>
                            <option value="stu">Student</option>
                            <option value="ebi">Exam Branch Incharge</option>
                            <option value="stf">Staff</option>
                            <option value="ops">Old Boy</option>
                            <option value="prf">Prefect</option>
                            <option value="tss">Thurunusaviya student</option>
                            <option value="acc">Accountant</option>
                            <option value="pub">Public Center</option>
                            <option value="prn">Gardian</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>

                <center>
                    <input type="submit" Value="Add New User" name="Submit">
                </center>
                </td>
                </tr>

            </table>


        </form>




        <form action="adminSearchUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Search">
                    </td>
                </tr>
            </table>
        </form>

        <form action="admUpdateUser" method="post">
            <h2>Please enter user id for search Student</h2>


            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  Value="Update">
                    </td>
                </tr>
            </table>
        </form>

        <br>
        <br>

        <h2>Reset member Password</h2>
        <form action="AdmResetMemberPassword" method="post">
            <table>
                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Reset password">
        </form>
        <br><br>

        <form action="AdmDeleteMember" method="post">
            <h2>Delete Student</h2>
            <table>

                <tr>
                    <td>
                        Enter user ID
                    </td>
                    <td>
                        <input type="text" name="uid">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Deleat Member">
        </form>
    </center>
    </body>
</html>
