/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.login;

import com.MIS.lib.PasswordEncoding;
import com.MIS.lib.PersonIdentifier;
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
public class AdmRegistation extends HttpServlet {

    private String stfID;
    private String ouID;
    private String query;
    private ResultSet res;
    String pass;
    private String RDate;

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
            /* out.println("<!DOCTYPE html>");
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet AdmRegistation</title>");            
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet AdmRegistation at " + request.getContextPath() + "</h1>");
             out.println("</body>");
             out.println("</html>");*/
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
            stfID = request.getParameter("stfID");
            ouID = request.getParameter("ouID");
            RDate = request.getParameter("Reg_Date");

            PersonIdentifier pi = new PersonIdentifier();
            String stfid = pi.getUserType(stfID);
            String outid = pi.getUserType(ouID);

            if (!"adm".equals(outid)) {
                request.setAttribute("massage", "It is not a Admin ID");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);
            }else{
            if (!"stf".equals(stfid)) {
                request.setAttribute("massage", "It is not a Staff ID");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);
            }else{

            ProsedeurControls pc = new ProsedeurControls();
            query = "('" + stfID + "')";
            res = pc.callProc("selectStaffByID", query);

            if (res.next()) {
                query = "('" + ouID+ "','" + RDate  + "','" + stfID + "')";
                pc.callProc("InsertOperationalUsers", query);
                PasswordEncoding pe = new PasswordEncoding();

                try {
                    pass = pe.Encode(ouID);
                } catch (Exception ex) {
                    Logger.getLogger(AdmRegistation.class.getName()).log(Level.SEVERE, null, ex);
                }
                query = "('" + ouID + "','" + pass + "')";
                pc.callProc("insertPW", query);

                RequestDispatcher rd = request.getRequestDispatcher("/admHome.jsp");
                rd.forward(request, response);

            } else {
                request.setAttribute("massage", "Your Staff ID is not correct");
                RequestDispatcher rd = request.getRequestDispatcher("/Invalid.jsp");
                rd.forward(request, response);
            }
            //processRequest(request, response);
        }}} catch (SQLException ex) {
            Logger.getLogger(RCI_Registation.class.getName()).log(Level.SEVERE, null, ex);
        }

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
