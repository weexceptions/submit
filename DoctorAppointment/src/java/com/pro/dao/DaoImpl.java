/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.pro.model.*;
import com.sun.istack.internal.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;

/**
 *
 * @author Akshay
 */
public class DaoImpl implements UserDAO{
    Connection con = DBconnection.getConnection();
    @Override
    public boolean createUser(User u,Patient p) {
        boolean flag = false;
        
        try {
            PreparedStatement ps = con.prepareStatement("insert into PATIENT (P_ID,AGEGROUP,GENDER) values (?,?,?)");
            ps.setString(1, p.getPid());
            ps.setString(2, p.getAgeGroup());
            ps.setString(3, p.getGender());
            ps.execute();
            flag=true;
            System.out.println("Insert Successfull in PATIENT");
        } catch (Exception e) {
            flag=false;
            System.out.println("Insert Failed in PATIENT");
            System.out.println(e.getMessage());
        }
        try {
            PreparedStatement ps = con.prepareStatement("insert into USERDETAIL (PASSWORD,FNAME,LNAME,DOB,EMAIL,ADDRESS,PHONE,P_ID) values (?,?,?,?,?,?,?,?)");
            ps.setString(1, u.getPassword());
            ps.setString(2, u.getFirstName());
            ps.setString(3, u.getLastName());
            ps.setString(4,u.getDob());
            ps.setString(5, u.getEmailId());
            ps.setString(6, u.getAddress());
            ps.setString(7, u.getPhone());
            ps.setString(8, p.getPid());
            ps.execute();
            flag=true;
            System.out.println("Insert Successfull in USERSDETAILS");
        } catch (Exception e) {
            flag=false;
            System.out.println("Insert Failed in USERSDETAILS");
            System.out.println(e.getMessage());
            //Logger.getLogger(daoImpl.class.getName()).log(Level.SEVERE,null,e);
        }
        
        return flag;
    }

    @Override
    public User getUserById(int userId) {
    User user= null;
    
    return user;
    }

    @Override
    public boolean updateUser(int userId, User user) {
    boolean flag=false;
    //insert code to update
        return flag;   
    }

    @Override
    public boolean deleteUser(int userId) {
    boolean flag=false;
    //insert code to delete
        return flag;   
    
    }

    @Override
    public boolean getLogin(String id, String pass) {
        boolean r=false;
        id.toLowerCase();
        pass.toLowerCase();
        String sql =("Select P_ID,password from USERDETAIL ");
        Statement statement=null;
        ResultSet resultSet=null;
        String s1;
        String s2;
        try {
            statement = con.createStatement();
            System.out.println("Create Stttttttt");
           resultSet = statement.executeQuery(sql);
            System.out.println("Sque Exe");
            while (resultSet.next()){
            s1=resultSet.getString("P_ID");
            s2=resultSet.getString("password");
            s1.toLowerCase();
            s2.toLowerCase();
                System.out.println(s1+"---"+s2);
                System.out.println(id+"===="+pass);
            
                if (id.equals(s1.toLowerCase())) {
                    System.out.println("Correct ID.............");
           
            if(pass.equals(s2)){
                System.out.println("Login pass*****");
                r=true;
                break;
            }
                }
            else{
                System.out.println("Not matchs");
            }
        }
        } catch (SQLException ex) {
            System.out.println("Exception ");             
        }
        return r;
    
    }

    @Override
    public boolean checkPassword(String id, String email, String phone) {
        boolean r=false;
        String sql =("Select P_ID,EMAIL,PHONE from USERDETAIL ");
        Statement statement=null;
        ResultSet resultSet=null;
        String s1;
        String s2;
        String s3;
        id=id.toLowerCase();
        try {
            statement = con.createStatement();
           resultSet = statement.executeQuery(sql);
            System.out.println("Sque Exe");
            while (resultSet.next()){
                s1=resultSet.getString("P_ID");
                s2=resultSet.getString("EMAIL");
                s3=resultSet.getString("PHONE");
                System.out.println("ID "+id+"---"+s1+"\nMail "+email+"----"+s2+"\nPhone "+phone+"----"+s3);
                if (s1.toLowerCase().equals(id.toLowerCase())) {
                    if (s2.equals(email)) {
                        if (s3.equals(phone)) {
                            r=true;
                            System.out.println("MAthcx");
                            break;
                        }
                        else{
                            System.out.println("Phone error");
                        }
                    }
                    else{
                        System.out.println("email error");
                    }
                }
                else{
                    System.out.println("id error");
                }
            }
        } catch (SQLException ex) {
            System.out.println("SQLException "+ex.getMessage());             
        }
        return r;
    }

    @Override
    public boolean updatePassword(String pass) {
        boolean r=false;
        String sql =("Insert into USERDETAIL (PASSWORD) Values (?) ");
         PreparedStatement ps;
        try {
            ps = con.prepareStatement("Insert into USERDETAIL (PASSWORD) Values (?) ");
            ps.setString(1, pass);
            ps.execute();
            r=true;
        } catch (SQLException ex) {
            System.out.println("INSERT FAILED");
        }
            System.out.println("Insert Successfull in USERSDETAILS");
       return r;
    }
}
