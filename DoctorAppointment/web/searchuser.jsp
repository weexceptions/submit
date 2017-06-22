<%-- 
    Document   : searchuser
    Created on : Jun 6, 2017, 7:47:53 PM
    Author     : Sunny
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.pro.dao.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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

        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homestylesheet.css">
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
        <title>Search page</title>
    </head>
    <body><div class="container">
    <center><input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Names.."></center>
        </div>
    <div class="container-fluid">
    <table id="myTable">
  <tr class="header">
    <th>UID</th>
    <th>FNAME </th>
    <th>LNAME</th>
    <th>VIEW</th>
  </tr>
   <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            con = DBconnection.getConnection();
            String sql = "SELECT UID,FNAME,LNAME,DOB,EMAIL,ADDRESS,PHONE FROM USERDETAIL WHERE UTYPE ='P'";
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            String uid,fname,lname,dob,email,addr,phone;
            %>
            <tr>
            <%
            while(rs.next())
            {
                
             uid=rs.getString(1);
             fname=rs.getString(2);
             lname=rs.getString(3);
             dob=rs.getString(4);
             email=rs.getString(5);
             addr=rs.getString(6);
             phone=rs.getString(7);
            %>
            
            <td class="col-lg-1"><%out.println(uid);%> </td>
            <td class="col-lg-1"><%out.println(fname);%> </td>
            <td class="col-lg-1"><%out.println(lname);%> </td>
            
            <td class="col-lg-1"> <form action="viewuser.do" method="post" class="form" id="fileForm" role="form">
                    <input type="hidden" value="<%out.println(uid);%>" name="txtuid" />
                    <input type="hidden" value="noedit" name="edit" />
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
