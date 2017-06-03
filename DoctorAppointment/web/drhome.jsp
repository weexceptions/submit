<%-- 
    Document   : drhome
    Created on : May 29, 2017, 9:11:24 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        
        <style>            
        
.navbar-brand {
  height: 100px;
}

.nav >li >a {
  padding-top: 10px;
  padding-bottom: 10px;
}
.navbar-toggle {
  padding: 5px;
  margin: 25px 15px 25px 0;
}        
#frame1{
  border: 1px solid black; margin-left: 1px; float: left; margin-top: 0px;
}
#frame2{
 border: 1px solid black; margin-right: 1px; float:right; margin-top: 0px
}
body{
 background-color: #46b8da;
}
</style>
    </head>
    <body>
        
        <div class="container">
            <div class="row" id="siteheader">
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">
             <h4 style="float: right; color: #ffffff">Contact No.: 9876543210</h4>
             <img src="Images/logo2.png" width="20%" height="100%"  alt="StayHealthy">
             <p style="float: right; color:#ff0; size: auto" class="text-danger">Welcome <%out.print(request.getAttribute("auser"));%></p>
        </a>
         
      </div>
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
          <li class="active"><a href="#" target="ContentFrame">Home</a></li>
          <li><form target="ContentFrame" method="post" action="drnotification.jsp">  
                    <input type="hidden" name="userId" value="<%out.print(request.getAttribute("auser"));%>">
                    <button class="btn btn-link" type="submit">Notification</button>  </li></form>
              
          <li><form target="ContentFrame" method="post" action="drviewappoint.jsp">  
                    <input type="hidden" name="userId" value="<%out.print(request.getAttribute("auser"));%>">
                    <button class="btn btn-link" type="submit">View Appointment</button>  </li></form>
          <li class="dropdown">
                
              <li><a target="ContentFrame" href="userprofile.jsp">My Profile</a></li>
              
         </li>
          <li><a href="disease.jsp" target="ContentFrame" >Add Disease</a></li>
         
          <li><a target="_blank" href="index.jsp" onclick=window.close()>LogOut</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    <!--/.container-fluid -->
  </nav>
            </div>
            <div class="row" id="container">
                <IFRAME seamless="seamless" scrolling="no" src="left3.do?a=<%out.print(request.getAttribute("auser"));%>" id="frame1" scrollig="no" name="NavigationFrame" width="19%" height="800" > </IFRAME>
            <IFRAME seamless="seamless" scrolling="yes" src="home.jsp" id="frame2" name="ContentFrame" width="80%" height="800" ><h1>Content</h1></IFRAME>
            </div>
            
        <footer>
        <div class="container-fluid" style="background-color: black">
    <div class="row">
    <div class="col-lg-12 text-danger text-center text-muted">
    <p class="pull-right">
    <a href="#">Back to top</a></p>
        <p> 
            &copy; 2017 &middot; StayHealthy &middot; <a target="ContentFrame" href="privacypolicy.htm">Privacy</a> &middot; <a href="#">Terms</a>
        </p>
    </div>
    </div>
    </div>
    </footer>
        </div>
    </body>
</html>
