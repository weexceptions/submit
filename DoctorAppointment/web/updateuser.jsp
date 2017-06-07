<%-- 
    Document   : updateuser
    Created on : Jun 6, 2017, 9:01:42 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body><div class="well"><h2></h2></div>
        <div class="container">
                         <form action="updateuser.do" method="post" class="form" id="fileForm" role="form">
            <table class="text-justify">
                <tr class="row">
                    <td class="col-lg-6 col-sm-6">
                        <label class="col-lg-5">User Id :</label><input type="text" name="txtpid2" class="input-sm col-lg-7" disabled="true" value="<%out.print(request.getAttribute("uid"));%>"><br/><br/>
                <label class="col-lg-5">First Name :</label><input type="text" class="input-sm col-lg-7" name="txtfname"  value="<%out.print(request.getAttribute("fname"));%>"><br/><br/>
                <label class="col-lg-5">DOB :</label><input type="text" name="txtdob" class="input-sm col-lg-7"  value="<%out.print(request.getAttribute("dob"));%>"><br/><br/>
                <label class="col-lg-5">Email :</label><input type="text"  name="txtemail" class="input-sm col-lg-7"  value="<%out.print(request.getAttribute("email"));%>"><br/><br/>
                <label class="col-lg-5">Address :</label><input name="txtaddress" type="text" class="input-sm col-lg-7" value="<%out.print(request.getAttribute("addr"));%>"><br/><br/>
                    </td>
                    <td class="col-lg-6 col-sm-6">
                <label class="col-lg-5">Last Name :</label><input type="text" name="txtlname" class="input-sm col-lg-7"  value="<%out.print(request.getAttribute("lname"));%>"><br/><br/>
                <label class="col-lg-5">Gender :</label><input name="txtsex" type="text" class="input-sm col-lg-7" value="<%out.print(request.getAttribute("gender"));%>"><br/><br/>
                <label class="col-lg-5">Age Group:</label>
                <select name="txtage" class="form-control" required >
                    <option value="" disabled selected id="age">Select Age Group</option>
                    <option value="1" id="age">Below 19</option>
                    <option value="2" id="age">20 - 39</option>
                    <option value="3" id="age">40 - 59</option>
                    <option value="4" id="age">60 - 79</option>
                    <option value="5" id="age">80 Above</option>
                </select><br/><br/>
                <label class="col-lg-5">Phone No.:</label><input name="txtphone" type="text" class="input-sm col-lg-7"  value="<%out.print(request.getAttribute("phone"));%>"><br/><br/>
                    </td>
                </tr>
            </table>
                
                    <input type="hidden" value="<%out.println(request.getAttribute("uid"));%>" name="txtpid" />
                    <button type="submit" class="btn btn-success"> Update</button>
                </form>
            </div>
        
    </body>
</html>

    </body>
</html>
