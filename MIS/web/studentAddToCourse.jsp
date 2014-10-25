<%-- 
    Document   : studentAddToCourse
    Created on : Oct 11, 2014, 12:07:02 PM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Add to Course</title>
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
                height:1000px;
                float:left;
                padding:10px;
                background-color:#d4dadc;
            }
            #content_container
            { width: 500px;
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
                padding: 0px;
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
                /*
                 // String uid = (String) session.getAttribute("useID");
                 if (session.getAttribute("useID") == null) {
                 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                 rd.forward(request, response);
                 }

                 */
            %>

            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" border-radius="10px">
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Thurunusaviya Management Area</h1>
                        </td>
                        <td align="right">

                            <h3> <a href="logoutPage.jsp" style="color: #FFF">(LogOut)</a></h3> 
                        </td>
                    </tr>
                </table>
            </div>

            <div id="nav">
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="history.html">History</a></li>
                    <li><a href="thurunusaviya.html">Thurunusaviya</a></li>
                    <li><a href="gallary.html">Gallery</a></li>
                    <li><a href="#">View My Details</a></li>
                    <li><a href="PasswordChange.jsp">Change Password</a></li>

                </ul>
            </div>

            <div id="section">


                <div id="wrap">

                    <ul id="navbar">
                        <!-- The strange spacing herein prevents an IE6 whitespace bug. -->
                        <li><a href="#">||Course Management||</a>
                            <ul>
                                <li><a href="addCourse.jsp">Add Course</a></li>
                                <li><a href="removeCourse.jsp">Remove Course</a></li>
                                <li><a href="updatecourse0.jsp">Update Course</a></li>
                                <li><a href="studentAddToCourse.jsp">Add Student to Course</a></li>
                                <li><a href="studentRemoveFromCourse.jsp">Remove Student from Course</a></li>
                                <li><a href="studentUpdateInCourse0.jsp">Update Student in Course</a></li>
                                <li><a href="staffAddToCourse.jsp">Add Staff to Course</a></li>
                                <li><a href="staffRemoveFromCourse.jsp">Remove Staff from Course</a></li>
                                <li><a href="staffUpdateInCourse.jsp">Update Staff in Course</a></li>

                            </ul>
                        </li>


                        <li><a href="#">||Project Management||</a>
                            <ul>
                                <li><a href="addTSSProject.jsp">Add Project</a></li>
                                <li><a href="removeTSSProject.jsp">Remove Project</a></li>
                                <li><a href="updateTSSProject.jsp">Update Project</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||User Management||</a>
                            <ul>
                                <li><a href="RegistationTss.jsp">Add Thurunusaviya Student</a></li>                    
                                <li><a href="#">Add Thurunusaviya Staff</a></li>
                                <li><a href="RegistationTsi.jsp">Add Thurunusaviya In-charge</a></li>
                            </ul>
                        </li>
                        <li><a href="#">||Reports||</a>
                            <ul>
                                <li><a href="#">Student Reports</a></li>
                                <li><a href="#">Staff Reports</a></li>
                                <li><a href="#">Course Reports</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||SMS and E-mails||</a>
                            <ul>
                                <li><a href="#">Send SMS to Student</a></li>
                                <li><a href="#">Send SMS to Parent</a></li>
                                <li><a href="#">Send SMS to Staff</a></li>
                                <li><a href="#">Send E-mail to Parent</a></li>
                                <li><a href="#">Send E-mail to Student</a></li>
                                <li><a href="#">Send E-mail to Staff</a></li>

                            </ul>
                        </li>
                        <li><a href="#">||Resource Management||</a>
                            <ul>
                                <li><a href="#">Add File</a></li>
                                <li><a href="#">Add Video</a></li>
                                <li><a href="#">Add Audio</a></li>
                                <li><a href="#">Add Image</a></li>
                                <li><a href="#">Remove File</a></li>
                                <li><a href="#">Remove Video</a></li>
                                <li><a href="#">Remove Audio</a></li>
                                <li><a href="#">Remove Image</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>

                <div id="content_container">
                    <center>
                    <h3>Add Student for Thurunusaviya Course</h3>
                    <form action="AddStudentforTSScourse" method="post">
                        <table>
                            <tr>
                                <td>
                                     TSS ID
                                </td>
                                <td>
                                    <input type="text" name="TSSID">
                                </td>
                            </tr>
                            <tr>
                                <td>Course ID</td>
                                <td><input type="text" name="CourseID"></td>
                            </tr>
                            <tr>
                                <td>Year</td>
                                <td>
                                    <input type="text" name="Year">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     Attendance
                                </td>
                                <td>
                                    <input type="text" name="attendance">
                                </td>
                            </tr>
                            <tr>
                                <td>Log Marks</td>
                                <td><input type="text" name="LogMarks"></td>
                            </tr>
                            <tr>
                                <td>Practical Marks</td>
                                <td>
                                    <input type="text" name="PracticalMarks">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Is Level Pass
                                </td>
                                <td>
                                    <input type="text" name="IsLevelPass">
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
                                <td>Got Certificates</td>
                                <td>
                                    <input type="radio" name='gotcertificate' value='yes'>yes
                                    <input type="radio" name='gotcertificate' value='no'>no
                                </td>
                            </tr>

                            <tr>
                                <td>01) Q1</td>
                                <td>
                                    <input type="radio" name='q1' value='best'>best
                                    <input type="radio" name='q1' value='good'>good
                                    <input type="radio" name='q1' value='normal'>normal
                                    <input type="radio" name='q1' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>02) Q2</td>
                                <td>
                                    <input type="radio" name='q2' value='best'>best
                                    <input type="radio" name='q2' value='good'>good
                                    <input type="radio" name='q2' value='normal'>normal
                                    <input type="radio" name='q2' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>03) Q3</td>
                                <td>
                                    <input type="radio" name='q3' value='best'>best
                                    <input type="radio" name='q3' value='good'>good
                                    <input type="radio" name='q3' value='normal'>normal
                                    <input type="radio" name='q3' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>04) Q4</td>
                                <td>
                                    <input type="radio" name='q4' value='best'>best
                                    <input type="radio" name='q4' value='good'>good
                                    <input type="radio" name='q4' value='normal'>normal
                                    <input type="radio" name='q4' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>05) Q5</td>
                                <td>
                                    <input type="radio" name='q5' value='best'>best
                                    <input type="radio" name='q5' value='good'>good
                                    <input type="radio" name='q5' value='normal'>normal
                                    <input type="radio" name='q5' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>06) Q6</td>
                                <td>
                                    <input type="radio" name='q6' value='best'>best
                                    <input type="radio" name='q6' value='good'>good
                                    <input type="radio" name='q6' value='normal'>normal
                                    <input type="radio" name='q6' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>07) Q7</td>
                                <td>
                                    <input type="radio" name='q7' value='best'>best
                                    <input type="radio" name='q7' value='good'>good
                                    <input type="radio" name='q7' value='normal'>normal
                                    <input type="radio" name='q7' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>08) Q7</td>
                                <td>
                                    <input type="radio" name='q8' value='best'>best
                                    <input type="radio" name='q8' value='good'>good
                                    <input type="radio" name='q8' value='normal'>normal
                                    <input type="radio" name='q8' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>09) Q9</td>
                                <td>
                                    <input type="radio" name='q9' value='best'>best
                                    <input type="radio" name='q9' value='good'>good
                                    <input type="radio" name='q9' value='normal'>normal
                                    <input type="radio" name='q9' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>10) Q10</td>
                                <td>
                                    <input type="radio" name='q10' value='best'>best
                                    <input type="radio" name='q10' value='good'>good
                                    <input type="radio" name='q10' value='normal'>normal
                                    <input type="radio" name='q10' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>11) Q11</td>
                                <td>
                                    <input type="radio" name='q11' value='best'>best
                                    <input type="radio" name='q11' value='good'>good
                                    <input type="radio" name='q11' value='normal'>normal
                                    <input type="radio" name='q11' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>12) Q12</td>
                                <td>
                                    <input type="radio" name='q12' value='best'>best
                                    <input type="radio" name='q12' value='good'>good
                                    <input type="radio" name='q12' value='normal'>normal
                                    <input type="radio" name='q12' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>13) Q13</td>
                                <td>
                                    <input type="radio" name='q13' value='best'>best
                                    <input type="radio" name='q13' value='good'>good
                                    <input type="radio" name='q13' value='normal'>normal
                                    <input type="radio" name='q13' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>14) Q14</td>
                                <td>
                                    <input type="radio" name='q14' value='best'>best
                                    <input type="radio" name='q14' value='good'>good
                                    <input type="radio" name='q14' value='normal'>normal
                                    <input type="radio" name='q14' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>15) Q15</td>
                                <td>
                                    <input type="radio" name='q15' value='best'>best
                                    <input type="radio" name='q15' value='good'>good
                                    <input type="radio" name='q15' value='normal'>normal
                                    <input type="radio" name='q15' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>16) Q16</td>
                                <td>
                                    <input type="radio" name='q16' value='best'>best
                                    <input type="radio" name='q16' value='good'>good
                                    <input type="radio" name='q16' value='normal'>normal
                                    <input type="radio" name='q16' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>17) Q17</td>
                                <td>
                                    <input type="radio" name='q17' value='best'>best
                                    <input type="radio" name='q17' value='good'>good
                                    <input type="radio" name='q17' value='normal'>normal
                                    <input type="radio" name='q17' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>18) Q18</td>
                                <td>
                                    <input type="radio" name='q18' value='best'>best
                                    <input type="radio" name='q18' value='good'>good
                                    <input type="radio" name='q18' value='normal'>normal
                                    <input type="radio" name='q18' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>19) Q19</td>
                                <td>
                                    <input type="radio" name='q19' value='best'>best
                                    <input type="radio" name='q19' value='good'>good
                                    <input type="radio" name='q19' value='normal'>normal
                                    <input type="radio" name='q19' value='werst'>week
                                </td>
                            </tr>
                            <tr>
                                <td>20) Q20</td>
                                <td>
                                    <input type="radio" name='q20' value='best'>best
                                    <input type="radio" name='q20' value='good'>good
                                    <input type="radio" name='q20' value='normal'>normal
                                    <input type="radio" name='q20' value='werst'>week
                                </td>
                            </tr>
                        </table>
                        <br>
                        <input type="submit" value="Add to Course">
                    </form>
                    </center>
                </div>
            </div>

            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
            </div>
        </div>



    </body>
</html>
