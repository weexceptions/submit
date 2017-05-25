<%-- 
    Document   : appointment
    Created on : May 18, 2017, 3:09:03 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
                    <div class="col-lg-7"><input type="date" class="form-control" name="" placeholder="Date" required></div>
                </div>
                <div class="form-group">
                    <label for="appt timeslot">Appointment Time:</label>
                    <select type="text" class="form-control" name="" placeholder="Time" required>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                    </select>
                </div>    
                <div class="form-group">
                    <label for="sel1">Select Doctor:</label>
                    <select class="form-control">
                        <option id="" value="">1</option>
                        <option id="" value="">3</option>
                        <option id="" value="">4</option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
                        <option id="" value=""></option>
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
