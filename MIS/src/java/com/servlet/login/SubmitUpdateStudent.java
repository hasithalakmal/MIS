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
import java.sql.SQLException;
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
public class SubmitUpdateStudent extends HttpServlet {

    String userid, parameter;
    ResultSet result;
    String p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17;

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
            out.println("<title>Servlet SubmitUpdateStudent</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubmitUpdateStudent at " + request.getContextPath() + "</h1>");
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
        p3 = request.getParameter("Full_Name");
        p4 = request.getParameter("Initial_Name");
        p5 = request.getParameter("Race");
        p6 = request.getParameter("Religion");
        p7 = request.getParameter("NIC");
        p8 = request.getParameter("Address");
        p9 = request.getParameter("Land_Phone");
        p10 = request.getParameter("Mobile_Phone1");
        p11 = request.getParameter("Mobile_Phone1");
        p12 = request.getParameter("Fax");
        p13 = request.getParameter("school");
        p14 = request.getParameter("slm");
        p15 = request.getParameter("dlm");
        p16= request.getParameter("bDay");
        p17 = request.getParameter("email");

        ProsedeurControls pc = new ProsedeurControls();
        String para1 = "('" + p1 + "','"  + p3 + "','" + p4 + "','" + p5 + "','" + p6 + "','" + p7 + "','" + p8 + "','" + p9 + "','" + p10 + "','" + p11 + "','" + p12 + "','" + p13 + "','" + p14 + "','" + p15 + "','" + p16 + "','" + p17 + "')";
       pc.callProc("updateStudent", para1);

        
        request.setAttribute("massage", "Student is updated........");
       RequestDispatcher rd = request.getRequestDispatcher("/valid.jsp");
       rd.forward(request, response);
       // PrintWriter pr = response.getWriter();
        // pr.write("helloooooooooooooo");
     //   pr.write(para1);

        // processRequest(request, response);
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
