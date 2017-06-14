<%-- 
    Document   : viewdisease
    Created on : Jun 10, 2017, 2:09:31 PM
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
            <div class="form-group">
                <legend><i class="glyphicon glyphicon-barcode"></i>Facts About Disease</legend>
                </div><br>
            <div class="form-group">
                <label for="diseaseid">Disease Id :  </label>
                <input type="text" disabled="true" value="<%out.print(request.getAttribute("dsid"));%>" class="form-control" id="txt" name="txtdname">
            </div>
            <div class="form-group">
                <label for="diseasename">Disease Name :  </label>
                <input type="text" disabled="true" class="form-control" value="<%out.print(request.getAttribute("dname"));%>" id="txt" name="txtdname">
            </div>
            <div class="form-group">
                <label for="symptoms">Symptoms : </label>
                <input type="text" disabled="true" class="form-control" value="<%out.print(request.getAttribute("symp"));%>" id="txt" name="txtsymptoms"></textarea>
                </div>
            <div class="form-group" >
                <label for="preventiond">Preventions : </label>
                <input type="text" disabled="true" class="form-control" value="<%out.print(request.getAttribute("prev"));%>" id="txt" name="txtpreventions"></textarea>
                </div>
            <div class="form-group" >
                <label for="cure">Cure : </label>
                <input   type="text" disabled="true" class="form-control" value="<%out.print(request.getAttribute("cure"));%>" id="txt" name="txtcure"></textarea>
                </div>
        </div>
    </body>
</html>
