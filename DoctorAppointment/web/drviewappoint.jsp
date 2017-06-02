<%-- 
    Document   : drviewappoint
    Created on : May 29, 2017, 9:12:48 PM
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
        <title>View DR JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <style>
    body{
        background-image: url('Images/background.jpg');
    }
    h1{
        font-family: cursive;
        font-feature-settings: normal;
        font-style: italic;
        font-weight: bold;
    }
    .table-hover>tbody>tr:hover{background-color:  #00aced;}
            
        </style>
    
    </head>f
    <body>
        <h1 class="well text-center text-success">Your Appoints!</h1>
        <div class="container">
        <table class="table-condensed table-hover" border="0">
            <th class="col-lg-1">A_ID</th>
            <th class="col-lg-1">P_ID</th>
            <th class="col-lg-1">D_ID</th>
            <th class="col-lg-1">DESCRIPTION</th>
            <th class="col-lg-1">A_DATE</th>
            <th class="col-lg-1">A_TIME</th>
            <th class="col-lg-1">LOCATION</th>
            <th class="col-lg-1">STATUS</th>
            <th class="col-lg-1">link</th>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            con = DBconnection.getConnection();
            String id=request.getParameter("userId");
            System.out.println("User id in viewappointment is "+id);
            String sql = "SELECT A_ID,P_ID,D_ID,DESCRIPTION,A_DATE,A_TIME,LOCATION,STATUS FROM APPOINTMENT WHERE D_ID = '"+id.toLowerCase()+"' ORDER BY A_DATE,A_TIME";
            
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
            <td class="col-lg-1"><%out.println(aid);%> </td>
            <td class="col-lg-1"><%out.println(pid);%> </td>
            <td class="col-lg-1"><%out.println(did);%> </td>
            <td class="col-lg-1"><%out.println(desc);%> </td>
            <td class="col-lg-1"><%out.println(adate);%> </td>
            <td class="col-lg-1"><%out.println(atime);%> </td>
            <td class="col-lg-1"><%out.println(loc);%> </td>
            <td class="col-lg-1"><%out.println(status);%> </td>
            <td class="col-lg-1"> <form action="viewuser.do" method="post" class="form" id="fileForm" role="form">
                    <input type="hidden" value="<%out.println(pid);%>" name="txtid" />
                    <button type="submit" class="btn btn-info">View</button>
                </form>
            </td>
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
