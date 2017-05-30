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
        
    </head>
    <body>
        <h1>Admin ka Page banao</h1>
        <div class="container">
    <a target="ContentFrame" href="createdr.jsp"><button type="button" class="btn btn-default">Create Doctor</button></a>        
    <center><a target="ContentFrame" href="deletdoctor.jsp"><button type="button" class="btn btn-danger">Delete Doctor</button></a></center>
        </div> <hr>
        <div class="container"> 
    <center><a target="ContentFrame" href="deleteUser.jsp"><button type="button" class="btn btn-danger">Delete Patient</button></a></center>
    </div>
    <h2>Create Dr---Delete Dr----All or remove Patient</h2>
        <h1>Remove user k liya  <a href="#">"removeuser.jsp"</a> iss par link karna hai and <a href="#">"deleteuser.do"</a> on submit</h1>
        <h2><br/>Crete doctor ka form dekh le wo bhi baki hai.... Database se mai link kar duga</h2>
    </body>
</html>
