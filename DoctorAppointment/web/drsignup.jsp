<%-- 
    Document   : drsignup
    Created on : May 29, 2017, 9:26:35 PM
    Author     : Sunny
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
           Sign Up Page
        </title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/signup.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/signup.js"></script>
        <style>
            body{
        background-image: url('Images/background2.jpg');
    }
        </style>
    </head>
    <body>
       
<!-- Sign Up form Start -->
    <div class="container">
    
        <div class="col-xs-12 col-lg-12 col-md-12 well well-lg">
            <legend><i class="glyphicon glyphicon-globe"></i>Sign up!</legend>
        <div class="col-lg-12">
            <form action="createdr.do" method="post" class="form" id="fileForm" role="form" target="_blank">
            <fieldset><legend class="text-center">Valid information is required to register. <span class="req"><small> required *</small></span></legend>
            
            
            <div class="form-group">
                <label for="username"><span class="req">* </span> User name:  <small>This will be your login user name</small> </label> 
                <input class="form-control" type="text" name="txtpid" id = "txt" onkeyup = "Validate(this)" placeholder="minimum 6 letters" required />  
                <div id="errLast"></div>
            </div>    
             <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span> First name: </label>
                <input class="form-control" type="text" name="txtfname" id = "txt" onkeyup = "Validate(this)" required /> 
                <div id="errFirst"></div>    
            </div>

            <div class="form-group">
                <label for="lastname"><span class="req">* </span> Last name: </label> 
                <input class="form-control" type="text" name="txtlname" id = "txt" onkeyup = "Validate(this)" placeholder="hyphen or single quote OK" required />  
                <div id="errLast"></div>
            </div>

            <div class="form-group">
                <label for="email"><span class="req">* </span> Email Address: </label> 
                <input class="form-control" required type="text" name="txtemail" id = "email"  onchange="email_validate(this.value);" />   
                <div class="status" id="status"></div>
            </div>
            
            <div class="form-group">
                <label for="password"><span class="req">* </span> Password: </label>
                <input required name="txtpass" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" /> </p>

                <label for="password"><span class="req">* </span> Password Confirm: </label>
                <input required name="txtpass2" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                <span id="confirmMessage" class="confirmMessage"></span>
            </div>
            
            <div class="form-group">
            <label for="address"><span class="req">* </span> Address: </label>
            <textarea required type="text" rows="4" cols="50" name="txtaddress" id="phone" class="form-control phone" maxlength="100"  placeholder="Address"></textarea> 
            </div>
            <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span> Specilaist: </label>
                <input class="form-control" type="text" name="txtspec" id = "txt" placeholder="Specilaist" required /> 
                <div id="errFirst"></div>    
            </div>
            <div class="form-group">
            <label for="phonenumber"><span class="req">* </span> Phone Number: </label>
                    <input required type="text" name="txtphone" id="phone" class="form-control phone" maxlength="10" onkeyup="validatephone(this);" placeholder="Contact number"/> 
            </div>
<!--        <div class="form-group">
            <label class="radio-inline">
                <input type="hidden" name="txtDr" id="inlineCheckbox1" value="Dr"  />
                Dr
            </label>
            </div>-->

            <div class="form-group">
                <label for="email"><span class="req">* </span>Location: </label> 
                <select name="txtloc" class="form-control" >
                    <option value="" disabled selected id="age">Select Location</option>
                    <option id="loc" value="mumbai">Mumbai</option>
                    <option id="loc" value="delhi">Delhi</option>
                    <option id="loc" value="kolkata">Kolkata</option>
                    <option id="loc" value="chennai">Chennai</option>
                </select>
            </div>            
            <div class="form-group">
            <label for="password"><span class="req">* </span>Date of Birth: </label>
                <input type="date" name="txtdob">
                <hr>
                <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I agree with the <a target="ContentFrame" href="privacypolicy.htm" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span>
            </div>

            <div class="form-group">
                <input class="btn btn-success" type="submit" name="submit_reg" value="Register">
            </div>
                      <h5>You will receive an email to complete the registration and validation process. </h5>
                      <h5>Make sure to check your spam folders.Because the mail received may go in the spam folder by default. </h5>
 

            </fieldset>
            </form><!-- ends register form -->
            </div>
        </div>
    
        </div>
          
    </body>
</html>
