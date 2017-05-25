package com.pro.model;
 
 /**
  *
  * @author Akshay
  */
 public class Doctor {
     
  private int doctorId;
  private String location ;
  private String specialist;
 
     @Override
     public String toString() {
         return "Doctor{" + "doctorId=" + doctorId + ", location=" + location + ", specialist=" + specialist + '}';
     }
 
     public Doctor(int doctorId, String location, String specialist) {
         this.doctorId = doctorId;
         this.location = location;
         this.specialist = specialist;
     }
 
     public int getDoctorId() {
         return doctorId;
     }
 
     public void setDoctorId(int doctorId) {
         this.doctorId = doctorId;
     }
 
     public String getLocation() {
         return location;
     }
 
     public void setLocation(String location) {
         this.location = location;
     }
 
     public String getSpecialist() {
         return specialist;
     }
 
     public void setSpecialist(String specialist) {
         this.specialist = specialist;
     }
 
 }
