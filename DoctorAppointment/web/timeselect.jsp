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
        <div class="container">
              <form action="makeAppointment.do" method="post" >
                   <input type="hidden" value="<%out.print(request.getAttribute("id"));%>" name="txtpid" />
                   <input type="hidden" value="<%out.print(request.getAttribute("dr"));%>" name="txtdid" />
                   <input type="hidden" value="<%out.print(request.getAttribute("date"));%>" name="txtdate" />
                   
                  <table border="0">
                      <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Patient name :</label></td>
                          <td class="col-lg-6"><input type="txt" class="input-sm" disabled="true" value="<%out.print(request.getAttribute("name"));%>"><br/></td>
                      </tr>
                      <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Doctor Name:</label></td>
                          <!--here u insert setAtribute code in input text below -->
                          <td class="col-lg-6"><input type="text" class="input-sm" disabled="true" value="<%
                        Connection con = null;
                        PreparedStatement ps = null;
                        PreparedStatement ps2 = null;
                        String fullname;
                  try
                        {
                        con = DBconnection.getConnection();
                        String sql =  "SELECT D_ID,fname,lname FROM USERDETAIL where D_ID IS NOT NULL";           
                        ps = con.prepareStatement(sql);
                        String did;
                        ResultSet rs = ps.executeQuery(); 
                        while(rs.next())
                        {
                        did=rs.getString("D_ID");
                        System.out.println(did);
                        String fname = rs.getString("fname").toUpperCase(); 
                        String lname = rs.getString("lname".toUpperCase()); 
                        System.out.println("Id nof dr is "+request.getAttribute("dr"));
                        if (did.equals(request.getAttribute("dr"))) {
                        fullname= fname+" "+lname.toUpperCase(); 
                        System.out.println("Fname "+fname+" lname "+lname);
                        out.print(fullname);
                        break;
                        }
                        }
                        }
                        catch(SQLException sqe)
                        { 
                        out.println(sqe);
                        }
                        %>"><br/></td>
                      </tr>
                      <tr class="row">
                          <td class="col-lg-6"><label class="control-label" for="patientname">Date :</label></td>
                          <td class="col-lg-6"><input type="date" class="input-sm" disabled="true" name="date" value="<%out.print(request.getAttribute("date"));%>"><br/></td>
                      </tr>
                      <tr class="row">
                      <tr class="row">
                     
                          <td class="col-lg-12">   
            <div  class="form-group">
                    <label for="appt timeslot">Appointment Time:</label>
                    <select type="text" class="form-control" name="txttime"  required>
                        
                         
                        <p>Select Name :
                       
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
                           
                  
            </div>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <td class="col-lg-6"><label class="control-label"  for="patientname">Description :</label></td>
                              <td class="col-lg-6"><textarea type="text" class="form-control input-lg" name="txtdesc" placeholder="Enter your Problem"></textarea>
                          </td>
                      </tr>
                        <tr>
                            <td colspan="2"> <button type="submit" class="btn btn-success" >Submit</button></td>
                        </tr>
              </table>
              </form>
        </div>
    </body>
</html>
