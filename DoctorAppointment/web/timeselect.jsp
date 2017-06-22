<%-- 
    Document   : timeselect
    Created on : May 30, 2017, 3:52:36 PM
    Author     : Sunny
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.pro.dao.DBconnection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Slot</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style>
    form{
        padding-top: 100px;
    }
</style>
    </head>
    <body>
        <br/>
        <div class="well container">
            <h1>Time Slot Selection & Description. </h1>
            
              <form action="makeAppointment.do" method="post" >
                   <input type="hidden" value="<%out.print(request.getAttribute("id"));%>" name="txtpid" />
                   <input type="hidden" value="<%out.print(request.getAttribute("dr"));%>" name="txtdid" />
                   <input type="hidden" value="<%out.print(request.getAttribute("date"));%>" name="txtdate" />
                   <input type="hidden" value="<%out.print(request.getAttribute("loc"));%>" name="txtlocation" />
                   
                  <table border="0">
                      <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Patient name :</label></td>
                          <td class="col-lg-6"><input type="txt" class="input-sm" disabled="true" value="<%out.print(request.getAttribute("name"));%>"><br/></td>
                      </tr>
                      <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Doctor Name:</label></td>
                          <!--Doctor Name-->
                          <td class="col-lg-6"><input type="txt" class="input-sm" disabled="true" value="<%
                        Connection con = null;
                        PreparedStatement ps = null;
                        PreparedStatement ps2 = null;
                        String fullname;
                  try
                        {
                        con = DBconnection.getConnection();
                        String sql =  "SELECT UID,fname,lname FROM USERDETAIL where UTYPE = 'Dr'";           
                        ps = con.prepareStatement(sql);
                        String uid;
                        ResultSet rs = ps.executeQuery(); 
                        while(rs.next())
                        {
                        uid=rs.getString("UId");
                        System.out.println(uid);
                        String fname = rs.getString("fname").toUpperCase(); 
                        String lname = rs.getString("lname".toUpperCase()); 
                        System.out.println("Id of dr is "+request.getAttribute("dr"));
                        if (uid.equals(request.getAttribute("dr"))) {
                        fullname= fname+" "+lname.toUpperCase(); 
                        System.out.println("Fname "+fname+" Lname "+lname);
                        out.print(fullname);
                        break;
                        }
                        }
                        }
                        catch(SQLException sqe)
                        { 
                        out.println(sqe);
                        }
                        %>">
                          </td>
                    </tr>
                    <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Date :</label></td>
                          <td class="col-lg-6"><input type="date" class="input-sm" disabled="true" name="date" value="<%out.print(request.getAttribute("date"));%>"></td>
                    </tr>
                    <tr class="row">
                        <td class="col-lg-6"><label for="appt timeslot">Appointment Time:</label></td>   
                        <td class="col-lg-6">
                     
                        <select type="text" class="form-control" name="txttime"  required>
                            <option disabled selected id="Time">Select Time</option>
                            <% String mDate="";
                            try{
                                String atime;
                                String tval="0";
                                String appDate;
                                con = DBconnection.getConnection();
                                String sql = "SELECT A_DATE,A_TIME FROM APPOINTMENT WHERE D_ID ='"+request.getParameter("txtdr").toLowerCase()+"'";
                                ps = con.prepareStatement(sql);
                                ResultSet rs = ps.executeQuery(); 
                               
                                boolean flag=false;
                                while(rs.next()){
                                     appDate=rs.getString(1);
                                if (appDate.equals(request.getAttribute("date"))) {
                                     System.out.println("True condition");
                                     mDate=appDate;
                                     flag=true;
                                break;//date matches    
                                }
                                else if (!(appDate.equals(request.getAttribute("date")))) {
                                        System.out.println("Else block");
                                    }
                                }
                                System.out.println("flag is "+flag);//true matlab already hai koi appointment
                                
                                if (flag) {
                                        System.out.println("Match hua date");
                                        String sql2 = "SELECT A_DATE,A_TIME FROM APPOINTMENT WHERE D_ID ='"+request.getParameter("txtdr").toLowerCase()+"' AND A_DATE = '"+mDate+"'";
                                        ps2 = con.prepareStatement(sql2);
                                        
                                        {
                                        System.out.println("While loop");
                                        String dselect=null;
                                         atime="Select";
                                              for (int i = 1; i < 9; i++) {
                                                  ResultSet rs2 = ps2.executeQuery(); 
                                                  int btime=0;
                                               if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                     }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                               else if (rs2.next()&&(i==rs2.getInt(2))) {
                                                         System.out.println("next col");
                                                         btime=rs2.getInt(2);
                                                         System.out.println("btime "+btime);
                                                         atime="Booked";
                                                         dselect="disabled";
                                                         rs2.next();
                                                   }
                                         else{
                                             dselect=null;
                                             switch (i) {
                                                     case 1:
                                                         atime="9 to 10";
                                                         tval="1";
                                                         break;
                                                     case 2:
                                                         atime="10 to 11";
                                                         tval="2";
                                                         break;
                                                     case 3:
                                                         atime="11 to 12";
                                                         tval="3";
                                                         break;
                                                     case 4:
                                                         atime="12 to 1";
                                                         tval="4";
                                                         break;
                                                     case 5:
                                                         atime="2 to 3";
                                                         tval="5";
                                                         break;
                                                     case 6:
                                                         atime="3 to 4";
                                                         tval="6";
                                                         break;
                                                     case 7:
                                                         atime="5 to 6";
                                                         tval="7";
                                                         break;
                                                     case 8:
                                                         atime="6 to 7";
                                                         tval="8";
                                                         break;
                                                     default:
                                                         atime="Booked";
                                                         tval="0";
                                                 }}
                                         %>
                        <option <%=dselect%> value="<%=tval %>"><%=atime %></option>
                        <%
                                              }
                                          }
                                        }
                                else{
                                    for (int i = 1; i < 9; i++) {
                                     switch (i) {
                                     case 1:
                                         atime="9 to 10";
                                         tval="1";
                                         break;
                                     case 2:
                                         atime="10 to 11";
                                         tval="2";
                                         break;
                                     case 3:
                                         atime="11 to 12";
                                         tval="3";
                                         break;
                                     case 4:
                                         atime="12 to 1";
                                         tval="4";
                                         break;
                                     case 5:
                                         atime="2 to 3";
                                         tval="5";
                                         break;
                                     case 6:
                                         atime="3 to 4";
                                         tval="6";
                                         break;
                                     case 7:
                                         atime="5 to 6";
                                         tval="7";
                                         break;
                                     case 8:
                                         atime="6 to 7";
                                         tval="8";
                                         break;
                                     default:
                                         atime="Booked";
                                         tval="0";
                                    }%>
                                    <option value="<%=tval %>"><%=atime %></option>
                                    <% }
                                }
                            }
                            catch(Exception sqe)
                            { 
                            out.println(sqe);
                            }
                            %>
                        </select>
                        </td>
                    </tr>
                    <tr class="row">
                        <td class="col-lg-6"><label class="control-label"  for="patientname">Description :</label></td>
                        <td class="col-lg-6"><textarea type="text" class="form-control input-lg" name="txtdesc" placeholder="Enter your Problem"></textarea></td>
                    </tr><br/>
                    <tr class="row">
                       <td colspan="2"> <center><button type="submit" class="btn form-control btn-success" >Book Appointment</button></center></td>
                        </tr>
              </table>
              </form>
        </div>
    </body>
</html>
