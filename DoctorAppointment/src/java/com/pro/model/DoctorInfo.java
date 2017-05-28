/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.model;

/**
 *
 * @author Sunny
 */
public class DoctorInfo {
    private String fname;
    private String lname;
    private String location;
    private String Specialist;

    @Override
    public String toString() {
        return "DoctorInfo{" + "fname=" + fname + ", lname=" + lname + ", location=" + location + ", Specialist=" + Specialist + '}';
    }

    public DoctorInfo(String fname, String lname, String location, String Specialist) {
        this.fname = fname;
        this.lname = lname;
        this.location = location;
        this.Specialist = Specialist;
    }

    public String getSpecialist() {
        return Specialist;
    }

    public void setSpecialist(String Specialist) {
        this.Specialist = Specialist;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
