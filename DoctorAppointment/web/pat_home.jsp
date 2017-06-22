<%-- 
    Document   : pat_home
    Created on : May 31, 2017, 9:53:15 PMdd
    Author     : Priyanka WorkSpace
--%>

<%@page import="com.pro.dao.DBconnection"%>
<%@page import="java.sql.*"%>
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
        <script>
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>
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
#myInput {
    background-image: url('/css/searchicon.png'); /* Add a search icon to input */
    background-position: 10px 12px; /* Position the search icon */
    background-repeat: no-repeat; /* Do not repeat the icon image */
    width: 100%; /* Full-width */
    font-size: 16px; /* Increase font-size */
    padding: 12px 20px 12px 40px; /* Add some padding */
    border: 1px solid #ddd; /* Add a grey border */
    margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
    border-collapse: collapse; /* Collapse borders */
    width: 100%; /* Full-width */
    border: 1px solid #ddd; /* Add a grey border */
    font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
    text-align: left; /* Left-align text */
    padding: 12px; /* Add padding */
}

#myTable tr {
    /* Add a bottom border to all table rows */
    border-bottom: 1px solid #ddd; 
}

#myTable tr.header, #myTable tr:hover {
    /* Add a grey background color to the table header and on hover */
    background-color: #f1f1f1;
}

        </style>
    </head>
    <body>
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
            <div class="item active">
            <img class="first-slide" src="Images/nuc.jpg" alt="First slide" width="900" height="200">
        </div>
        <div class="item">
            <img class="second-slide" src="Images/Raisins.png" alt="Second slide"width="900" height="200">
        </div>
          
        <div class="item">
            <img class="third-slide" src="Images/lemon.png" alt="Third slide"width="900" height="200">
        </div>
          
        <div class="item">
            <img class="fourth-slide" src="Images/macadamia.png" alt="Fourth slide" width="900" height="200">
        </div>  
        <div class="item">
            <img class="fifth-slide" src="Images/woodapples.jpg" alt="Fifth slide" width="900" height="200">
        </div>  
        <div class="item">
            <img class="sixth-slide" src="Images/Untitled.png" alt="Sixth slide" width="900" height="200">
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
    
    <div class="container">
    <center><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for DISEASE Names.."></center>
    <table id="myTable">
  <tr class="header">
    <th style="width:15%;">DISEASE ID</th>
    <th style="width:30%;">DISEASE NAME </th>
    <th style="width:45%;">SYMPTOMS</th>
    <th style="width:7%;">SHOW</th>
  </tr>
   <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            con = DBconnection.getConnection();
            String sql = "SELECT DS_ID,DISEASE_NAME,SYMPTOMS,PREVENTION,CURE FROM DISEASE ";
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            String dsid,dname,sym,pre,cure;
            %>
            <tr>
            <%
            while(rs.next())
            {
                
             dsid=rs.getString(1);
             dname=rs.getString(2);
             sym=rs.getString(3);
             pre=rs.getString(4);
             cure=rs.getString(5);
            %>
            
            <td class="col-lg-1"><%out.println(dsid);%> </td>
            <td class="col-lg-1"><%out.println(dname);%> </td>
            <td class="col-lg-1"><%out.println(sym);%> </td>
            
            <td class="col-lg-1"> <form action="viewdisease.do" method="post" class="form" id="fileForm" role="form">
                    <input type="hidden" value="<%out.println(dsid);%>" name="txtid" />
                    <button type="submit" class="btn btn-info">Show</button>
                </form>
            </td>
            </tr>
            <%
            }
            %>
            <%
            }
            catch(SQLException sqe)
            { 
            out.println(sqe);
            }
            %>
</table>
    <div class="container">
        <aside id="sticky-social">
        <ul>
        <li><a href="https://www.facebook.com/Stayhealthyhospital" class="entypo-facebook " target="_blank"><span>Facebook</span></a></li>
        <li><a href="https://twitter.com/Stayhealthyhospital" class="entypo-twitter" target="_blank"><span>Twitter</span></a></li>
        <li><a href="https://www.googleplus.com/Stayhealthyhospital" class="entypo-gplus" target="_blank"><span>Google+</span></a></li>
        <li><a href="https://www.linked.in/Stayhealthyhospital" class="entypo-linkedin" target="_blank"><span>LinkedIn</span></a></li>
        <li><a href="https://www.instagram.com/Stayhealthyhospital" class="entypo-instagrem" target="_blank"><span>Instagram</span></a></li>
        </ul>
        </aside>
        </div>
    </div>
    </body>
</html>
