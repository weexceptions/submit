<%-- 
    Document   : deletedruser
    Created on : Jun 6, 2017, 2:22:58 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <style>
            .table-hover>tbody>tr:hover{background-color:  yellowgreen;}
            #table{
                background-color: whitesmoke;
                color: black;
                text-justify: distribute;
            }
        </style>
    </head>
    <body style="background-image: url('Images/bg.jpg')">
        <div class="container">
            <h3 class="well">Delete Doctor</h3>
            <form action="deletedruser.do" method="post" class="form-group" >
                <div class="form-group">
                    <label class="text-justify"><p>Doctor UserId:</p></label><br/>
                <input type="text" class="form-control" placeholder="Enter Doctorid" name="txtuid"><br/>
                <button type="submit" class="btn btn-danger">Delete</button>       
            </div> 
            </form>
        </div>
       
        <div class="container" >
            <h1 class="well text-justify"><center>User Detail</center></h1>
            <table class="table-condensed table-hover" border="0">
                <thead class="row">
                <th class="col-lg-2">UID</th>    
                <th class="col-lg-2">Doctor Id</th>
                <th class="col-lg-2">Password</th>
                <th class="col-lg-2">First Name</th>
                <th class="col-lg-2">Last Name</th>
                <th class="col-lg-2">DOB</th>
                <th class="col-lg-2">EMAIL</th>
                <th class="col-lg-2">ADDDRESS</th>
                <th class="col-lg-2">PHONE</th>
                </thead>
                <tr>
                    
                    <%
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
            con = DBconnection.getConnection();
            String sql = "SELECT UID,P_ID,D_ID,FNAME,LNAME,DOB,EMAIL,ADDRESS,PHONE,PASSWORD FROM USERDETAIL WHERE D_ID IS NOT NULL ";
            
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            String pid,did,fname,lname,dob,email,addr,phone,pass;
            int uid;
            %>
            <tr>
            <%
            while(rs.next())
            {
             uid=rs.getInt(1);
             pid=rs.getString(2);
             did=rs.getString(3);
             fname=rs.getString(4);
             lname=rs.getString(5);
             dob=rs.getString(6);
             email=rs.getString(7);
             addr=rs.getString(8);
             phone=rs.getString(9);
             pass=rs.getString(10);
            %>
            
            <td class="col-lg-1"><%out.println(uid);%> </td>
            <td class="col-lg-1"><%out.println(did);%> </td>
            <td class="col-lg-1"><%out.println(pass);%> </td>
            <td class="col-lg-1"><%out.println(fname);%> </td>
            <td class="col-lg-1"><%out.println(lname);%> </td>
            <td class="col-lg-1"><%out.println(dob);%> </td>
            <td class="col-lg-1"><%out.println(email);%> </td>
            <td class="col-lg-1"><%out.println(addr);%> </td>
            <td class="col-lg-1"><%out.println(phone);%> </td>
            
            <td class="col-lg-1"> <form action="deletedruser.do" method="post" class="form" id="fileForm" role="form">
                    <input type="hidden" value="<%out.println(did.toLowerCase());%>" name="txtuid" />
                    <button type="submit" class="btn btn-danger">Delete</button>
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
                </tr>
            </table>
        </div>
            
    </body>
</html>
