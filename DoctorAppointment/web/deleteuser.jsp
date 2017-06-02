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
        </head>
    <body>
        <div class="container">
            <form action="deleteuser.do" method="post" >
    
            <div class="form-control">
                <input type="text" class="form-control" placeholder="Enter Userid" name="txtuid"> 
                <button type="submit" class="btn btn-danger">Delete</button>       
            </div> 
            </form>
        </div>
        <div class="container-fluid">
            <h1>User Detail</h1>
            <table class="table-condensed" border="1">
                <thead class="row">
                <th class="col-lg-2">User Id</th>
                <th class="col-lg-2">User Name</th>
                <th class="col-lg-2">Email</th>
                <th class="col-lg-2">Address</th>
                <th class="col-lg-2">Phone</th>
                
            </thead>
            <tr class="row">
                <td class="col-lg-2"></td>
                <td class="col-lg-2"></td>
                <td class="col-lg-2"></td>
                <td class="col-lg-2"></td>
                <td class="col-lg-2"></td>
            </tr>
            </table>
        </div>
            
    </body>
</html>
