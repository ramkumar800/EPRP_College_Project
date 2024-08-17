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
                
                 <div class="register span6">
                    <table align="center" cellpadding="8" cellspacing="1" border="0" bgcolor="lightblue">
                    	<tr bgcolor="skyblue">
                    		<th>Task ID</th>
                    		<th>Project ID</th>
                    		<th>Employee ID</th>
                    		<th>Task Start Date</th>
                    		<th>Task Description</th>
                    		<th>Task Submition Date</th>
                    		<th>Status</th>
                    		<th>Submit Task</th>
                    	</tr>
                    	
                    	<%
                    	
                    		try{
                    			Connection con=EDB.getCon();
                    			PreparedStatement pst=con.prepareStatement("select * from TASKALLOCATION where ECODE=?");
                    			pst.setString(1, (String)session.getAttribute("u"));
                    			ResultSet rs=pst.executeQuery();
                    			while(rs.next()){
                    				int tid=rs.getInt(1);
                    				%>
                    					<tr>
                    						<th><%=tid %></th>
                    						<th><%=rs.getString("PID") %></th>
                    						<th><%=rs.getString("ECODE") %></th>
                    						<th><%=rs.getString("TASK_START") %></th>
                    						<th><%=rs.getString("TASKDES") %></th>
                    						<th><%=rs.getString("TASK_SUBMITION") %></th>
                    						<th><%=rs.getString("STATUS") %></th>
                    						<td><a href="TaskS.jsp?bid=<%=tid%>"><input type="button" value="Submit Task"></a></td>
                    						
                    					</tr>
                    				<%
                    				System.out.println(tid);
                    			}
                    		}catch(Exception e){
                    			System.out.println(e);
                    		}
                    	%>
                    	
                    	
                    </table>
                </div>
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