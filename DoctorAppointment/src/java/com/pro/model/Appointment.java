/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.model;

import java.util.Date;

/**
 *
 * @author Akshay
 */
public class Appointment {

    private String userId;
    private String status;
    private int time;
    private Date date;
    private String discription;

    public Appointment(String userId, String status, int time, Date date, String discription) {
        this.userId = userId;
        this.status = status;
        this.time = time;
        this.date = date;
        this.discription = discription;
    }

    public Appointment(String string) {
        
    return ;
    }

    @Override
    public String toString() {
        return "Appointment{" + "userId=" + userId + ", status=" + status + ", time=" + time + ", date=" + date + ", discription=" + discription + '}';
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }
}
