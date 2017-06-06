<%-- 
    Document   : deleteuser
    Created on : May 30, 2017, 2:46:43 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
            .table-hover>tbody>tr:hover{background-color:  #00aced;}
        </style>    
    </head>
    <body style="background-image: url('Images/background2.jpg')">
        <div class="container">
            <h3 class="well">Delete Patient</h3>
            <form action="deleteuser.do" method="post" class="form-group" >
                <div class="form-group">
                    <label class="text-justify"><p>Patient UserId:</p></label>
                <input type="text" class="form-control" placeholder="Enter Userid" name="txtuid"><br/> 
                <button type="submit" class="btn btn-danger">Delete</button>       
            </div> 
            </form>
        </div>
        <div class="container">
            <h1 class="well text-justify"><center>User Detail</center></h1>
            <table class="table-condensed table-hover" border="0">
                <thead class="row">
                <th class="col-lg-2">Patient Id</th>    
                <th class="col-lg-2">User Id</th>
                <th class="col-lg-2">User Name</th>
                <th class="col-lg-2">Email</th>
                <th class="col-lg-2">Address</th>
                <th class="col-lg-2">Phone</th>
                </thead>
                <tr>
                <td class="col-lg-2">01</td>    
                <td class="col-lg-2">aksh</td>
                <td class="col-lg-2">Akshay</td>
                <td class="col-lg-2">akshaysoni@gmail.com</td>
                <td class="col-lg-2">Borivali(East)</td>
                <td class="col-lg-2">9820679772</td>
                </tr>
            </table>
        </div>
            
    </body>
</html>
