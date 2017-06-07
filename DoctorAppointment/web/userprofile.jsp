<%-- 
    Document   : profil
    Created on : May 29, 2017, 2:34:31 PM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
    <body><div class="container text-center" >
            <h1 class="well text-primary">
                Hello, Doctor!
                </h1>
            </div><hr>

        <div class="container">
            <table class="text-justify">
                <tr class="row">
                    <td class="col-lg-6 col-sm-6">
                <label class="col-lg-5">User Id :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("uid"));%>"><br/><br/>
                <label class="col-lg-5">First Name :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("fname"));%>"><br/><br/>
                <label class="col-lg-5">DOB :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("dob"));%>"><br/><br/>
                <label class="col-lg-5">Email :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("email"));%>"><br/><br/>
                <label class="col-lg-5">Address :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("addr"));%>"><br/><br/>
                    </td>
                    <td class="col-lg-6 col-sm-6">
                <label class="col-lg-5">Last Name :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("lname"));%>"><br/><br/>
                <label class="col-lg-5">Gender :</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("gender"));%>"><br/><br/>
                <label class="col-lg-5">Age Group:</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("agegr"));%>"><br/><br/>
                <label class="col-lg-5">Phone No.:</label><input type="text" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("phone"));%>"><br/><br/>
                    </td>
                </tr>
            </table>
                <%
                if (request.getAttribute("edit").equals("edit")) {
                      %>
                 <form action="edituser.do" method="post" class="form" id="fileForm" role="form">
                    <input type="hidden" value="<%out.print(request.getAttribute("uid"));%>" name="txtid" />
                    <button type="submit" class="btn btn-info">Edit or Update</button>
                </form>
                    <%  
                    }
                %>
            </div>
        
    </body>
</html>
