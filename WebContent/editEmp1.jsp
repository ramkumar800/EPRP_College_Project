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
     	PreparedStatement ps=con.prepareStatement("update EMPLOYEE set   ENAME=? , DEPARTMENT=? , ROLE=?  , EMAIL=? , DOJ=? , MOBILE=?     where ECODE=? ");
    
     	int ECODE=Integer.parseInt(request.getParameter("ECODE"));
     	System.out.println("ECODE=========== "+request.getParameter("ECODE"));
     	
     	ps.setString(1,request.getParameter("ENAME"));
     	
     	System.out.println("ENAME=========== "+request.getParameter("ENAME"));
     	
     	ps.setString(2,request.getParameter("DEPARTMENT"));
     	
     	System.out.println("DEPARTMENT=========== "+request.getParameter("DEPARTMENT"));
     	
     	ps.setString(3,request.getParameter("ROLE"));
     	
     	System.out.println("ROLE=========== "+request.getParameter("ROLE"));
     	
     	ps.setString(4,request.getParameter("EMAIL"));
     	
     	
     	System.out.println("EMAIL=========== "+request.getParameter("EMAIL"));
     	
     	//ps.setInt(5,Integer.parseInt(request.getParameter("EMAIL")));
     	//System.out.println("Date=========== "+request.getParameter("DOJ"));
     	
     	String st1[]=request.getParameter("DOJ").split(" ");
     	String DOJ=st1[0];
     	String stt[]=DOJ.split("-");
     	DOJ=stt[2]+"/"+stt[1]+"/"+stt[0];
    	
     	//String st2[]=request.getParameter("end_date").split(" ");
     	//String endDate=st1[0]; 
     	//String stt1[]=endDate.split("-");
     	//endDate=stt1[2]+"/"+stt1[1]+"/"+stt1[0];
     	//System.out.println("End Date   " +endDate);
     	
     //	System.out.println(new java.util.Date(startDate));
     	ps.setDate(5, new java.sql.Date(new java.util.Date(DOJ).getTime()));
     	
     	System.out.println("Date=========== "+request.getParameter("DOJ"));
     	
     	//ps.setDate(5, new java.sql.Date(new java.util.Date(endDate).getTime()));
     	//System.out.println("Date Added...........");
     	//ps.setInt(7,Integer.parseInt(request.getParameter("MOBILE")));
     	
     	ps.setString(6,request.getParameter("MOBILE"));
     	
     	System.out.println("MOBILE=========== "+request.getParameter("MOBILE"));
     	
     	 ps.setInt(7,Integer.parseInt(request.getParameter("ECODE")));
     	
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