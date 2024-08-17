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
     	PreparedStatement ps=con.prepareStatement("select * from project where pid=?");
     	System.out.println("Getting PID ========    "+request.getParameter("editP"));
     	int pid=Integer.parseInt(request.getParameter("editP"));
     	ps.setInt(1,pid);
     	ResultSet rs=ps.executeQuery();
     	rs.next();
     	System.out.println("PID===========    "+rs.getString(1));
     %>
   
                    	
     
           <form action="edit1.jsp" method="post">
    <input type="hidden" name="pid" value='<%= rs.getString(1) %>'>	
         
         <table width="500" height="398" border="0" align="center">
  <tr>
    <td width="230" bgcolor="skyblue"><b>Project Code</b></td>
<td><input name="pcode" type="text" size="20" value='<%= rs.getString(1) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Project Name</b></td>
    <td><input name="pname" type="text" size="20" value='<%= rs.getString(2) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Client</b></td>
    <td><input name="client" type="text" size="20" value='<%= rs.getString(3) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Duration</b></td>
    <td><input name="duration" type="text" size="20" value='<%= rs.getString(4) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Start Date</b></td>
    <td><input name="start_date" type="text" size="20" value='<%= rs.getString(5) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>End Date</b></td>
    <td><input name="end_date" type="text" size="20" value='<%= rs.getString(6) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Cost</b></td>
    <td><input name="cost" type="text" size="20" value='<%= rs.getString(7) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Category</b></td>
    <td><input name="category" type="text" size="20" value='<%= rs.getString(8) %>'></td>
  </tr>
  <tr>
    <td bgcolor="skyblue"><b>Description</b></td>
    <td><input name="description" type="text" size="20" value='<%= rs.getString(9) %>'></td>
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