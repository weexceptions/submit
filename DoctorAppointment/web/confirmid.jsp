<%-- 
    Document   : confirmid
    Created on : May 30, 2017, 1:04:28 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>confirm id</title>
            <link rel="stylesheet" href="css/bootstrap.min.css"/>
            <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
            <script type="text/javascript" src="js/bootstrap.min.js"></script>

    </head>
    <body class="bg-info" >
        <div class="container">
            <form action="takeid.do" method="post">
            <h3 class="text-center text-justify">Confirm User Id</h3>
            <input type="text" class="form-control" name="txtuid" placeholder="Userid"><br/>
            <button type="submit" class="btn btn-success" value="MakeAppointent">Submit</button>
        </form></div>
    </body>
</html>
