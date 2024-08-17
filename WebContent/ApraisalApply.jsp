<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.EDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="icon" href="Untitled.png" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPR Portal</title>
</head>
<body>
<%@include file = "headerP.html" %>
<br/>

<!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <center>
<div class="register-container container">
            <!--   <div class="row"> -->
                
                 
                    <form action="ApplyApr.jsp" method="post" name="frm">
                    	<table align="center" bgcolor="" cellpadding="8" cellspacing="8">
                    		<tr>
                    			<td>Employee Code</td>
                    			<td><input type="text" name="ecode" value="<%=session.getAttribute("u")%>"></td>
                    			<td>Completed Task Description with ID</td>
                    			<td><textarea rows="5" cols="25" name="task"></textarea></td>
                    		</tr>
                    		<tr>
                    			<td>No. of Projects done</td>
                    	<% 		Connection con=EDB.getCon();
          Statement st = con.createStatement();
          int user = Integer.parseInt((String)session.getAttribute("u"));
          ResultSet rs = st.executeQuery("select count(*) from taskallocation where ecode="+user+" and status='Completed'"); 
          rs.next();          		
          int com = rs.getInt(1);
          st.executeUpdate(" update  performance set project_completed = "+com+" where ecode="+user);
          con.commit();
          %>
                    			<td><input type="text" name="per" value=<%=com%>></td>
                    			
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