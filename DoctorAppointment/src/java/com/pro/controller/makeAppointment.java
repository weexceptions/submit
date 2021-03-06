/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.controller;

import com.pro.dao.DaoImpl;
import com.pro.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sunny
 */
public class makeAppointment extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            System.out.println("makeAppointment.do exe started");
            String pid=request.getParameter("txtpid");
            String did=request.getParameter("txtdid");
            String desc=request.getParameter("txtdesc");
            String aDate = request.getParameter("txtdate");
            String aTime = request.getParameter("txttime");
            String Location=request.getParameter("txtlocation");
            String status = "Requested";
            System.out.println("pid "+pid+" did "+did+" desc "+desc+" date "+aDate+" time "+aTime+" loc "+Location+" status "+status);
            UserDAO userdao = new DaoImpl();
            if (userdao.bookAppointment(pid, did, desc, aDate, aTime, Location, status)) {
                System.out.println("Sucess if condition");
                RequestDispatcher rd = request.getRequestDispatcher("appointsuccess.jsp");
                request.setAttribute("auser", pid.toUpperCase());
               
                 rd.forward(request, response);
            }
            else{
                System.out.println("Else block");
                RequestDispatcher rd = request.getRequestDispatcher("appointment.jsp");
                request.setAttribute("auser", pid.toUpperCase());
                rd.forward(request, response);
            }
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
        processRequest(request, response);
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