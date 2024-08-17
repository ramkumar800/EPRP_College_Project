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
                
                 
                    <form action="TaskAllo.jsp" method="post" name="frm">
                    	<table align="center" bgcolor="" cellpadding="8" cellspacing="8">
                    		<tr>
                    			<td>Task Code</td>
                    			<td><input type="text" name="tcode"></td>
                    			<td>Project ID</td>
                    			<td>
                    			<select name="pid"> 
                    			<%
                    					try{
                    						Connection conn1=EDB.getCon();
                    						PreparedStatement pst=conn1.prepareStatement("select * from project");
                    						ResultSet rs=pst.executeQuery();
                    						while(rs.next()){
                    							int x=rs.getInt(1);
                    							%>
                    							<option value="<%=x%>"><%=x %></option>
                    							<%
                    						}
                    					}catch(Exception e1){
                    						System.out.println(e1);
                    					}
                    				%>
                    				</select>
                    				
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>Employee ID</td>
                    			<td>
                    				<select name="eid"> 
                    			<%
                    					try{
                    						Connection conn1=EDB.getCon();
                    						PreparedStatement pst=conn1.prepareStatement("select * from employee");
                    						ResultSet rs=pst.executeQuery();
                    						while(rs.next()){
                    							int x=rs.getInt(1);
                    							%>
                    							<option value="<%=x%>"><%=x %></option>
                    							<%
                    						}
                    					}catch(Exception e1){
                    						System.out.println(e1);
                    					}
                    				%>
                    				</select>
                    			
                    			</td>
                    			<td>Task Description</td>
                    			<td><textarea rows="5" cols="25" name="des"></textarea></td>
                    		</tr>
                    		<tr>
                    			<td>Task Start Date</td>
                    			<td><input type="text" name="sdate">[DD-MMM-YY]</td>
                    			<td>Task End Date</td>
                    			<td><input type="text" name="ldate">[DD-MMM-YY]</td>
                    		</tr>
                    		<tr>
                    			<td>Task Submition Date</td>
                    			<td><input type="text" name="subdate">[DD-MMM-YY]</td>
                    			
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