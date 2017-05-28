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
public class AllDoctor {
    private String drName;

    public AllDoctor(String drName) {
        this.drName = drName;
    }

    public String getDrName() {
        return drName;
    }

    public void setDrName(String drName) {
        this.drName = drName;
    }

    @Override
    public String toString() {
        return "AllDoctor{" + "drName=" + drName + '}';
    }
    
}
