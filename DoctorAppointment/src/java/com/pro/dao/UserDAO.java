/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.pro.model.*;
/**
 *
 * @author Akshay
 */
public interface UserDAO {
    
    boolean createUser(User u,Patient p);
    User getUserById(int userId);
    boolean updateUser(int userId, User user);
    boolean deleteUser(int userId);
    boolean getLogin(String id,String pass);
    boolean checkPassword(String id,String email,String phone);
    boolean updatePassword(String pass);
}
