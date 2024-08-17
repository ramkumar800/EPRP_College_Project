<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 <%@page import="p1.EDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%@include file = "headerM.html" %>  
       <%
          int code = Integer.parseInt(request.getParameter("appR"));
          Connection con=EDB.getCon();
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("update apraisal set status='Cancle' where empid="+code);
          con.commit();
       %>
       <jsp:forward page="AppraisalM.jsp"></jsp:forward>
</body>
</html>