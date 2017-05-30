<%-- 
    Document   : home.jsp
    Created on : May 6, 2017, 1:32:09 PM
    Author     : Priyanka Workspace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home </title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homestylesheet.css">
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
       
    </head>
    <body>
         <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators" >
        <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        
      </ol>
       
      <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="Images/Appless.jpg" alt="First slide" width="900" height="200">
          </div>
        <div class="item">
            <img class="second-slide" src="Images/blueberries.jpg" alt="Second slide"width="900" height="200">
        
        </div>
        <div class="item">
            <img class="third-slide" src="Images/fish_oil.jpg" alt="Third slide"width="900" height="200">
        </div>
          
        <div class="item">
            <img class="fourth-slide" src="Images/honey.jpg" alt="Fourth slide" width="900" height="200">
        </div>  
            
        <div class="item">
            <img class="fifth-slide" src="Images/sugar.jpg" alt="Fifth slide" width="900" height="200">
        </div>  
            
        <div class="item">
            <img class="sixth-slide" src="Images/vitamin_d.jpg" alt="Sixth slide" width="900" height="200">
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

    <center><h3> Stay Healthy Hospital</h3></center>
    
    <div class="container">
    <div class="well">
       <p style="font-weight: bolder ; font-size: large" > An apple a day keeps the doctor away..............<p>
       <p style="font-size: medium"> This is the very common fact that we know but how does this helps us in our body do you know that</p>
    </div>
        <div class="well">
       <p style="font-weight: bolder ; font-size: large" > Early morning sun is rich source of vitamin-D <p>
       <p style="font-size: medium"> We get vitamin d not only from sun but also different</p>
    </div>
    </div>  
        <div class="container">
        <aside id="sticky-social">
        <ul>
        <li><a href="#" class="entypo-facebook " target="_blank"><span>Facebook</span></a></li>
        <li><a href="#" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a href="#" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a href="#" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>
        <li><a href="#" class="entypo-instagrem" target="_blank"><span>Instagram</span></a></li>
        </ul>
        </aside>
        </div>
        
    </body>
</html>
