<%-- 
    Document   : contactus.jsp
    Created on : May 6, 2017, 1:32:46 PM
    Author     : Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ContactUs</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homestylesheet.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <style>   
.red{
    color:red;
    }
.form-area
{
    background-color: #FAFAFA;
	padding: 10px 40px 60px;
	margin: 10px 0px 60px;

	}
        </style>
<script type="text/javascript">
function clearField() {
   
      document.chatform.reset();
   
}
</script>  
    </head>
    <body>
        <div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form" method="post" action="mailto:akshaysoni@gmail.com">
        <br style="clear:both">
        <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
        	<div class="form-group">
        	<input type="text" class="form-control" id="name" name="txtname" placeholder="Name" required>
                </div>
		<div class="form-group">
        		<input type="text" class="form-control" id="email" name="txtemail" placeholder="Email" required>
        	</div>
		<div class="form-group">
                	<input type="text" class="form-control" id="mobile" name="txtmobile" placeholder="Mobile Number" required>
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="subject" name="txtsubject" placeholder="Subject" required>
		</div>
                <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" name="txtmessage" placeholder="Message" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                </div>
            
        <button type="submit" id="submit" name="submit" onclick="clearField();" class="btn btn-primary pull-right" value="Send Email" >Submit form</button>
        </form>
    </div>
</div>
</div>
        
        <script type="text/javascript">
            $(document).ready(function(){ 
    $('#characterLeft').text('140 characters left');
    $('#message').keydown(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('You have reached the limit');
            $('#characterLeft').addClass('red');
            $('#btnSubmit').addClass('disabled');            
        } 
        else {
            var ch = max - len;
            $('#characterLeft').text(ch + ' characters left');
            $('#btnSubmit').removeClass('disabled');
            $('#characterLeft').removeClass('red');            
        }
    });    
});

        </script>
        
    </body>
</html>
