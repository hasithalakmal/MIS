/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.ProsedeurControls;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class SubmitUpdateStaff extends HttpServlet {

    String userid, parameter;
    ResultSet result;
     String p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31,p32,p33,p34;

    
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubmitUpdateStaff</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubmitUpdateStaff at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
         HttpSession session = request.getSession();
        if (session.getAttribute("useID") == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }

        p1 = request.getParameter("Id");
            p2 = request.getParameter("accademic");
           // p3 = request.getParameter("Reg_Date");
            p4 = request.getParameter("state");
            p5 = request.getParameter("Full_Name");
            p6 = request.getParameter("Initial_Name");
            p7 = request.getParameter("bDay");
            p8 = request.getParameter("Race");
            p9 = request.getParameter("Religion");
            p10 = request.getParameter("NIC");
            p11= request.getParameter("Address");
            p12 = request.getParameter("Land_Phone");
            p13 = request.getParameter("Mobile_Phone1");
            p14 = request.getParameter("Mobile_Phone1");
            p15 = request.getParameter("Fax");
            p16 = request.getParameter("email");
            p17 = request.getParameter("occupation");
            p18 = request.getParameter("office_phone");
            p19 = request.getParameter("Office_address");
            p20 = request.getParameter("education1");
            p21 = request.getParameter("education2");
            p22 = request.getParameter("education3");
            p23 = request.getParameter("education4");
            p24 = request.getParameter("education5");
            p25 = request.getParameter("education6");
            p26 = request.getParameter("education7");
            p27 = request.getParameter("education8");
            p28 = request.getParameter("education9");
            p29 = request.getParameter("education10");
            p30 = request.getParameter("student");
            p31 = request.getParameter("stuid");
            p32 = request.getParameter("tss");
            p33 = request.getParameter("tssid");
            p34 = request.getParameter("tst");
            
            
        
        
        ProsedeurControls pc = new ProsedeurControls();
        String para1 = "('" + p1 + "','" + p2 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" + p17 + "','" + p18 + "','" + p19 + "','" + p20 + "','" + p21 + "','" + p22 + "','" + p23 + "','" + p24 + "','" + p25 + "','" + p26 + "','" + p27 + "','" + p28 + "','" + p29 + "','" + p30 + "','" + p31+ "','"+p32 + "','" + p33 + "','"+p34+ "')";
        pc.callProc("updateStaff", para1);
        
       // PrintWriter pr = response.getWriter();
       // pr.write("helloooooooooooooo");
       // pr.write(para1);
         request.setAttribute("massage", "Staff is updated........");
       RequestDispatcher rd = request.getRequestDispatcher("/valid.jsp");
       rd.forward(request, response);
        //processRequest(request, response);
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
