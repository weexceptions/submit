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
        <br/>
        <div class="well container">
            <form action="timeselect.do" method="post" >
    
                <div style="padding-top: 15px;" class="form-group">
                    <legend><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;Appoint Doctor</legend>
                </div>
                <div class="form-group">
                <label class="control-label" for="patientname">Patient Name:</label>
               <label for="id" class="text-info">
                   <%
                       
                        Connection con = null;
                        PreparedStatement ps,ps2 = null;
                        con = DBconnection.getConnection();
                        String sql2 = "SELECT fname,lname FROM USERDETAIL where UID ='" + request.getAttribute("auser").toString().toLowerCase() + "'";
                        ps2 = con.prepareStatement(sql2);
                        ResultSet rs2 = ps2.executeQuery(); 
                        rs2.next();
                        String f,l;
                        f=rs2.getString(1);
                        l=rs2.getString(2);
                        out.print(f+" "+l);
                        
                   %>
               </label>                    
                
                </div>
                 <div class="form-group">
                     <label for="patient id">Patient Id:</label>&nbsp;<label for="id" class="text-info" name="" ><%out.print(request.getAttribute("auser"));%></label>                    
                </div>
                <input type="hidden" value="<%out.print(request.getAttribute("auser"));%>" name="txtid" />
                <input type="hidden" value="<%out.print(f+" "+l);%>" name="txtname" />
                <div class="form-group">
                    <label for="appt date">Appointment Date:</label>
                    <input type="date" class="form-control" name="txtdate" placeholder="Date" oninput="dateValidate(this.value);" id="today" required>
                </div>
                    <div class="status" id="status"></div>
                    <script>
                     document.getElementById('today').value = new Date().toISOString().substring(0, 10);
                     </script>
                     <script>
                    function dateValidate(today){
var enteredDate = document.getElementById("today").value;
var crrDate = new Date().toISOString().substring(0, 10);
    if(enteredDate >= crrDate)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>date is valid.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Sorry, you have entered a Invalid Date!</span>";	
    }
}

                    
                    </script>
                   <br/>  
                    <div class="form-group">
                    <label for="sel1">Select Doctor:</label>                                   
                        <%
                        try
                        {
                        con = DBconnection.getConnection();
                        String sql = "SELECT UID,fname,lname FROM USERDETAIL where UTYPE = 'Dr'";
                        ps = con.prepareStatement(sql);
                        String uid;
                        ResultSet rs = ps.executeQuery(); 
                        %>
                       
                        <select type="text" class="form-control" name="txtdr"  required>
                        <option disabled selected id="Date">Select Doctor</option>
                        <%
                        while(rs.next())
                        {
                        uid=rs.getString("UID");
                        String fname = rs.getString("fname").toUpperCase(); 
                        String lname = rs.getString("lname".toUpperCase()); 
                        String fullname = fname+" "+lname.toUpperCase(); 
                        %>
                        <option value="<%=uid %>"><%=fullname %></option>
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
                
                    <label for="">Select Location:</label>                                   
                     <select class="form-control" name="txtlocation" required>
                     <option disabled selected id="Time">Select Location</option>
                     <option id="loc" value="Mumbai">Mumbai</option>
                     <option id="loc" value="Delhi">Delhi</option>
                     <option id="loc" value="Kolkata">Kolkata</option>
                     <option id="loc" value="Chennai">Chennai</option>
                     </select>
                <br/><br/>
                    
                    <div class="form-group">
                        <button type="submit" class="form-control btn-success">SUBMIT</button>
                </div>
            </form>
            
        </div>
    </body>
</html>
