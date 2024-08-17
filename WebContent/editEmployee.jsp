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
                 
                    	
      <%
      try
      {
    	//  System.out.println(new java.util.Date(request.getParameter("start_date")).getTime());
     	Connection con=EDB.getCon();
     	PreparedStatement ps=con.prepareStatement("update employee set ENAME=? , DEPARTMENT=? , ROLE=? , EMAIL=? , DOJ=? , MOBILE=?, where ecode=? ");
    
     	int ecode=Integer.parseInt(request.getParameter("ecode"));
     	ps.setString(1,request.getParameter("ename"));
     	ps.setInt(2,Integer.parseInt(request.getParameter("dno")));
     	ps.setString(3,request.getParameter("role"));
     	ps.setString(4,request.getParameter("email"));
     	ps.setDate(5, new java.sql.Date(new java.util.Date(request.getParameter("doj")).getTime()));
     	ps.setInt(6,Integer.parseInt(request.getParameter("mobile")));
     	
     	ps.setInt(7,Integer.parseInt(request.getParameter("ecode")));
     	
     	int x=ps.executeUpdate();
    	
    	if(x>0)
    	{
    		RequestDispatcher rd=request.getRequestDispatcher("DoneEmp.jsp");
    		rd.forward(request, response);
    	}else
    	{
    		RequestDispatcher rd=request.getRequestDispatcher("errorEmp.jsp");
    		rd.forward(request, response);
    	}
    	
    	
    	
    }catch(Exception e)
    {
    	System.out.println(e);
    	RequestDispatcher rd=request.getRequestDispatcher("errorEmp.jsp");
    	rd.forward(request, response);
    }




    %>
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