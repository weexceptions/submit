<%-- 
    Document   : regsuccess
    Created on : May 20, 2017, 2:16:13 PM
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
        <style>
    h1{
        font-family: cursive;
        font-feature-settings: normal;
        font-style: italic;
        font-weight: bold;
    }
        </style>
    </head>
    
    <body>
             <!--<marquee  direction="left" width="100%" height="800" scrollamount="10" loop="true" onmouseover="this.stop()" onmouseout="this.start()">-->
                 <h1 class="well text-center text-danger"><%out.print(request.getAttribute("auser"));%>, You have been Successfully...Signin</h1><br/>
                 <h1 class="text-center" style="color: red">Please Do login</h1><br/>
                 <h1 class="text-center" style="color: red">Have a Beautiful Healthy Day</h1><br/>
                 <!--</marquee>-->
    </body>
</html>
