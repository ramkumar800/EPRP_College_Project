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
<%@include file = "headerM.html" %>
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
                    <table align="center" cellpadding="8" cellspacing="1" border="0"  width="90%">
                    	<tr bgcolor="skyblue">
                    		<th>APPRAISAL ID</th>
                    		<th>EMPLOYEE CODE</th>
                    		<th>TASK DESCRIPTIONS</th>
                    		<th>PERCENTAGE</th>
                    		<th>APPRAISAL</th>
                    		<th>STATUS</th>
                    		<th>APPROVAL</th>
                    		<th>CANCEL</th>
                    		
                    		
                    	</tr>
                    	
                    	<%
                    	
                    		try{
                    			Connection con=EDB.getCon();
                    			PreparedStatement pst=con.prepareStatement("select * from APRAISAL where STATUS='Pending'");
                    			
                    			ResultSet rs=pst.executeQuery();
                    			while(rs.next()){
                    				%>
                    					<tr>
                    						<th><%=rs.getString(1) %></th>
                    						<th><%=rs.getString(2) %></th>
                    						<th><%=rs.getString(3) %></th>
                    						<th><%=rs.getString(4) %></th>
                    						<th><%=rs.getString(5) %></th>
                    						<th><%=rs.getString(6) %></th>
                    						<th><a href="ApprM.jsp?appR=<%=rs.getString(2)%>"><input type="button" value="Approve Apraisal"></a></th>
                    					    <th><a href="Acancle.jsp?appR=<%=rs.getString(1)%>"><input type="button" value="Cancle Apraisal"></a></th>
                    					</tr>
                    				<%
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