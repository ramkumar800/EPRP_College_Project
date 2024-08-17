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
<title>Sign in | EPR Portal</title>
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
                
                 
                    <form action="RPro.jsp" method="post" name="frm">
                    	<table align="center" bgcolor="" cellpadding="8" cellspacing="8">
                    		<tr>
                    			<td>Project Code</td>
                    			<td><input type="text" name="pcode"></td>
                    			<td>Project Name</td>
                    			<td><input type="text" name="pname"></td>
                    		</tr>
                    		<tr>
                    			<td>Client</td>
                    			<td><input type="text" name="client"></td>
                    			<td>Duration(in Months)</td>
                    			<td><input type="text" name="duration"></td>
                    		</tr>
                    		<tr>
                    			<td>Start Date</td>
                    			<td><input type="text" name="start">[DD-MMM-YY]</td>
                    			<td>End Date</td>
                    			<td><input type="text" name="end">[DD-MMM-YY]</td>
                    		</tr>
                    		<tr>
                    			<td>Cost(INR)</td>
                    			<td><input type="text" name="cost"></td>
                    			<td>Category</td>
                    			<td>
                    				<select name="cat">
                    					<option>Short Term 3-6 Month</option>
                    					<option>Middle Term 6-12 Month</option>
                    					<option>Long Term 12-24 Month</option>
                    					<option>Very Long Term 24-36+ Month</option>
                    				</select>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>Project Description</td>
                    			<td><textarea rows="5" cols="25" name="des"></textarea></td>
                    			
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