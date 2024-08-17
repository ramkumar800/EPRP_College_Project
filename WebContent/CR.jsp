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
<%@include file = "headerP.html" %>
     <%
          Connection con=EDB.getCon();
          Statement st = con.createStatement();
          int user = Integer.parseInt((String)session.getAttribute("u"));
          ResultSet rs = st.executeQuery("select * from PERFORMANCE"); 
        %>    <center>
            <table border='1' width="80%">
              <tr>
                <th>ECODE</th>
                <th>ENAME</th>
                <th>DCODE</th>
                <th>DNAME</th>
               
              </tr>
              <%
                while(rs.next()){
                	%><tr>
                    <th><%=rs.getString(1)%></th>
                   
                    <th> <%=rs.getString(2)%></th>
                   
                    <th><%=rs.getString(3)%></th>
                    <th> <%=rs.getString(4)%></th>
                    
                  <%  
                
                    %>
                  </tr> <%
                }
              %>
            </table></center>
               
</body>
</html>