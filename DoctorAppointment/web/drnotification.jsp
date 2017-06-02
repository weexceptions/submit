<%-- 
    Document   : drnotification
    Created on : May 29, 2017, 9:15:29 PM
    Author     : Sunny
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.pro.dao.DBconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View DR Notification Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
    body{
        background-image: url('Images/background2.jpg');
    }
    h1{
        font-family: cursive;
        font-feature-settings: normal;
        font-style: italic;
        font-weight: bold;
    }
    .table-hover>tbody>tr:hover{background-color:  ivory;}
    
</style>    
    </head>
    <body>
        <h1 class="well text-center text-success"> Appoints Notifications!</h1>
        <div class="container">
            <table class="table-hover table-condensed" border="0">
                
            <th class="col-lg-2">P_ID</th>
            <th class="col-lg-2">DESCRIPTION</th>
            <th class="col-lg-2">A_DATE</th>
            <th class="col-lg-2">A_TIME</th>
            <th class="col-lg-2">LOCATION</th>
            <th class="col-lg-2">Actions</th>
                
        <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            con = DBconnection.getConnection();
            String sql = "SELECT A_ID,P_ID,D_ID,DESCRIPTION,A_DATE,A_TIME,LOCATION,STATUS FROM APPOINTMENT";
            
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            String aid,pid,did,desc,adate,atime,loc,status;
            %>
            <tr>
            <%
            while(rs.next())
            {
             aid=rs.getString(1);
             pid=rs.getString(2);
             did=rs.getString(3);
             desc=rs.getString(4);
             adate=rs.getString(5);
             atime=rs.getString(6);
             loc=rs.getString(7);
             status=rs.getString(8);
            %>
            <td class="col-lg-2"><%out.println(pid);%> </td>
            <td class="col-lg-2"><%out.println(desc);%> </td>
            <td class="col-lg-2"><%out.println(adate);%> </td>
            <td class="col-lg-2"><%out.println(atime);%> </td>
            <td class="col-lg-2"><%out.println(loc);%> </td>
            <td class="col-lg-2"><a href="drviewappoint.jsp">View Details</a></td>
            </tr>
            <%
            }
            %>
        </table>
            <%
            }
            catch(SQLException sqe)
            { 
            out.println(sqe);
            }
            %>
        </div>
    </body>
</html>
