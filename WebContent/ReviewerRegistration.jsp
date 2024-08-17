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
                
                 
                    <form action="Reviewer.jsp" method="post" name="frm">
                    	<table align="center" bgcolor="" cellpadding="8" cellspacing="8">
                    		<tr>
                    			<td>Reviewer Code</td>
                    			<td><input type="text" name="rcode"></td>
                    			<td>Password</td>
                    			<td><input type="password" name="upass"></td>
                    		</tr>
                    		<tr>
                    			<td>Email Address</td>
                    			<td><input type="text" name="email"></td>
                    			<td>Date of Joining</td>
                    			<td><input type="text" name="doj">[dd-mmm-yy]</td>
                    		</tr>
                    		<tr>
                    			<td>Employee Name</td>
                    			<td><input type="text" name="ename"></td>
                    			<td>Department Name</td>
                    			<td>
                    				<select name="dno">
                    				<option>Select Department</option>
                    				<%
                    					try{
                    						Connection conn=EDB.getCon();
                    						PreparedStatement pst=conn.prepareStatement("select * from department");
                    						ResultSet rs=pst.executeQuery();
                    						while(rs.next()){
                    							String x=rs.getString(2);
                    							%>
                    							<option value="<%=x%>"><%=x %></option>
                    							<%
                    						}
                    					}catch(Exception e){
                    						System.out.println(e);
                    					}
                    				%>
                    				
                    				
                    				</select>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>Experience</td>
                    			<td><input type="text" name="exp"></td>
                    			<td>Gender</td>
                    			<td><input type="radio" name="gen" value="Male">Male<br/>
                    				<input type="radio" name="gen" value="Female">Female<br/>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>Address</td>
                    			<td><textarea rows="5" cols="25" name="addr"></textarea></td>
                    			<td>Mobile Number</td>
                    			<td><input type="text" name="mob"></td>
                    		</tr>
                    		<tr>
                    			<td>Date of Birth</td>
                    			<td><input type="text" name="dob">[dd-mmm-yy]</td>
                    			<td>Role</td>
                    			<td>
                    				<select name="role">
                    				<option name="select Role">select Role</option>
                    					<option>Programmer</option>
                    					<option>Team Leader</option>
                    					<option>Project Lead</option>
                    					<option>Project Manager</option>
                    					<option>Reviewer</option>
                    				</select>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td></td>
                    			<td><input type="submit" value="Register"></td>
                    			<td><input type="reset" value="Reset"></td>
                    			<td></td>
                    		</tr>
                    	</table>
                    </form>
                
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