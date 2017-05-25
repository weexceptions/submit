<%-- 
    Document   : aboutus.jsp
    Created on : May 6, 2017, 1:32:27 PM
    Author     :Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AboutUs</title>
         <link rel="stylesheet" href="css/bootstrap.min.css"/>
         <!--<link rel="stylesheet" href="css/signup.css">-->
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <style>
            .carousel {
  height: 400px;
  margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
  height: 400px;
  background-color: #777;
}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 400px;
}
.text-justify{ padding-left: 10px;}
            
        </style>
    </head>
    <body  style="background-color: moccasin">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="Images/infra1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-primary" href="signup.jsp"  role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
            <img class="second-slide" src="Images/infra2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              </div>
          </div>
        </div>
        <div class="item">
            <img class="third-slide" src="Images/infra3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
            </div>
          </div>
        </div>
          
        <div class="item">
            <img class="third-slide" src="Images/infra4.jpg" alt="Fourth slide">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-primary" href="gallery.html" role="button">Browse gallery</a></p>
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

    <center><h3> Stay Healthy Hospital</h3></center>
       
            <p class="text-justify" style="font-size: large">
            Stay Healthy hospital is a well-known hospital that provides treatment for different diseases since 2010.<br>
            It has four different branches in India.<br>
            is a multi specialist hospital that provides treatment for not only kids and seniors but for all age groups.<br> 
            The hospital organizes free health check up camps every month and is well known for regular meeting of patients with health experts.<br>
            Expert doctor also provide information and possible solution for patient's illness along with a regular healthy diet plan.<br>
           </p>
       
           <p class="text-justify" style="font-size: large">
               Stay Healthy Hospital is also on panel of imminent corporate for indoor treatment & medical services.
               We have designed packages for corporate health services to ensure that employees of these corporate clients stay healthy and productive.
               The aim is to impart expert health services and ensure that medical support is available to the employees of client organizations,
               whenever they need it. Apart from indoor hospitalization, opd / daycare services, preventive care and treatment for common health 
               related problems are also made accessible to employees & dependents as per corporate policy.

           </p>
    </body>
</html>
