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
          Connection con=EDB.getCon();
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("select TASKID , PID , ECODE , TASKDES , STATUS from TASKALLOCATION");
          %><center>
        <table align="center" cellpadding="8" cellspacing="0" border="0">
          <tr bgcolor="skyblue">
            <th>TASK ID</th>
            <th>PROJECT ID</th>
            <th>EMPLOYEE CODE</th>
            <th>TASK DESCRIPTION</th>
            <th>STATUS</th>
          </tr>
          <%
            while(rs.next()){
            	%><tr>
                <th><%=rs.getString(1)%></th>
                <th> <%=rs.getString(2)%></th>
                <th><%=rs.getString(3)%></th>
                <th> <%=rs.getString(4)%></th>
                <th> <%=rs.getString(5)%></th>
              </tr> <%
            }
          %>
        </table></center>
        <br/>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

<%@include file = "footer1.html" %>
        
</body>
</html>