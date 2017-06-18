<%-- 
    Document   : newpass
    Created on : May 25, 2017, 9:00:12 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/signup.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/signup.css">
        <title>New Password Page</title>
    </head>
    <body>
        <div class="well container">
        
        <form action="updatepass.do" method="post" class="form" id="fileForm" role="form" >
            <%
            String id=request.getAttribute("id").toString();
            %>
           
            <div class="form-group">
                <label class="radio-inline">
                <input type="radio" name="id" id="inlineCheckbox1" value="<% out.println(id); %>" checked="true" />
                <h1>Hello <% out.println(id); %></h1>
                <h1>Enter new password</h1>
                </label><br/>
                
                <label for="password"><span class="req">* </span> Password: </label>
                <input required name="txtpass" type="password" class="form-control inputpass" placeholder="Enter New Password" minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><span class="req">* </span> Password Confirm: </label>
                <input required name="txtpass2" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                <span id="confirmMessage" class="confirmMessage"></span>
            </div>
            <div>
                <input type="checkbox" required name="terms" id="field_terms">   <label for="terms">Logout From all devices</label>
            </div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Submit">
                <a class="btn btn-danger" href="home.jsp" value="Cancel">Cancel</a>
            </div>
 
            </form>
            </div>    
    </body>
</html>
