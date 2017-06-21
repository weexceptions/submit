/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.controller;

import com.pro.dao.DaoImpl;
import com.pro.dao.UserDAO;
import com.pro.model.Doctor;
import com.pro.model.Patient;
import com.pro.model.User;
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
public class CreateDrUser extends HttpServlet {

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
            
        String fname= request.getParameter("txtfname");
        String lname= request.getParameter("txtlname");
        String pass= request.getParameter("txtpass");
        String dob= request.getParameter("txtdob");
        String email= request.getParameter("txtemail");
        String Address= request.getParameter("txtaddress");
        String Phone= request.getParameter("txtphone");
        String speclist=request.getParameter("txtspec");
        String pid=request.getParameter("txtpid").toLowerCase();
        String location= request.getParameter("txtloc");
//        String utype= request.getParameter("txtDr");
        User user = new User(pid,fname,lname,pass,dob,Phone,email,Address);
        Doctor doctor = new Doctor(0,location, speclist);
        UserDAO userdao = new DaoImpl();
        
      //  userdao.createUser(user);
        if(userdao.createDrUser(user, doctor)){
                System.out.println("User Record Successfully Inserted");
                RequestDispatcher rd = request.getRequestDispatcher("drsignup.jsp");
                 rd.forward(request, response);
            }
            else
            {
                System.out.println("Failed to create Dr User Record");                
                out.println("Failed to Create User ");
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
