<%-- 
    Document   : profil
    Created on : May 29, 2017, 2:34:31 PM
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
    <body><div class="container text-center" >
            <label class="">
                Hello, Pleass Upload Your Profil Picture.
            </label>
<div class="fileinput fileinput-new" data-provides="fileinput">
    <span class="btn btn-default btn-file"><span>Choose file</span><input type="file" /></span>
    <span class="fileinput-filename"></span><span class="fileinput-new">No file chosen</span>
</div>
            <div class="btn btn-success" onclick="">Submit</div>
    
</div><hr>

        </div>
        <div class="container-f">
            <div class="text-justify">
                <div class="row">
                <label class="col-lg-3">Name :</label><input type="text" class="input-sm" disabled="true" value="Akshay Soni"><br/><br/>
                <label class="col-lg-3">DOB :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                <label class="col-lg-3">Gender :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                <label class="col-lg-3">Email ID :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                
                <label class="col-lg-3">Address :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                <label class="col-lg-3">Phone :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                <label class="col-lg-3">Age :</label><input type="text" class="input-sm" disabled="true" value=""><br/><br/>
                </div>
            </div>
        </div>
    </body>
</html>
