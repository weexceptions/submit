package com.pro.model;
 
 /**
  *
  * @author Akshay
  */
 public class Disease {
     private String disease_id;
     private String symptoms;
     private String prevention;
     private String cure;
     private String diseaseName;
 
     @Override
     public String toString() {
         return "disease{" + "disease_id=" + disease_id + ", symptoms=" + symptoms + ", prevention=" + prevention + ", cure=" + cure + ", diseaseName=" + diseaseName + '}';
     }
 
     
     public Disease(String disease_id, String symptoms, String prevention, String cure, String diseaseName) {
         this.disease_id = disease_id;
         this.symptoms = symptoms;
         this.prevention = prevention;
         this.cure = cure;
         this.diseaseName = diseaseName;
     }
     
     public String getDisease_id() {
         return disease_id;
     }
 
    public void setDisease_id(String disease_id) {
         this.disease_id = disease_id;
     }
 
     public String getSymptoms() {
         return symptoms;
     }
 
     public void setSymptoms(String symptoms) {
         this.symptoms = symptoms;
     }
 
     public String getPrevention() {
         return prevention;
     }
 
     public void setPrevention(String prevention) {
         this.prevention = prevention;
     }
 
     public String getCure() {
         return cure;
     }
 
     public void setCure(String cure) {
         this.cure = cure;
     }
 
     public String getDiseaseName() {
         return diseaseName;
     }
 
     public void setDiseaseName(String diseaseName) {
         this.diseaseName = diseaseName;
     }
     
 }
