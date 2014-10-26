<%-- 
    Document   : FogetUserID
    Created on : Oct 26, 2014, 7:02:39 AM
    Author     : Mr.Mic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#submit').click(function () {
                    var usertype = $('#ut').val();
                    var userName = $('#un').val();
                    var birthday = $('#bd').val();
                    $.get('FogotUserID', {usertype: usertype, userName: userName, birthday: birthday}, function (responseText) {
                        $('#namelist').text(responseText);
                    });
                });
            });
        </script>
    </head>
    <body>
        <h1>Fogot User ID</h1>
        <form id="form1" >
            <table>
                <tr>
                    <td>
                        Select User Type
                    </td>
                    <td>
                        <select  name="usertype" id="ut">
                            
                            <option value="stu">Student</option>
                            <option value="stf">Staff</option>
                            <option value="ops">Old Boy</option>
                            <option value="prf">Prefect</option>
                            <option value="tss">Thurunusaviya student</option>                          
                            <option value="prn">Gardian</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        User Name 
                    </td>
                    <td>
                        <input type="text" name="userName" id="un">
                    </td>
                </tr>
                <tr>
                    <td>
                        Birth Day 
                    </td>
                    <td>
                        <input type="text" name="birthday" id="bd">
                    </td>
                </tr>
            </table>
            <input id="submit" type="button" value="search">
        </form>
        <p id="namelist"></p>
    </body>
</html>
