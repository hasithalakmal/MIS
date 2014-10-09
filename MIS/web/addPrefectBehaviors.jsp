<%-- 
    Document   : PrefectBehaviors
    Created on : Oct 8, 2014, 4:14:40 PM
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

            // String uid = (String) session.getAttribute("useID");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }


        %>

    <center>
        <h1>Prefect details management</h1>

        <br><br>
        <h3>Add service</h3>
        <form action="addPrfBehaviorReport" method="post">
            <table>
                <tr>
                    <td>
                        Prefect ID
                    </td>
                    <td>
                        <input type="text" name="PrefectID">
                    </td>
                </tr>
                <tr>
                    <td><b>Term</b></td>
                    <td><input type="text" name="Term"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td>
                        <input type="text" name="Year">
                    </td>
                </tr>
                <tr>
                    <td>Possision</td>
                    <td>
                        <input type="text" name="Possision">
                    </td>
                </tr>
                <tr>
                    <td>Section</td>
                    <td>
                        <input type="text" name="Section">
                    </td>
                </tr>

                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q1' value='best'>best
                        <input type="radio" name='q1' value='good'>good
                        <input type="radio" name='q1' value='normal'>normal
                        <input type="radio" name='q1' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q2' value='best'>best
                        <input type="radio" name='q2' value='good'>good
                        <input type="radio" name='q2' value='normal'>normal
                        <input type="radio" name='q2' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q3' value='best'>best
                        <input type="radio" name='q3' value='good'>good
                        <input type="radio" name='q3' value='normal'>normal
                        <input type="radio" name='q3' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q4' value='best'>best
                        <input type="radio" name='q4' value='good'>good
                        <input type="radio" name='q4' value='normal'>normal
                        <input type="radio" name='q4' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q5' value='best'>best
                        <input type="radio" name='q5' value='good'>good
                        <input type="radio" name='q5' value='normal'>normal
                        <input type="radio" name='q5' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q6' value='best'>best
                        <input type="radio" name='q6' value='good'>good
                        <input type="radio" name='q6' value='normal'>normal
                        <input type="radio" name='q6' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q7' value='best'>best
                        <input type="radio" name='q7' value='good'>good
                        <input type="radio" name='q7' value='normal'>normal
                        <input type="radio" name='q7' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q8' value='best'>best
                        <input type="radio" name='q8' value='good'>good
                        <input type="radio" name='q8' value='normal'>normal
                        <input type="radio" name='q8' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q9' value='best'>best
                        <input type="radio" name='q9' value='good'>good
                        <input type="radio" name='q9' value='normal'>normal
                        <input type="radio" name='q9' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q10' value='best'>best
                        <input type="radio" name='q10' value='good'>good
                        <input type="radio" name='q10' value='normal'>normal
                        <input type="radio" name='q10' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q11' value='best'>best
                        <input type="radio" name='q11' value='good'>good
                        <input type="radio" name='q11' value='normal'>normal
                        <input type="radio" name='q11' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q12' value='best'>best
                        <input type="radio" name='q12' value='good'>good
                        <input type="radio" name='q12' value='normal'>normal
                        <input type="radio" name='q12' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q13' value='best'>best
                        <input type="radio" name='q13' value='good'>good
                        <input type="radio" name='q13' value='normal'>normal
                        <input type="radio" name='q13' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q14' value='best'>best
                        <input type="radio" name='q14' value='good'>good
                        <input type="radio" name='q14' value='normal'>normal
                        <input type="radio" name='q14' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q15' value='best'>best
                        <input type="radio" name='q15' value='good'>good
                        <input type="radio" name='q15' value='normal'>normal
                        <input type="radio" name='q15' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q16' value='best'>best
                        <input type="radio" name='q16' value='good'>good
                        <input type="radio" name='q16' value='normal'>normal
                        <input type="radio" name='q16' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q17' value='best'>best
                        <input type="radio" name='q17' value='good'>good
                        <input type="radio" name='q17' value='normal'>normal
                        <input type="radio" name='q17' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q18' value='best'>best
                        <input type="radio" name='q18' value='good'>good
                        <input type="radio" name='q18' value='normal'>normal
                        <input type="radio" name='q18' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q19' value='best'>best
                        <input type="radio" name='q19' value='good'>good
                        <input type="radio" name='q19' value='normal'>normal
                        <input type="radio" name='q19' value='werst'>werst
                    </td>
                </tr>
                <tr>
                    <td>qqqqqqqqqqqqqqqqqqqqqqqqqqqq</td>
                    <td>
                        <input type="radio" name='q20' value='best'>best
                        <input type="radio" name='q20' value='good'>good
                        <input type="radio" name='q20' value='normal'>normal
                        <input type="radio" name='q20' value='werst'>werst
                    </td>
                </tr>
       </table>
            <input type="submit" value="Add servise">
        </form>
    </center>
    </body>
</html>
