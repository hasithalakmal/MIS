/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.ProsedeurControls;
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mr.Mic
 */
public class StudentRegistation extends HttpServlet {

    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17;
    private  String passWord;
    // int x1,x2,x3,x4,x5;
    Connection con;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet StudentRegistation</title>");  
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet StudentRegistation at " + request.getContextPath () + "</h1>");
             out.println("</body>");
             out.println("</html>");
             */
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            // String x1 = (String) session.getAttribute("uid");
            if (session.getAttribute("useID") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                rd.forward(request, response);
            }
            
            p1 = request.getParameter("Id");
            p2 = request.getParameter("Reg_Date");
            p3 = request.getParameter("Full_Name");
            p4 = request.getParameter("Initial_Name");
            p5 = request.getParameter("bDay");
            p6 = request.getParameter("Race");
            p7 = request.getParameter("Religion");
            p8 = request.getParameter("NIC");
            p9 = request.getParameter("Address");
            p10 = request.getParameter("Land_Phone");
            p11 = request.getParameter("Mobile_Phone1");
            p12 = request.getParameter("Mobile_Phone1");
            p13 = request.getParameter("Fax");
            p14 = request.getParameter("email");
            p15 = request.getParameter("school");
            p16 = request.getParameter("slm");
            p17 = request.getParameter("dlm");
            
            ProsedeurControls pc = new ProsedeurControls();
            String para1 = "('" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" +p17 +"')";
            pc.callProc("insertStudentData", para1);
            
            PasswordEncoding pe = new PasswordEncoding();
            passWord = pe.Encode(p1);
            
            String para2 ="('" + p1 + "','" + passWord +"')";
            pc.callProc("insertPW", para2);
            
            RequestDispatcher rd = request.getRequestDispatcher("/ProssesSucsses.jsp");
            rd.forward(request, response);
            // processRequest(request, response);
            
            // processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(StudentRegistation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
