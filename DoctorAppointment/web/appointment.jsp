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
            <form action="makeAppointment.do" method="post" >
    
                <div style="padding-top: 15px;" class="form-group">
                    <legend><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;Appoint Doctor</legend>
                </div><br/>
                
                <div class="form-group">
                    <input type="text" class="form-control" name="" placeholder="Patient Name" required>
                </div>
                
                <div class="form-group">
                    <label for="patient id">Patient Id:</label>
                    <input type="text" class="form-control" name="" placeholder="Patient id" required>
                </div>
                <div class="form-group">
                    <label for="appt date">Appointment Date:</label>
                    <input type="date" class="form-control" name="" placeholder="Date" required></div>
                  
                <div class="form-group">
                    <label for="sel1">Select Doctor:</label>                                   
                        <%
                        Connection con = null;
                        PreparedStatement ps = null;
                        try
                        {
                        con = DBconnection.getConnection();
                        String sql = "SELECT fname,lname FROM USERDETAIL where D_ID IS NOT NULL";
                        ps = con.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery(); 
                        %>
                       
                         <select type="text" class="form-control" name=""  required>
                            <option disabled selected id="Date">Select Doctor</option>
                        <%
                        while(rs.next())
                        {
                        String fname = rs.getString("fname").toUpperCase(); 
                        String lname = rs.getString("lname".toUpperCase()); 
                        String fullname = fname+" "+lname.toUpperCase(); 
                        %>
                        <option value="<%=fullname %>"><%=fullname %></option>
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
                    <label for="appt timeslot">Appointment Time:</label>
                    <select type="text" class="form-control" name=""  required>
                        
                         <%
                       
                        try
                        {
                        con = DBconnection.getConnection();
                        String sql = "SELECT A_TIME FROM APPOINTMENT WHERE D_ID IS NOT NULL";
                        ps = con.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery(); 
                        %>
                        <p>Select Name :
                       
                            <option disabled selected id="Time">Select Time</option>
                        <%
                            rs.next();
                        int btime=rs.getInt(1);
                        String TimeBooked;
                        String dselect=null;
                        String atime="Select";
                        for (int i = 1; i < 9; i++) {
                         if (btime==i) {
                                 atime="Booked";
                                 dselect="disabled selected";
                             }
                         else{
                             dselect=null;
                             switch (i) {
                                     case 1:
                                         atime="9 to 10";
                                         break;
                                     case 2:
                                         atime="10 to 11";
                                         break;
                                     case 3:
                                         atime="11 to 12";
                                         break;
                                     case 4:
                                         atime="12 to 1";
                                         break;
                                     case 5:
                                         atime="2 to 3";
                                         break;
                                     case 6:
                                         atime="3 to 4";
                                         break;
                                     case 7:
                                         atime="5 to 6";
                                         break;
                                     case 8:
                                         atime="6 to 7";
                                         break;
                                     default:
                                         atime="Booked";
                                 }
                        }
                         
                        %>
                        <option <%=dselect%> value="1"><%=atime %></option>
                        <%
                        }
                        %>
                        </select>
                        </p>
                        <%
                        }
                        catch(SQLException sqe)
                        { 
                        out.println(sqe);
                        }
                        %>
                
                </div>  
                   
            </form>
            
        </div>
    </body>
</html>
