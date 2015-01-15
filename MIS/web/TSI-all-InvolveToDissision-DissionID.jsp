<%-- 
    Document   : TSI-all-InvolveToDissision-DissionID
    Created on : 28-Oct-2014, 23:39:40
    Author     : Prasanga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="com.MIS.lib.DataBaseManagement"%>
        <%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
        <%@page import="java.util.Map"%>
        <%@page import="java.util.HashMap"%>
        <%@page import="java.io.File"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="net.sf.jasperreports.engine.*"%>

        <%
            Connection conn = null;
            String dissisonID = request.getParameter("dissisonID");
            //String Year = request.getParameter("Year");
            //  String Year = request.getParameter("Year");
            DataBaseManagement dbm = new DataBaseManagement();
            conn = dbm.setConnetction();

            File reportFile = new File(application.getRealPath("/reports/STI-Stf/TSI-all-InvolveToDissision-DissionID.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            // parameters.put("Grade",Grade);
            parameters.put("dissisonID", dissisonID);
            // parameters.put("Year",Year);

            byte[] bytes = JasperRunManager.runReportToPdf((String) reportFile.getPath(), parameters, conn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();%>

    </body>
</html>
