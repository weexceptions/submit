<%-- 
    Document   : signup
    Created on : May 6, 2017, 1:33:33 PM
    Author     : Akshay
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
    </head>
    <body>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="Images/img1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Qualified Doctors team.</h1>
              <p>We are having such a good qualified and attentive doctor team they will never let you down.</p>
              <p><a class="btn btn-lg btn-primary" href="#"  role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
            <img class="second-slide" src="Images/img2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Child care.</h1>
              <p>Our knowledgeable, experienced and friendly day care doctor team totally take care of your child in hospital. </p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
            <img class="third-slide" src="Images/img3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Friendly nature doctor.</h1>
              <p> Doctors friendly nature make patients good  </p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

<!-- Sign Up form Start -->
    <div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><i class="glyphicon glyphicon-globe"></i>Sign up!</legend>
        <div class="col-md-6">
            <form action="createuser.do" method="post" class="form" id="fileForm" role="form">
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
            <label for="phonenumber"><span class="req">* </span> Phone Number: </label>
                    <input required type="text" name="txtphone" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="Contact number"/> 
            </div>
                <div class="form-group">
                    
            <label class="radio-inline">
                <input type="radio" name="txtsex" id="inlineCheckbox1" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="txtsex" id="inlineCheckbox2" value="female" />
                Female
            </label>
            </div>
            <div class="form-group">
                <label for="email"><span class="req">* </span>Age Group: </label> 
                <select name="txtage" class="form-control" >
                    <option value="" disabled selected id="age">Select Age Group</option>
                    <option value="1" id="age">Below 19</option>
                    <option value="2" id="age">20 - 39</option>
                    <option value="3" id="age">40 - 59</option>
                    <option value="4" id="age">60 - 79</option>
                    <option value="5" id="age">80 Above</option>
                </select>
            </div>            
            <div class="form-group">
            <label for="password"><span class="req">* </span>Date of Birth: </label>
                <input type="date" name="txtdob">
                <hr>
                <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I agree with the <a href="#" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span>
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
        </div>
        </div>  
    </body>
</html>
