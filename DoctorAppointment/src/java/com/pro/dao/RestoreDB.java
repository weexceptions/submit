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
            PreparedStatement i7;
        try {
            i7 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +"	VALUES ('MIWAGH', 'MUMBAI', 'PLASTIC SURGEON')");
            i7.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i8;
        try {
            i8 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('GADATTA', 'DELHI', 'CARDIOLOGISTS')");
            i8.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i9;
        try {
            i9 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('ASCHOKSEY', 'DELHI', 'COSMETIC DENTIST')");
              i9.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i10;
        try {
            i10 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('GAWALIA', 'KOLKATA', 'DENTAL SURGEON')");
               i10.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i11;
        try {
            i11 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('SUPRADHAN', 'KOLKATA', 'IMPLANT DENTIST')");
                        i11.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }

            PreparedStatement i12;
        try {
            i12 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('VINARAYNAN', 'MUMBAI', 'DENTAL IMPLANT')");
             i12.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           
            PreparedStatement i13;
        try {
            i13 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('PRSHAH', 'MUMBAI', 'ENDOSCOPIC SURGERY')");
             i13.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           

            PreparedStatement i14;
        try {
            i14 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('GAUDATTA', 'MUMBAI', 'UROGYNECOLOGY')");
            i14.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i15;
        try {
            i15 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('SOHALI', 'DELHI', 'LAPAROSCOPIC SURGERY')");
              i15.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i16;
        try {
            i16 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('LADAVE', 'DELHI', 'OBSTETRICS')");
            i16.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i17;
        try {
            i17 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('GADATTA', 'MUMBAI', 'UROGYNECOLOGY')");
               i17.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i18;
        try {
            i18 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('SOALI', 'DELHI', 'LAPAROSCOPIC SURGERY')");
             i18.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
//       

            PreparedStatement i19;
        try {
            i19 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('milind1234', 'MILIND', 'WAGH', '10-8-1969', 'milingwagh@gmail.com', 'MUMBAI CENTRAL', '8655173011', NULL, 'MIWAGH')");
              i19.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          PreparedStatement i20;
        try {
            i20 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '2-17-1978', 'dattagautam@gmail.com', 'BORIVALI(WEST', '9833007346', NULL, 'GADATTA')");
            i20.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i21;
        try {
            i21 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '2-17-1978', 'dattagautam@gmail.com', 'BORIVALI(WEST', '9833007346', NULL, 'GADATTA')");
            i21.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i22;
        try {
            i22 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('ashni1234', 'ASHNI', 'CHOKSEY', '8-20-1987', 'chokseyashni@gmail.com', 'MALAD(EAST)', '9833337346', NULL, 'ASCHOKSEY');");
        i22.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i23;
        try {
            i23 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gaurav1234', 'GAURAV', 'WALIA', '4-8-1984', 'waliagaurav@gmail.com', 'CHURCHGATE', '9988337346', NULL, 'GAWALIA');");
        i23.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i24;
        try {
            i24 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('suchetan1234', 'SUCHETAN', 'PRADHAN', '1-15-1967', 'suchetanpradhan@gmail.com', 'ABADA', '9098765768', NULL, 'SUPRADHAN');");
        i24.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i25;
        try {
            i25 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('vinod1234', 'VINOD', 'NARAYNAN', '5-30-1987', 'vinodnaraynan@gmail.com', 'AMBIKA KALNA', '9897678760', NULL, 'VINARAYNAN');");
        i25.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i26;
        try {
            i26 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('pranay1234', 'PRANAY', 'SHAH', '7-9-1966', 'pranayshah@gmail.com', 'BADKULLA', '9876787601', NULL, 'PRSHAH');");
         i26.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           
            PreparedStatement i27;
        try {
            i27 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('laila1234', 'LAILA', 'DAVE', '7-11-1991', 'lailadave@gmail.com', 'AMTA', '9234578901', NULL, 'LADAVE');");
        i27.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i28;
        try {
            i28 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '3-23-1990', 'gautamdatta@gmail.com', 'KALYAN', '9897654320', NULL, 'GADATTA');");
        i28.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i29;
        try {
            i29 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('sohel1234', 'SOHEL', 'ALI', '12-31-1989', 'sohelali@gmail.com', 'BADLAPUR', '9098765456', NULL, 'SOALI');");
         i29.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           

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
