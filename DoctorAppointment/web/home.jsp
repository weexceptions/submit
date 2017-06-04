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
        <style>
            .carousel {
  height: 500px;
  margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
  height: 500px;
  background-color: #777;
}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 500px;
}
    </style>
    </head>
    <body>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
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
       <p style="font-size: medium"> Do you really know what makes an apple so special? Why is it that we never hear an orange or a banana a day keeps the doctor away?
Apples have properties that no other fruits have and its benefits have been proven overtime.
You will be able to get the benefits of these properties individually with other fruits, but an apple combines everything and makes it simpler. It has been shown over and over that if it’s not simple, easy and fast, people won’t take care of their health.
       </p><a href="apple.jsp" target="ContentFrame">Read More</a>
    </div>
        
        <div class="well">
       <p style="font-weight: bolder ; font-size: large" > Facts about Vitamin-D.......... <p>

       <p style="font-size: medium">  Vitamin D helps your body absorb calcium. Calcium is one of the main building blocks of bone. A lack of vitamin D can lead to bone diseases such as osteoporosis or rickets. Vitamin D also has a role in your nerve, muscle, and immune systems.
You can get vitamin D in three ways: through your skin, from your diet, and from supplements. Your body forms vitamin D naturally after exposure to sunlight. However, too much sun exposure can lead to skin aging and skin cancer. So many people try to get their vitamin D from other sources.
</p><a href="vitamin_d.jsp" target="ContentFrame">Read More</a>

    </div>
         <div class="well">
       <p style="font-weight: bolder ; font-size: large" >Benefits of honey................ <p>
           <p>If you’re not taking full advantage of the nutritional and medicinal properties of honey, it’s time to begin doing so because honey is a remarkable healing agent for all sorts of ailments.
People have been using honey for its antibacterial and antifungal properties since the ancient times.
In fact, the Greeks, Romans, and Egyptians documented the healing properties of honey as early as Aristotle’s mention of it in 384 BC.
Honey is certainly an old product that has won over the hearts of many in the natural healing niche.
Honey is the way to go not just to replace sugar, but to add nutrition and wellness to your life.
</p><a href="honey.jsp" target="ContentFrame">Read More</a>
         </div>
         <div class="well">
       <p style="font-weight: bolder ; font-size: large" >Blueberries facts.............<p>
              <p>Natural medicine has long held that these round purple berries give long-life health benefits that far exceed their tiny size. Native to North America, blueberries are rich in proanthocyanidin, contributing to blueberry benefits that include fighting cancer, losing weight and glowing, young skin. Blueberries are also rich in vitamin C, vitamin K, manganese and other antioxidants that lead to its numerous other health benefits .
                </p><a href="blueberries.jsp" target="ContentFrame">Read More</a>
    </div>
        <div class="well">
       <p style="font-weight: bolder ; font-size: large" > Thing to know about fish-oil.......... <p>

       <p style="font-size: medium">Fish oil is oil derived from the tissues of oily fish. Fish oils contain the omega-3 fatty acids eicosapentaenoic acid (EPA) and docosahexaenoic acid (DHA), precursors of certain eicosanoids that are known to reduce inflammation in the body, and have other health benefits, such as treating hypertriglyceridemia, although claims of preventing heart attacks or strokes have not been supported. Fish oil and omega-3 fatty acids have been studied in a wide variety of other conditions, such as clinical depression,anxiety, cancer, and mascular degeneration, yet benefits in these conditions have not been verified.
       </p><a href="fishoil.jsp" target="ContentFrame">Read More</a>
    </div>
        </div>
        <div class="container">
        <aside id="sticky-social">
        <ul>
        <li><a href="www.facebook.com/StayHealthy" class="entypo-facebook " target="_blank"><span>Facebook</span></a></li>
        <li><a href="www.twitter.com/StayHealthy" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a href="www.googleplus.com/StayHealthy" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a href="www.linked.in/StayHealthy" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>
        <li><a href="" class="entypo-instagrem" target="_blank"><span>Instagram</span></a></li>
        </ul>
        </aside>
        </div>
        
    </body>
        
</html>
