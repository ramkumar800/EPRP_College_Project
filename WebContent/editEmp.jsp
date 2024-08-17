<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.EDB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="icon" href="Untitled.png" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPR Portal</title>
</head>
<body>
<%@include file = "header1.html" %>
<br/>

<!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <center>
<div class="register-container container">
            <!--   <div class="row"> -->
                
                 <div class="register span6">
                    
                    	
     <% 
     	Connection con=EDB.getCon();
     	PreparedStatement ps=con.prepareStatement("select * from employee where ECODE=?");
     	System.out.println("Getting ECODE ========    "+request.getParameter("editR"));
     	int ecode=Integer.parseInt(request.getParameter("editR"));
     	ps.setInt(1,ecode);
     	ResultSet rs=ps.executeQuery();
     	rs.next();
     	System.out.println("ECODE===========    "+rs.getString(1));
     %>
   
                    	
     
           <form action="editEmp1.jsp" method="post">
    <input type="hidden" name="ecode" value='<%= rs.getString(1) %>'>	
         
         <table width="500" height="398" border="0" align="center">
  <tr>
    <td width="230" bgcolor="skyblue">Employee Code</td>
<td><input name="ECODE" type="text" size="20" value='<%= rs.getString(1) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Employee Name</td>
    <td><input name="ENAME" type="text" size="20" value='<%= rs.getString(5) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Department Name</td>
    <td><input name="DEPARTMENT" type="text" size="20" value='<%= rs.getString(6) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Role</td>
    <td><input name="ROLE" type="text" size="20" value='<%= rs.getString(12) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Email Address</td>
    <td><input name="EMAIL" type="text" size="20" value='<%= rs.getString(3) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Date of Joining</td>
    <td><input name="DOJ" type="text" size="20" value='<%= rs.getString(4) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue">Mobile</td>
    <td><input name="MOBILE" type="text" size="20" value='<%= rs.getString(10) %>'></td>
  </tr>
 
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="Submit"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
         
         
                	
                   
                </div>
            </div>
       
</center>
<br/>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

<%@include file = "footer1.html" %>

</body>
</html>