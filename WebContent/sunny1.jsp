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
     	PreparedStatement ps=con.prepareStatement("update employee set   ENAME=? , DCODE=? ,DNAME=?  , ROLE=?      where ECODE=? ");
    
     	int ECODE=Integer.parseInt(request.getParameter("ECODE"));
     	System.out.println("ECODE=========== "+request.getParameter("ECODE"));
     	
     	ps.setString(5,request.getParameter("ENAME"));
     	
     	System.out.println("ENAME=========== "+request.getParameter("ENAME"));
     	
     	ps.setString(6,request.getParameter("DCODE"));
     	
     	System.out.println("DCODE=========== "+request.getParameter("DCODE"));
     	
     	ps.setString(12,request.getParameter("ROLE"));
     	
     	System.out.println("ROLE=========== "+request.getParameter("ROLE"));
     	
     	
     	
     
     
    	
     	
     	
     	 ps.setInt(1,Integer.parseInt(request.getParameter("ECODE")));
     	
     	System.out.println("ECODE=========== "+request.getParameter("ECODE")); 
     
     	
     	
     	int x=ps.executeUpdate();
    	
    	if(x>0)
    	{
    		RequestDispatcher rd=request.getRequestDispatcher("DoneE.jsp");
    		rd.forward(request, response);
    	}else
    	{
    		RequestDispatcher rd=request.getRequestDispatcher("Errorji.jsp");
    		rd.forward(request, response);
    	}
    	
    	
    	
    }catch(Exception e)
    {
    	System.out.println(e);
    	RequestDispatcher rd=request.getRequestDispatcher("Errorji.jsp");
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