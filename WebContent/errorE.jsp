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
                
                 <h3 style="color: red;">Something went wrong with project registration.</h3>
                    <form action="edit1.jsp" method="post" name="frm">
                    	 <table align="center" cellpadding="5" cellspacing="5" border="1" bgcolor="lightblue" width="100%">
                    	<tr bgcolor="pink">
                    		<th>Project Code</th>
                    		<th>Project Name</th>
                    		<th>Client</th>
                    		<th>Start Date</th>
                    		<th>End Date</th>
                    		<th>Cost</th>
                    		<th>Description</th>
                    	 <th>Edit</th>
                    		<th>Delete</th>
               	</tr>
                    	
                    	<%
                    	
                    		try{
                    			Connection con=EDB.getCon();
                    			PreparedStatement pst=con.prepareStatement("select * from project");
                    			ResultSet rs=pst.executeQuery();
                    			while(rs.next()){
                    				%>
                    					<tr>
                    						<th><%=rs.getString(1) %></th>
                    						<th><%=rs.getString("PNAME") %></th>
                    						<th><%=rs.getString("CLIENT") %></th>
                    						<th><%=rs.getString("START_DATE") %></th>
                    						<th><%=rs.getString("END_DATE") %></th>
                    						<th><%=rs.getString("COST") %></th>
                    						<th><%=rs.getString("PROJECT_DESCRIPTION") %></th>
                    						 <th><a href="edit.jsp?editP=<%=rs.getString(1)%>"><input type="button" value="Edit"></a></th>
                    						<th><a href="edit.jsp?deletP=<%=rs.getString(1)%>"><input type="button" value="Delete"></a></th>
                    					</tr>
                    				<%
                    			}
                    		}catch(Exception e){
                    			System.out.println(e);
                    		}
                    	%>
                    	
                    	
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