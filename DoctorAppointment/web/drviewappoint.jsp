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
    </head>
    <body>
        <h1>Your Appoints!</h1>
        <table border="1">
            <th>A_ID</th>
            <th>P_ID</th>
            <th>D_ID</th>
            <th>DESCRIPTION</th>
            <th>A_DATE</th>
            <th>A_TIME</th>
            <th>LOCATION</th>
            <th>STATUS</th>
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
            <td><%out.println(aid);%> </td>
            <td><%out.println(pid);%> </td>
            <td><%out.println(did);%> </td>
            <td><%out.println(desc);%> </td>
            <td><%out.println(adate);%> </td>
            <td><%out.println(atime);%> </td>
            <td><%out.println(loc);%> </td>
            <td><%out.println(status);%> </td>
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
    </body>
</html>
