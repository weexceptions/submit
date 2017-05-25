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
            <form action="" method="" >
                <div class="form-group">
                    <input type="text" class="form-control" name="" placeholder="Patient Name" required>
                </div>
                
                <div class="form-group">
                    <input type="text" class="form-control" name="" placeholder="Patient id" required>
                </div>
                <div class="form-group">
                    <label class="col-lg-3" for="sel1">Appointment Date:</label>
                    <div class="col-lg-7"><input type="date" class="form-control" name="" placeholder="Date" required></div>
                </div><br>
                <div class="form-group">
                    <label for="sel1">Appointment Time:</label>
                    <input type="time" class="form-control" name="" placeholder="Time" required>
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
