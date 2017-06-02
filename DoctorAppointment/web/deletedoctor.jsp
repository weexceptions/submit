<%-- 
    Document   : deletdoctor
    Created on : May 30, 2017, 2:46:24 PM
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
        
    </head>
    <body>
        <div class="container">
            <form action="makeAppointment.do" method="post" >
    
            <div class="form-control">
                <input type="text" class="form-control" placeholder="Enter Doctorid" name="txtuid"> <button type="submit" class="btn btn-danger">Delete</button>       
            </div> 
            </form>
        </div>
        <div class="container-fluid">
            <h1>Doctor Detail</h1>
        <table border="1">
            <thead>
                <th>er Id</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
                
            </thead>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </table>
        </div>
  
    </body>
</html>
