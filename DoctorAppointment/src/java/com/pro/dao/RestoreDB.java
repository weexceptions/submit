/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sunny
 */
public class RestoreDB {
    Connection con = DBconnection.getConnection();
    public boolean reSet() {
        boolean flag = false;
        
            PreparedStatement t1;
        try {
            t1 = con.prepareStatement("CREATE TABLE USERDETAIL (\n" +
                    "UID INT GENERATED ALWAYS AS IDENTITY,\n" +
                    "PASSWORD VARCHAR(30),\n" +
                    "FNAME VARCHAR(15),\n" +
                    "LNAME VARCHAR(15),\n" +
                    "DOB varchar(10),\n" +
                    "EMAIL VARCHAR(30),\n" +
                    "ADDRESS VARCHAR(100),\n" +
                    "PHONE VARCHAR(10),\n" +
                    "P_ID VARCHAR(20),\n" +
                    "D_ID VARCHAR(20),\n" +
                    "PRIMARY KEY(UID),\n" +
                    "UNIQUE (EMAIL)\n" +
                    ")");
            
            t1.executeUpdate();
        } catch (SQLException ex) {
            
        }
            PreparedStatement t2;
        try {
            t2 = con.prepareStatement("CREATE TABLE Patient (\n" +
                    "P_ID VARCHAR(20),\n" +
                    "AGEGROUP VARCHAR(10),\n" +
                    "GENDER VARCHAR(8),\n" +
                    "PRIMARY KEY(P_ID)\n" +
                    ")");
            
            t2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement t3;
        try {
            t3 = con.prepareStatement("CREATE TABLE DOCTOR (\n" +
                    "D_ID VARCHAR(20),\n" +
                    "LOCATION VARCHAR(10),\n" +
                    "SPECIALIST VARCHAR(100),\n" +
                    "PRIMARY KEY(D_ID)\n" +
                    ")");
            t3.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement t4;
        try {
            t4 = con.prepareStatement("CREATE TABLE APPOINTMENT (\n" +
                    "A_ID INT GENERATED ALWAYS AS IDENTITY,\n" +
                    "P_ID VARCHAR(20) references Patient(P_ID),\n" +
                    "D_ID VARCHAR(20) references DOCTOR(D_ID),\n" +
                    "DESCRIPTION VARCHAR(100),\n" +
                    "A_DATE DATE,\n" +
                    "A_TIME INT DEFAULT 0,\n" +
                    "LOCATION VARCHAR(10),\n" +
                    "STATUS VARCHAR(10),\n" +
                    "PRIMARY KEY(A_ID)\n" +
                    ")");
            t4.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            PreparedStatement t5 = con.prepareStatement("create table DISEASE(\n" +
                    "DS_ID integer,\n" +
                    "DISEASE_NAME VARCHAR(15),\n" +
                    "SYMPTOMS varchar(100),\n" +
                    "PREVENTION varchar(100),\n" +
                    "CURE varchar(50)\n" +
                    ")");
            t5.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            PreparedStatement a1 = con.prepareStatement("ALTER TABLE Patient ADD FOREIGN KEY (A_ID) REFERENCES APPOINTMENT (A_ID)");
            a1.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement a2;
        try {
            a2 = con.prepareStatement("ALTER TABLE DOCTOR ADD FOREIGN KEY (A_ID) REFERENCES APPOINTMENT (A_ID)");
            a2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i1;
        try {
            i1 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" + "	VALUES ('mbhai', 'Mumbai', 'Bone Breaker')");
            i1.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i2;
        try {
            i2 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('maidr', 'Munna', 'Bhai', '1995-08-15', 'munnabhai@gmail.com', 'Borivali-West', '8888888888', NULL, 'mbhai')");
            i2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i3;
        try {
            i3 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('aarao', 'MUMBAI', 'PLASTIC SURGERY')");
            i3.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i4;
        try {
            i4 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('aamod1234', 'AAMOD', 'RAO', '13-04-1968', 'aamodrao@gmail.com', 'BANDRA(WEST)', '9096118481', NULL, 'aarao')");
            i4.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i5;
        try {
            i5 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('kagrawal', 'BANGLORE', 'AESTHETIC PLASTIC SURGERY')");
            i5.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i6;
        try {
            i6 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('kapil1234', 'KAPIL', 'AGRAWAL', '24-02-1979', 'agrawalkapil@yahoo.co.in', 'KANDIVALI(EAST)', '9833307346', NULL, 'kagrawal')");
            i6.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
//            PreparedStatement i = con.prepareStatement("");
//            i.executeUpdate();
//            PreparedStatement i = con.prepareStatement("");
//            i.executeUpdate();
//            PreparedStatement i = con.prepareStatement("");
//            i.executeUpdate();
//            PreparedStatement i = con.prepareStatement("");
//            i.executeUpdate();
//            
            flag=true;
            System.out.println("Creation Insersion Done");
//        } catch (SQLException e) {
//            flag=false;
//            System.out.println("Insert Failed Due to an ERROR:");
//            System.out.println(e.getMessage());
//        }
        
        return flag;
    }
}
