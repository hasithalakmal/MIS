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
        <style>
            #container {
                width: 1320px ;
                margin-left: auto ;
                margin-right: auto ;
                background-color:#254a6e;

            }
            #header {
                background-color:#254a6e;//dark blue
                color:white;
                border-radius: 10px;
                padding:5px;

            }

            #nav {
                line-height:30px;
                margin: 7px; 
                float:left;
                background-color:#d4dadc;//ash
                border-radius: 10px;
                height:300px;
                width:200px;
                float:left;
                padding:5px;	      
            }

            #section {
                width:1050px;
                margin: 7px; 
                float:left;
                border-radius: 10px;
                height:450px;
                float:left;
                padding:10px;
                background-color:#d4dadc;
            }
            #content_container
            { width: 330px;
              margin: 20px 10px 0 0;
              float: left;}
            #sidebar {

                margin: 7px; 
                float:left;
                background-color:#d4dadc;
                border-radius: 10px;
                height:200px;
                width:200px;
                float:left;
                padding:5px; 	      

            }
            #footer {
                background-color:black;
                color:white;
                clear:both;
                text-align:center;
                padding:5px;
                border-radius: 10px;
            }
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            /* These styles are related to popup menu. */

            /* These styles just pretty up the page a bit. */
            body {
                font: 62.5%/1.2 Arial, Helvetica, sans-serif;
                background-color: #eee; }
            #wrap {
                font-size: 1.1em;
                width: 1000px;
                padding: 20px;
                margin: 0 0; 
                background-color: #d4dadc;
                position: relative; }

            /* These styles create the dropdown menus. */
            #navbar {
                margin: 0;
                padding: 0;
                height: 1em; }
            #navbar li {
                list-style: none;
                float: left; }
            #navbar li a {
                display: block;
                padding: 3px 8px;
                background-color: #254a6e;
                color: #fff;
                text-decoration: none; }
            #navbar li ul {
                display: none; 
                width: 10em; /* Width to help Opera out */
                background-color: #69f;
            }
            #navbar li:hover ul, #navbar li.hover ul {
                display: block;
                position: absolute;
                margin: 0;
                padding: 0; 
                opacity: 0.8}
            #navbar li:hover li, #navbar li.hover li {
                float: none; }
            #navbar li:hover li a, #navbar li.hover li a {
                background-color: #69f;
                border-bottom: 1px solid #fff;
                color: #000; }
            #navbar li li a:hover {
                background-color: #8db3ff; }
            </style>
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
                String p1 = (String) request.getAttribute("p1");
            %>

            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Thurunu Saviya In-Charge Profile</h1>
                        </td>
                        <td align="right">

                            <h3> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3> 
                        </td>
                    </tr>
                </table>
            </div>

            <div id="nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">History</a></li>
                    <li><a href="#">Thurunusaviya</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="PasswordChange_TSI.jsp">Change Password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">

                    <a href="tsiHome.jsp"><img src="Images/home.png" width="75" height="75" align="right"></a>
                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->
                        <li><a href="#">||Course||</a>
                            <ul>
                                <li><a href="addCourse.jsp">Add Course</a></li>
                                <li><a href="removeCourse.jsp">Remove Course</a></li>
                                <li><a href="updatecourse0.jsp">update course</a></li>
                                <li><a href="studentAddToCourse.jsp">Add student to course</a></li>
                                <li><a href="studentRemoveFromCourse.jsp">Remove student from course</a></li>
                                <li><a href="studentUpdateInCourse0.jsp">update student in course</a></li>
                                <li><a href="staffAddToCourse.jsp">Add staff to course</a></li>
                                <li><a href="staffRemoveFromCourse.jsp">Remove staff from course</a></li>
                                <li><a href="staffUpdateInCourse.jsp">update staff in course</a></li>

                            </ul>
                        </li>


                        <li><a href="#">||Project||</a>
                            <ul>
                                <li><a href="addTSSProject.jsp">Add Project</a></li>
                                <li><a href="removeTSSProject.jsp">Remove Project</a></li>
                                <li><a href="updateTSSProject.jsp">update Project</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Users||</a>
                            <ul>
                                <li><a href="RegistationTss.jsp">Add Thurunusaviya Student</a></li>                    
                                <li><a href="#">Add Thurunusaviya Staff</a></li>
                                <li><a href="RegistationTsi.jsp">Add Thurunusaviya Incharge</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Student Reports</a></li>
                                <li><a href="#">Staff Reports</a></li>
                                <li><a href="#">Course Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and e-mails||</a>
                            <ul>
                                <li><a href="#">send SMS to Student</a></li>
                                <li><a href="#">send SMS to Parent</a></li>
                                <li><a href="#">send SMS to Staff</a></li>
                                <li><a href="#">send E-mail to Parent</a></li>
                                <li><a href="#">send E-mail to Student</a></li>
                                <li><a href="#">send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource||</a>
                            <ul>
                                <li><a href="#">Add File</a></li>
                                <li><a href="#">Add video</a></li>
                                <li><a href="#">Add Audio</a></li>
                                <li><a href="#">Add Image</a></li>
                                <li><a href="#">Remove File</a></li>
                                <li><a href="#">Remove video</a></li>
                                <li><a href="#">Remove Audio</a></li>
                                <li><a href="#">Remove Image</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>


                <div id="content_container">
                    <h3>Add Student for  TSS course</h3>
                    <form action="SubmitStudentforTSScourseUpdate" method="post" >
                        <table>
                            <tr>
                                <td>
                                    TSS ID
                                </td>
                                <td>
                                    <input type="text" name="TSSID" value="<%=TSSID%>" readonly required>
                                </td>
                            </tr>
                            <tr>
                                <td>Course ID</td>
                                <td><input type="text" name="CourseID" value="<%=CourseID%>" readonly required></td>
                            </tr>
                            <tr>
                                <td>Year</td>
                                <td>
                                    <input type="text" name="Year" value="<%=Year%>" required readonly>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Attendance
                                </td>
                                <td>
                                    <input type="text" name="attendance" value="<%=attendance%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Log Marks</td>
                                <td><input type="text" name="LogMarks" value="<%=LogMarks%>"></td>
                            </tr>
                            <tr>
                                <td>Practical Marks</td>
                                <td>
                                    <input type="text" name="PracticalMarks" value="<%=PracticalMarks%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Is Level Pass
                                </td>
                                <td>
                                                       
                                    <input type="radio" name='IsLevelPass' value='yes'>yes
                                    <input type="radio" name='IsLevelPass' value='no'>no
                                </td>
                            </tr>
                            <tr>
                                <td>Got Badge</td>
                                <td>
                                    <input type="radio" name='gotbadge' value='yes'>yes
                                    <input type="radio" name='gotbadge' value='no'>no
                                </td>
                            </tr>
                            <tr>
                                <td>Got Certificate</td>
                                <td>
                                    <input type="radio" name='gotcertificate' value='yes'>yes
                                    <input type="radio" name='gotcertificate' value='no'>no
                                </td>
                            </tr>
                        </table>
                        <input type="submit" value="Add servise">
                    </form>

                </div>

            </div>

            <div id="footer">
                Copyright © SirivajiraghanaDahamPasala.com
            </div>
        </div>

    </body>
</html>








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
