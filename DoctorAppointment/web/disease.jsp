<%-- 
    Document   : disease
    Created on : May 25, 2017, 4:58:48 PM
    Author     : Priyanka WorkSpace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disease</title>
         <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <form action="disease.do" method="" class="form-group ">
            <div class="form-group">
                <legend><i class="glyphicon glyphicon-alert"></i>   Facts About Disease</legend>
                </div><br>
            <div class="form-group">
                <label for="diseasename">Disease Name :  </label>
                <input type="text" class="form-control" id="txt" name="txtdname">
            </div>
            <div class="form-group" >
                <label for="symptoms">Symptoms : </label>
                <textarea type="text" class="form-control" id="txt" name="txtsymptoms"></textarea>
                </div>
            <div class="form-group" >
                <label for="preventiond">Preventions : </label>
                <textarea type="text" class="form-control" id="txt" name="txtpreventions"></textarea>
                </div>
            <div class="form-group" >
                <label for="cure">Cure : </label>
                <textarea type="text" class="form-control" id="txt" name="txtcure"></textarea>
                </div>
                
            </form><br><br>
        <button type="submit" class="btn btn-success"> SUBMIT </button>
        <button type="reset" class="btn btn-warning"> RESET </button>
        </div>
    </body>
</html>
