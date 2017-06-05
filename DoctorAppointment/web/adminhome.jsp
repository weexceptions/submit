<%-- 
    Document   : adminhome
    Created on : May 29, 2017, 9:30:12 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>   h1{
        font-family: cursive;
        font-feature-settings: normal;
        font-style: italic;
        font-weight: bold;
    }
</style>
    </head>
    <body>
           <h1 class="well text-center text-danger">Hello Admin!</h1></div>
        
        <div class="btn-group conntainer">
    <a target="ContentFrame" href="drsignup.jsp"><button type="button" class="btn btn-success">Create Doctor</button></a>        
    <a target="ContentFrame" href="deletedoctor.jsp"><button type="button" class="btn btn-danger">Delete Doctor</button></a></center>
    <a target="Content2Frame" href="deleteUser.jsp"><button type="button" class="btn btn-danger">Delete Patient</button></a></center>
     

</div><hr>
        
     
<center><br/><br/><a target="Content2Frame" href="restore.do"><button type="reset" class="btn btn-danger">Reset</button></a>
    <br/><br/><p style="font-weight: bold">First Create DataBase as Following:</p>
    <p style="font-weight: 600">("jdbc:derby://localhost:1527/DocAppointDB", "aksh", "aksh123");</p></center>
     </body>
</html>