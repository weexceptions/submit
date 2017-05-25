<%-- 
    Document   : forget
    Created on : May 23, 2017, 10:11:41 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1
        <script type="text/javascript" src="jquery.js"></script>
<input type="text" name="txtUsername" id="username">@gmail.com
<div id="status"></div>
<script type="text/javascript" src="js/check_user.js"></script>
<span id="errorMissingUserName" style="display:none;"><font color="red">*Please provide your username.</font></span>
<span id="errorUserNameInvalid" style="display:none;"><font color="red">*Please provide a valid username.Username can contain only alphabets numbers and periods</font></span>
<span class="status"></span>
    </body>
</html>
<%--
<tr>
<td>Choose your UserName* :</td>
<td><script type="text/javascript" src="jquery.js"></script>
<input type="text" name="txtUsername" id="username">@gmail.com
<div id="status"></div>
<script type="text/javascript" src="js/check_user.js"></script>
<span id="errorMissingUserName" style="display:none;"><font color="red">*Please provide your username.</font></span>
<span id="errorUserNameInvalid" style="display:none;"><font color="red">*Please provide a valid username.Username can contain only alphabets numbers and periods</font></span>
<span class="status"></span>
</tr>

--%>

<%--
 my servlet: 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            PrintWriter out=response.getWriter();
            String uname=request.getParameter("txtUsername");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname/uname/pass");
                PreparedStatement ps=conn.prepareStatement("select * from register where UserName=?");
ps.setString(1,uname);
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    out.println("<font color=green>");
                    out.println("UserName  available");
                    out.println("</font>");
                    }
                else{
                    out.println("<font color=red>");
                    out.println("UserName is not available");
                    out.println("</font>");
                }
                rs.close();
                ps.close();
                conn.close();
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
 
        }
 
    }


ref: https://coderanch.com/t/629842/databases/check-user-avialability-jsp-mysql
--%>
