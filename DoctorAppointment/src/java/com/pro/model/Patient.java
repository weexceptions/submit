/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.model;

/**
 *
 * @author Akshay
 */
public class Patient  {
    
    private String pid;
    private String ageGroup;
    private String gender;

    @Override
    public String toString() {
        return "Patient{" + "pid=" + pid + ", ageGroup=" + ageGroup + ", gender=" + gender + '}';
    }

    public Patient(String pid, String ageGroup, String gender) {
        this.pid = pid;
        switch (ageGroup) {
            case "1":
                this.ageGroup = "Below 19";
                break;
            case "2":
                this.ageGroup = "20-39";
                break;
            case "3":
                this.ageGroup = "40-59";
                break;
            case "4":
                this.ageGroup = "60-79";
                break;
            case "5":
                this.ageGroup = "80 Above";
                break;
            default:
                System.out.println("Invalid Age Group");
        }
        this.gender = gender;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
}
