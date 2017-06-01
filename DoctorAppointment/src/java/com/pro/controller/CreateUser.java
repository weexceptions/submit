/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.controller;

import com.pro.model.*;
import com.pro.dao.UserDAO;
import com.pro.dao.DaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ak
 */
public class CreateUser extends HttpServlet {

  
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
        String gender=request.getParameter("txtsex");
        String pid=request.getParameter("txtpid").toLowerCase();
        String agegroup= request.getParameter("txtage");
        
        User user = new User("",fname,lname,pass,dob,Phone,email,Address);
        Patient patient =new Patient(pid, agegroup, gender);
        UserDAO userdao = new DaoImpl();
        
      //  userdao.createUser(user);
        if(userdao.createUser(user,patient)){
                System.out.println("User Record Successfully Inserted");
                RequestDispatcher rd = request.getRequestDispatcher("userhome.jsp");
                request.setAttribute("auser", pid.toUpperCase());
                
                rd.forward(request, response);
            }
            else
            {
                System.out.println("Failed to create User Record");                
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
