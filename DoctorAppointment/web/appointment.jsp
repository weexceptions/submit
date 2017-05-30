<%-- 
    Document   : appointment
    Created on : May 18, 2017, 3:09:03 PM
    Author     : Akshay
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.pro.model.AllDoctor"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.pro.model.DoctorInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.pro.controller.*;"%>
<%@page import="com.pro.dao.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apointment Page</title>

        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homestylesheet.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container">
            <form action="selectslot.do" method="post" >
    
                <div style="padding-top: 15px;" class="form-group">
                    <legend><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;Appoint Doctor</legend>
                </div>
                <div class="form-group">
                <label class="control-label" for="patientname">Patient Name:</label>
               <label for="id" class="text-info">ABCD</label>                    
                
                </div>
                 <div class="form-group">
                    <label class="control-label" for="patient id">Patient Id:</label><label for="id" class="text-info"><%out.print(request.getAttribute("auser"));%></label>                    
                </div>
                <div class="form-group">
                    <label class="control-label" for="appt date">Appointment Date:</label>
                    <input type="date" class="form-control" name="" placeholder="Date" required></div>
                  
                <div class="form-group">
                    <label class="control-label" for="sel1">Select Doctor:</label>                                   
                        <%
                        Connection con = null;
                        PreparedStatement ps = null;
                        //dtime="";
                        try
                        {
                        con = DBconnection.getConnection();
                        String sql = "SELECT D_ID,fname,lname FROM USERDETAIL where D_ID IS NOT NULL";
                        ps = con.prepareStatement(sql);
                        String did;
                        ResultSet rs = ps.executeQuery(); 
                        %>
                       
                         <select type="text" class="form-control" name="txtdr"  required>
                            <option disabled selected id="Date">Select Doctor</option>
                        <%
                        while(rs.next())
                        {
                        did=rs.getString("D_ID");
                        String fname = rs.getString("fname").toUpperCase(); 
                        String lname = rs.getString("lname".toUpperCase()); 
                        String fullname = fname+" "+lname.toUpperCase(); 
                        %>
                        <option value="<%=did %>"><%=fullname %></option>
                        <%
                        }

                        %>
                        </select>
                        <%
                        }
                        catch(SQLException sqe)
                        { 
                        out.println(sqe);
                        }
                        %>
                </div>
               
                <div class="form-group">
                    <button type="submit" class="form-control btn-success" placeholder="">SUBMIT</button>
                </div>
            </form>
            
        </div>
<!--                        <div class="jumbotron">
  <h1>Bootstrap Tutorial</h1> 
  <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive,
  mobile-first projects on the web.</p> 
</div>
<div class="container">
  <p>This is some text.</p> 
  <p>This is another text.</p> 
</div>-->
    </body>
</html>
