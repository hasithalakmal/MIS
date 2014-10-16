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

/**
 *
 * @author Mr.Mic
 */
public class removeComittyMember extends HttpServlet {
    private String staffID;
    private String comityID;
    private String year;
    private String possision;
    private String para1;
    private ResultSet res;

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
            out.println("<title>Servlet removeComittyMember</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet removeComittyMember at " + request.getContextPath() + "</h1>");
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
        
        try {
            ProsedeurControls pc = new ProsedeurControls();
            PrintWriter pr = response.getWriter();

            staffID = request.getParameter("staffID");
            comityID = request.getParameter("comityID");
            year = request.getParameter("year");
           
            
            para1 = "('" +comityID  + "','" + staffID + "','"+year+"')";
            res = pc.callProc("selectInvolveCommity", para1);

            if (res.next()) {

                 pc.callProc("deleteInvolveCommity", para1);
                request.setAttribute("massage", "Behavior is added");
                RequestDispatcher rd = request.getRequestDispatcher("valid.jsp");
                rd.forward(request, response);

            } else {
               
               
                request.setAttribute("massage", "It is exsisting behavior");
                RequestDispatcher rd = request.getRequestDispatcher("Invalid.jsp");
                rd.forward(request, response);
            }
            // processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
