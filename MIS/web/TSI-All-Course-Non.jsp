<%-- 
    Document   : TSI-All-Course-Non
    Created on : 25-Oct-2014, 14:54:42
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
            String id = request.getParameter("stuID");
            DataBaseManagement dbm = new DataBaseManagement();
            conn = dbm.setConnetction();

            File reportFile = new File(application.getRealPath("/reports/TSS-TSI/TSI-All-Course-Non.jasper"));//your report_name.jasper file
            // Map parameters = new HashMap();
            // parameters.put("stuID",id);
            byte[] bytes = JasperRunManager.runReportToPdf((String) reportFile.getPath(), null, conn);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();%>

    </body>
</html>
