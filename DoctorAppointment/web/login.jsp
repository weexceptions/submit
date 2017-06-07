<%-- 
    Document   : login
    Created on : May 23, 2017, 7:14:20 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In page</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homestylesheet.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
            h1{
        font-family: cursive;
        font-feature-settings: normal;
        font-style: italic;
        font-weight: bold;
    }
    body{
        
        background-size: 1000px;
        background-position-y: bottom;
    }  
        </style>    
    </head>
    <body>
                   <h1 class="well text-center text-danger">Hello User!</h1></div>
     
       
    <div class="container">
            <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><i class="glyphicon glyphicon-globe"></i>LogIn!</legend>
            <form action="login.do"  method="post" class="form" role="form" target="_blank">
                <a href="left.jsp"></a>
            <div class="row">
                <div class="col-lg-4 col-sm-4">
                    <label class="text-info">User Id:</label>      
                </div>
                <div class="col-lg-8 col-sm-8"><input class="form-control" type="text" placeholder="userid" name="txtuid" id="txt" onkeyup = "Validate(this)"  required ></div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-4">
                    <label class="text-info">Password:</label>      
                </div>
                <div class="col-lg-8 col-sm-8"><input type="password" class="form-control" name="txtpass" minlength="4" maxlength="16" placeholder="Enter Password" onkeyup="checkPass(); return false;" required ></div>
            </div>
                <br>
               
            <div class="row">
                <div class="col-lg-12 col-sm-12">
                    <center><button type="submit" target="_blank" onclick=window.close() class="btn btn-primary" >LogIn</button></center>      
                </div>
                <br>
            </div>
            </form>
            
        </div>
        </div>
    </div>
    
                <img class="img-responsive" src="Images/doctorbg.jpg" width="100%" height="500px" alt="doctor">
    
    </body>
</html>
