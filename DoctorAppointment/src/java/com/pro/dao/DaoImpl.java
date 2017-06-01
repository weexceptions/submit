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
import java.util.ArrayList;
import java.util.List;
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
    public boolean deleteUser(String userId) {
    boolean flag=false;
        PreparedStatement ps=null;
        PreparedStatement ps2=null;
        try {
            ps = con.prepareStatement("DELETE FROM USERDETAIL WHERE P_ID = ?");
            ps2 = con.prepareStatement("DELETE FROM PATIENT WHERE P_ID = ?");
            ps.setString(1, userId);
            ps2.setString(1, userId);
            System.out.println("First ps "+ps.executeUpdate());
            System.out.println("Second ps2 "+ps2.executeUpdate());
            flag=true;
            
        } catch (SQLException ex) {
            System.out.println("Failed To Delete");
        }
          
        return flag;   
    
    }

    @Override
    public boolean getLogin(String id, String pass) {
        boolean r=false;
        id.toLowerCase();
        pass.toLowerCase();
        String sql =("Select P_ID,password from USERDETAIL where P_ID is NOT NULL");
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
                System.out.println("...........next user: "+id+" pass: "+pass+"__ DB:__"+s1+" & "+s2);
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
        String sql =("Select P_ID,EMAIL,PHONE from USERDETAIL where P_ID is not null");
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
    public boolean updatePassword(String pass,String id) {
        boolean r=false;
         PreparedStatement ps;
        try {
            System.out.println("Update wala id "+id);
            System.out.println("Update wala pass "+pass);
            ps = con.prepareStatement("UPDATE AKSH.USERDETAIL SET PASSWORD = ? WHERE P_ID like ?");
            ps.setString(2,id.trim());
            ps.setString(1, pass);
            int rec = ps.executeUpdate();
            System.out.println("records updated : " + rec);
            System.out.println("Update hogaya");
            r=true;
        } catch (SQLException ex) {
            System.out.println("UPDATE FAILED");
        }
            System.out.println("UPDATE Successfull in USERSDETAILS");
       return r;
    }

    @Override
    public List<DoctorInfo> getAllDrDetails() {
        List<DoctorInfo> drlist = new ArrayList<DoctorInfo>();
     try {
         
         PreparedStatement pstmt = con.prepareStatement("select D_ID from USERDETAIL where D_ID IS NOT NULL");
         System.out.println("Stmt");
         ResultSet rs = pstmt.executeQuery();
         System.out.println("Exe hua");
         String fname,lname,location,specialist;
         while(rs.next())
         {
             String dId=rs.getString(1);
             System.out.println("\n"+dId);
             PreparedStatement ps1 = con.prepareStatement("SELECT FNAME,LNAME FROM USERDETAIL WHERE D_ID = ?");
             ps1.setString(1, dId);
             ResultSet rs1 = ps1.executeQuery();
             PreparedStatement ps2 = con.prepareStatement("SELECT LOCATION,SPECIALIST FROM DOCTOR WHERE D_ID = ?");
             ps2.setString(1, dId);
             ResultSet rs2 = ps2.executeQuery();
             while (rs1.next()) {
                 boolean q=rs2.next();
                 if (q) { }
                 else
                      break;
                 fname=rs1.getString(1);
                 lname=rs1.getString(2);
                 location=rs2.getString(1);
                 specialist=rs2.getString(2);
                 
                 System.out.println("Fname - "+fname+"  lname - "+lname);
                 System.out.println("Location - "+location+"  Spec - "+specialist);
             
             DoctorInfo dr= new DoctorInfo(fname, lname, location, specialist);
             drlist.add(dr);
             }
         }
         
         
     } catch (SQLException ex) {
         System.out.println("Errrrrrrrrr:\n"+ex.getMessage()+"Ennnnnnnnnnnnnn\n\n");
         java.util.logging.Logger.getLogger(DaoImpl.class.getName()).log(Level.SEVERE, null, ex);
     }
     return drlist;
    }

    @Override
    public boolean getLoginDr(String id, String pass) {
        
        boolean r=false;
        id.toLowerCase();
        pass.toLowerCase();
        String sql =("Select D_ID,password from USERDETAIL where D_ID is NOT NULL");
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
            s1=resultSet.getString("D_ID");
            s2=resultSet.getString("password");
            s1.toLowerCase();
            s2.toLowerCase();
                System.out.println("...........next user: "+id+" pass: "+pass+"__ DB:__"+s1+" & "+s2);
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
    public List<AllDoctor> getAllDoctor() {
        List<AllDoctor> allDr = new ArrayList<AllDoctor>();
     try {
         
         PreparedStatement pstmt = con.prepareStatement("select FNAME,LNAME from USERDETAIL where D_ID IS NOT NULL");
         System.out.println("Stmt");
         ResultSet rs = pstmt.executeQuery();
         System.out.println("Exe hua");
         String fname,lname;
         while(rs.next())
         {
             fname=rs.getString(1);
             lname=rs.getString(2);
             System.out.println("Fname - "+fname+"  lname - "+lname);
             AllDoctor dr=new AllDoctor(fname+" "+lname) ;
             allDr.add(dr);
         }        
         
     } catch (SQLException ex) {
         System.out.println("Errrrrrrrrr:\n"+ex.getMessage()+"Ennnnnnnnnnnnnn\n\n");
         java.util.logging.Logger.getLogger(DaoImpl.class.getName()).log(Level.SEVERE, null, ex);
     }
     return allDr;
    }

    @Override
    public String[] viewProfile( String id) {
        String details[] = new String [10];
        try {
         PreparedStatement pstmt = con.prepareStatement("Select * from USERDETAIL where P_ID = ?");
         pstmt.setString(1, id.trim().toLowerCase());
         System.out.println("Stmt Hogaya");
         ResultSet rs = pstmt.executeQuery();
         System.out.println("Excute hua");
         int i=1;
         rs.next();
         while(i<9)
         {
             details[i-1]=rs.getString(i);
             i++;
         }  
         PreparedStatement pstmt2 = con.prepareStatement("Select * from PATIENT where P_ID = ?");
         pstmt2.setString(1, id.trim());
         System.out.println("Stmt2 Hogaya");
         ResultSet rs2 = pstmt2.executeQuery();
         System.out.println("Excute2 hua");
         rs2.next();
         details[8]=rs2.getString(2);
         details[9]=rs2.getString(3).toUpperCase();
         
         
            System.out.println("Array data are");
            for (int j = 0; j < 10; j++) {
                System.out.println("index "+j+" "+details[j]);
            }
     } catch (SQLException ex) {
         System.out.println("Errrrrrrrrr:\n"+ex.getMessage()+"Ennnnnnnnnnnnnn\n\n");
         java.util.logging.Logger.getLogger(DaoImpl.class.getName()).log(Level.SEVERE, null, ex);
     }
        return details;
    }

   
}
    
