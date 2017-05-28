<%-- 
    Document   : appointment
    Created on : May 18, 2017, 3:09:03 PM
    Author     : Akshay
--%>

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
                    <label for="appt timeslot">Appointment Time:</label>
                    <select type="text" class="form-control" name=""  required>
                        <option disabled selected id="Time">Select Time Slot</option>
                        <option>9.am - 9:30am</option>
                        <option>9:30am - 10am</option>
                        <option>10am - 10:30am</option>
                        <option>10:30am - 11am</option>
                        <option>11am - 11:30am</option>
                        <option>11:30am - 12am</option>
                        <option>12pm - 12.30pm</option>
                        <option>12.30pm - 1pm</option>
                        <option>1pm - 1:30pm</option>
                        <option>1:30pm - 2pm</option>
                        <option>4pm - 4:30pm</option>
                        <option>4:30pm - 5pm</option>
                        <option>5pm - 5:30pm</option>
                        <option>5:30pm - 6pm</option>
                        <option>6pm - 6:30pm</option>
                        <option>6:30pm - 7pm</option>
                    </select>
                </div>    
                <div class="form-group">
                    <label for="sel1">Select Doctor:</label>
                    <select class="form-control">
                       <%/*String dr;
                        UserDAO allDrDAO = new DaoImpl();
                        //List<AllDoctor> allDrList = allDrDAO.getAllDoctor();
                        List<AllDoctor> allDrList=allDrDAO.getAllDoctor();
                Iterator allDRItr = allDrList.iterator();
                while(allDRItr.hasNext())
                {
                    AllDoctor allDr = (AllDoctor)allDRItr.next();*/
            %>
                        <%//=out.println(allDr.getDrName())%><%//}%>
                        <option id="" value=""></option>
                        
                    </select>
                </div>
                <div class="form-group">
                    <input type="" class="form-control" value="" name="" placeholder="">
                </div>
                   
            </form>
            
        </div>
    </body>
</html>
