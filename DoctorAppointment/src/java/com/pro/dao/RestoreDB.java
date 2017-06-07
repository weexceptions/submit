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
        for (int i = 0; i < 3; i++) {
            try{
                PreparedStatement ps= con.prepareStatement("TRUNCATE TABLE AKSH.APPOINTMENT");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("TRUNK fail");
            }
             try{
                PreparedStatement ps= con.prepareStatement("DROP TABLE AKSH.APPOINTMENT");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("DROP fail");
            }
             try{
                PreparedStatement ps= con.prepareStatement("TRUNCATE TABLE AKSH.DISEASE");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("TRUNK fail");
            }
             try{
                PreparedStatement ps= con.prepareStatement("DROP TABLE AKSH.DISEASE");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("DROP fail");
            }
              try{
                PreparedStatement ps= con.prepareStatement("TRUNCATE TABLE AKSH.DOCTOR");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("TRUNK fail");
            } 
              try{
                PreparedStatement ps= con.prepareStatement("DROP TABLE AKSH.DOCTOR");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("DROP fail");
            } 
              try{
                PreparedStatement ps= con.prepareStatement("TRUNCATE TABLE AKSH.PATIENT");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("TRUNK fail");
            } 
              try{
                PreparedStatement ps= con.prepareStatement("DROP TABLE AKSH.PATIENT");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("DROP fail");
            } 
              try{
                PreparedStatement ps= con.prepareStatement("TRUNCATE TABLE AKSH.USERDETAIL");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("TRUNK fail");
            }
              try{
                PreparedStatement ps= con.prepareStatement("DROP TABLE AKSH.USERDETAIL");
                ps.execute();
                Thread.sleep(10);
            } catch(Exception e){
                System.out.println("DROP fail");
            } 
        }
        
        for (int i = 0; i < 5; i++) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ex) {
                System.out.println("Thread.sleep(1000); ERROR");
            }
        {
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
                    "DS_ID INT GENERATED ALWAYS AS IDENTITY,\n" +
                    "DISEASE_NAME VARCHAR(15),\n" +
                    "SYMPTOMS varchar(100),\n" +
                    "PREVENTION varchar(100),\n" +
                    "CURE varchar(50),\n" +
                    "PRIMARY KEY(DS_ID)\n" +
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
            i7 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +"	VALUES ('miwagh', 'MUMBAI', 'PLASTIC SURGEON')");
            i7.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i8;
        try {
            i8 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('gadatta', 'DELHI', 'CARDIOLOGISTS')");
            i8.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i9;
        try {
            i9 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('aschoksey', 'DELHI', 'COSMETIC DENTIST')");
              i9.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i10;
        try {
            i10 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('gawalia', 'KOLKATA', 'DENTAL SURGEON')");
               i10.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i11;
        try {
            i11 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('supradhan', 'KOLKATA', 'IMPLANT DENTIST')");
                        i11.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }

            PreparedStatement i12;
        try {
            i12 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('vinaraynan', 'MUMBAI', 'DENTAL IMPLANT')");
             i12.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           
            PreparedStatement i13;
        try {
            i13 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('prshah', 'MUMBAI', 'ENDOSCOPIC SURGERY')");
             i13.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           

            PreparedStatement i14;
        try {
            i14 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('gaudatta', 'MUMBAI', 'UROGYNECOLOGY')");
            i14.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i15;
        try {
            i15 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('sohali', 'DELHI', 'LAPAROSCOPIC SURGERY')");
              i15.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i16;
        try {
            i16 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('ladave', 'DELHI', 'OBSTETRICS')");
            i16.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i17;
        try {
            i17 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('gadatta', 'MUMBAI', 'UROGYNECOLOGY')");
               i17.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i18;
        try {
            i18 = con.prepareStatement("INSERT INTO DOCTOR (D_ID, LOCATION, SPECIALIST) \n" +
                    "	VALUES ('soali', 'DELHI', 'LAPAROSCOPIC SURGERY')");
             i18.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
//       

            PreparedStatement i19;
        try {
            i19 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('milind1234', 'MILIND', 'WAGH', '10-8-1969', 'milingwagh@gmail.com', 'MUMBAI CENTRAL', '8655173011', NULL, 'miwagh')");
              i19.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          PreparedStatement i20;
        try {
            i20 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '2-17-1978', 'dattagautam@gmail.com', 'BORIVALI(WEST', '9833007346', NULL, 'gadatta')");
            i20.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i21;
        try {
            i21 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '2-17-1978', 'dattagautam@gmail.com', 'BORIVALI(WEST', '9833007346', NULL, 'gadatta')");
            i21.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i22;
        try {
            i22 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('ashni1234', 'ASHNI', 'CHOKSEY', '8-20-1987', 'chokseyashni@gmail.com', 'MALAD(EAST)', '9833337346', NULL, 'aschoksey');");
        i22.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i23;
        try {
            i23 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gaurav1234', 'GAURAV', 'WALIA', '4-8-1984', 'waliagaurav@gmail.com', 'CHURCHGATE', '9988337346', NULL, 'gawalia');");
        i23.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i24;
        try {
            i24 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('suchetan1234', 'SUCHETAN', 'PRADHAN', '1-15-1967', 'suchetanpradhan@gmail.com', 'ABADA', '9098765768', NULL, 'supradhan');");
        i24.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i25;
        try {
            i25 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('vinod1234', 'VINOD', 'NARAYNAN', '5-30-1987', 'vinodnaraynan@gmail.com', 'AMBIKA KALNA', '9897678760', NULL, 'vinaraynan');");
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
                    "	VALUES ('laila1234', 'LAILA', 'DAVE', '7-11-1991', 'lailadave@gmail.com', 'AMTA', '9234578901', NULL, 'ladave');");
        i27.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i28;
        try {
            i28 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('gautam1234', 'GAUTAM', 'DATTA', '3-23-1990', 'gautamdatta@gmail.com', 'KALYAN', '9897654320', NULL, 'gadatta');");
        i28.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i29;
        try {
            i29 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
                    "	VALUES ('sohel1234', 'SOHEL', 'ALI', '12-31-1989', 'sohelali@gmail.com', 'BADLAPUR', '9098765456', NULL, 'soali');");
         i29.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        //New section
        {
                PreparedStatement i1;
        try {
            i1 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('123123', 'Priyanka', 'Kalakoti', '1998-02-24', 'pinkysingh@gmail.com', 'vasai road(west)', '9833456123', 'priyaa', NULL)");
            i1.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i2;
        try {
            i2 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('aksh123', 'Akshay', 'Sonie', '1995-02-17', 'akshaysonie@gmail.com', 'Borivali (east)', '9833704511', 'aksh', NULL)");
            i2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i3;
        try {
            i3 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('sunny123', 'Sunny', 'Singh', '1996-02-22', 'sunny@gmail.com', 'Malad (EAST)', '9833307346', 'sunny', NULL)");
            i3.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i4;
        try {
            i4 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('smruti123', 'Smruti', 'Jadhav', '1997-08-20', 'smrutijadhav@gmail.com', 'Nallasopara (West)', '9769241231', 'smruti', NULL)");
            i4.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i5;
        try {
            i5 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('kirti123', 'Kirti', 'Rupnoor', '1997-05-04', 'kirtirupnoor@gmail.com', 'Bandra (East)', '8655512345', 'kirti', NULL)");
            i5.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i6;
        try {
            i6 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('sid123', 'Siddhesh', 'Modak', '1995-05-05', 'siddheshmodak@gmail.com', 'Airoli, new mumbai', '8970745451', 'sid', NULL)");
            i6.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i7;
        try {
            i7 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('niru123', 'Niranjan', 'Sawant', '1994-02-24', 'niranjansawant@gmail.com', 'Kandivali(west)', '9819811545', 'niru', NULL)");
            i7.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            PreparedStatement i8;
        try {
            i8 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('karan123', 'Karan', 'Yadav', '1997-04-13', 'karanyadav@gmail.com', 'Vasai Road (west)', '9096115858', 'karan', NULL)");
            i8.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i9;
        try {
            i9 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('siddhesh123', 'Siddhesh', 'Parab', '1998-06-21', 'siddheshparab@gmail.com', 'Mira road', '982935099', 'siddhesh', NULL)");
              i9.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i10;
        try {
            i10 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('surendra123', 'Surendra', 'Singh', '1995-05-24', 'singhsurendra@gmail.com', 'Bhayandar', '9833981922', 'surendra', NULL)");
               i10.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i11;
        try {
            i11 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('harshal123', 'Harshal', 'Pandya', '2001-04-08', 'harshalpandya@gmail.com', 'Mira road', '9819964641', 'harshal', NULL)");
                        i11.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }

            PreparedStatement i12;
        try {
            i12 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('mina123', 'Meenakshi', 'Singh', '1997-04-10', 'meenakshisingh@gmail.com', 'Goregaon', '9763325818', 'meenakshi', NULL)");
             i12.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           
            PreparedStatement i13;
        try {
            i13 = con.prepareStatement("INSERT INTO USERDETAIL (PASSWORD, FNAME, LNAME, DOB, EMAIL, ADDRESS, PHONE, P_ID, D_ID) \n" +
"	VALUES ('vivek123', 'Vivek', 'Kanojiya', '1996-06-01', 'vivekkanojiya@gmail.com', 'Vile Parle', '9862343488', 'vivek', NULL)");
             i13.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
           

            PreparedStatement i14;
        try {
            i14 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('priyaa', '20-39', 'female')");
            i14.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i15;
        try {
            i15 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('aksh', '20-39', 'male')");
              i15.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
            PreparedStatement i16;
        try {
            i16 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('sunny', '20-39', 'male')");
            i16.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i17;
        try {
            i17 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('smruti', '20-39', 'male')");
               i17.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            PreparedStatement i18;
        try {
            i18 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('kirti', '20-39', 'male')");
             i18.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
//       

            PreparedStatement i19;
        try {
            i19 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('sid', '20-39', 'male')");
              i19.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          PreparedStatement i20;
        try {
            i20 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('niru', '20-39', 'male')");
            i20.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i21;
        try {
            i21 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('karan', '20-39', 'male')");
            i21.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i22;
        try {
            i22 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('siddhesh', 'Below 19', 'male')");
        i22.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i23;
        try {
            i23 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('surendra', '20-39', 'male')");
        i23.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i24;
        try {
            i24 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('harshal', 'Below 19', 'male')");
        i24.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i25;
        try {
            i25 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('meenakshi', '20-39', 'female')");
        i25.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i26;
        try {
            i26 = con.prepareStatement("INSERT INTO PATIENT (P_ID, AGEGROUP, GENDER) \n" +
"	VALUES ('vivek', '20-39', 'male')");
         i26.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        }
        {
              PreparedStatement i225;
        try {
            i225 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('sunny', 'aarao', 'Test1', '2017-06-14', 2, 'Mumbai', 'Requested')");
        i225.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            PreparedStatement i226;
        try {
            i226 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('sunny', 'aarao', 'Test2', '2017-06-14', 5, 'Mumbai', 'REJECTED'");
         i226.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         PreparedStatement i227;
        try {
            i227 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('aksh', 'aarao', 'Continuous Loose Motion', '2017-06-08', 4, 'Mumbai', 'Requested')");
         i227.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         PreparedStatement i228;
        try {
            i228 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('sunny', 'kagrawal', 'Vomit, Loose motion', '2017-06-10', 7, 'Delhi', 'ACCEPTED')");
         i228.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         PreparedStatement i229;
        try {
            i229 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('priyaa', 'kagrawal', 'Redness and itching in eye', '2017-06-11', 4, 'Mumbai', 'ACCEPTED')");
         i229.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
         PreparedStatement i230;
        try {
            i230 = con.prepareStatement("INSERT INTO AKSH.APPOINTMENT (P_ID, D_ID, DESCRIPTION, A_DATE, A_TIME, LOCATION, STATUS) \n" +
"	VALUES ('smruti', 'kagrawal', 'Twwth decaying', '2017-06-12', 3, 'Mumbai', 'REJECTED')");
         i230.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RestoreDB.class.getName()).log(Level.SEVERE, null, ex);
        }
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
