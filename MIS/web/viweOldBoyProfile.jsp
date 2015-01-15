<%-- 
    Document   : viweOldBoyProfile
    Created on : Sep 21, 2014, 8:28:53 AM
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
            { width: 800px;
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
            
      
        %>
      
         
            <div id="container">
            <div id="header">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#254a6e" >
                    <tr>
                        <td>
                            <img src="uper1.jpg" width="300">
                        </td>
                        <td>
                            <h1 style="color: #FFF">Old Pupil Profile</h1>
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
                    

                </ul>
            </div>

            <div id="section">


               

                <div id="content_container">
                    
                    <table>
                        <tr>
                            <td>
                              Old Pupil ID   
                            </td>
                            <td>
                              : <%=p1%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Student ID 
                            </td>
                            <td>
                              : <%= p2%> 
                            </td>
                        </tr>
                         <tr>
                            <td>
                             Registration Date 
                            </td>
                            <td>
                             : <%= p3%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                             Occupation 
                            <td>
                              : <%= p4%> 
                            </td> 
                            
                        </tr>
                         <tr>
                            <td>
                                Office Phone No 
                            </td>
                            <td>
                              : <%= p5%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Office Address
                            </td>
                            <td>
                             : <%= p6%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                              Educational Qualifications
                              </td>
                            <td>
                           : <%=  p7%>
                            </td>
                            
                        </tr>
                         <tr>
                            <td>
                               
                            </td>
                            <td>
                             : <%= p8%>   
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                            </td>
                            <td>
                              : <%= p9%>    
                            </td>
                        </tr>
                         <tr>
                            <td>
                                
                            </td>
                            <td>
                              : <%= p10%>  
                            </td>
                        </tr>
                         <tr>
                            <td>
                              
                            </td>
                            <td>
                           : <%= p11%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                            
                            </td>
                            <td>
                            : <%= p12%>
                            </td>
                        </tr>
                         
                         <tr>
                            <td>
                             
                            </td>
                            <td>
                            : <%= p14%>
                            </td>
                        </tr>
                         <tr>
                            <td>
                            
                            <td>
                           : <%= p15%>
                            </td>
                            
                            <tr>
                            <td>
                           Professional Qualifications  
                            </td>
                            <td>
                           : <%=  p13%>
                            </td>
                        </tr>
                            
                        </tr>
                         <tr>
                            <td>
                          Other Buddhist Exams 
                            </td>
                            <td>
                           : <%= p16%>
                            </td>
                        </tr>
                                
                    </table>
                  
            </div>
            </div>
            <div id="footer">
                Copyright © SiriWajiraghanaDahamPasala.com
                  
            </div></div>          

    </body>
</html>

          
  



