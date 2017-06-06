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
        <style>
            .table-hover>tbody>tr:hover{background-color:  yellowgreen;}
            #table{
                background-color: whitesmoke;
                color: black;
                text-justify: distribute;
            }
        </style>
    </head>
    <body style="background-image: url('Images/bg.jpg')">
        <div class="container">
            <h3 class="well">Delete Doctor</h3>
            <form action="deleteuser.do" method="post" class="form-group" >
                <div class="form-group">
                    <label class="text-justify"><p>Doctor UserId:</p></label><br/>
                <input type="text" class="form-control" placeholder="Enter Doctorid" name="txtuid"><br/>
                <button type="submit" class="btn btn-danger">Delete</button>       
            </div> 
            </form>
        </div>
        <div class="container">
            <h1 class="well text-justify"><center>Doctor Detail</center></h1>
            <table id="table" class="table-responsive table-hover" border="0">
            <thead class="row">
                <th class="col-lg-2">Dr_Id</th>
                <th class="col-lg-2">User Id</th>
                <th class="col-lg-2">User Name</th>
                <th class="col-lg-2">Email</th>
                <th class="col-lg-2">Address</th>
                <th class="col-lg-2">Phone</th>
            </thead>
            <tr>
                <td class="col-lg-2">01</td>
                <td class="col-lg-2">mbhai</td>
                <td class="col-lg-2">Dr.Munna Bhai</td>
                <td class="col-lg-2">munna@gmail.com</td>
                <td class="col-lg-2">dadar(East),Mumbai.</td>
                <td class="col-lg-2">9876543210</td>
            </tr>
            </table>
        </div>
  
    </body>
</html>
