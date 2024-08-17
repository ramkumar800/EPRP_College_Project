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
     	PreparedStatement ps=con.prepareStatement("select * from employee where ecode=?");
     	System.out.println("Getting ECODE ========    "+request.getParameter("deletE"));
     	int ecode=Integer.parseInt(request.getParameter("deletE"));
     	ps.setInt(1,ecode);
     	ResultSet rs=ps.executeQuery();
     	rs.next();
     	System.out.println("ecode===========    "+rs.getString(1));
     %>
    <form action="deleteEmployee.jsp" method="post">
    <input type="hidden" name="ecode" value='<%= rs.getString(1) %>'/>
    
      
 
  <table width="500" height="351" border="0" align="center">
  <tr>
    <td width="205" bgcolor="skyblue"><div align="center"><strong>Employee Code </strong></div></td>
    <td width="381"><div align="center"><%= rs.getString(1) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><div align="center"><strong>Employee Name </strong></div></td>
    <td><div align="center"><%= rs.getString(5) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><div align="center"><strong>Department Id </strong></div></td>
    <td><div align="center"><%= rs.getString(6) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><div align="center"><strong>Role</strong></div></td>
    <td><div align="center"><%= rs.getString(12) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><div align="center"><strong>Email address </strong></div></td>
    <td><div align="center"><%= rs.getString(3) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><div align="center"><strong>Date of Joining </strong></div></td>
    <td><div align="center"><%= rs.getString(4) %></div></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"> <div align="center"><strong>Mobile </strong></div></td>
    <td><div align="center"><%= rs.getString(10) %></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Submit" value="Delete"></td>
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