<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
      <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.EDB"%>
<%@page import="java.sql.Connection"%>
 <%@page import="p1.EDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file = "headerP.html" %>
     
            
            <form action="CRapplicationpostbyemp.jsp" method="post" name="frm">
            
        <table width="1101" height="190"  align="center" bgcolor="" cellpadding="6" cellspacing="0">
  <tr bgcolor="skyblue">
    <th> <div align="center">ECODE </div></th>
    <th> <div align="center">ENAME </div></th>
    <th> <div align="center">DCODE </div></th>
    <th> <div align="center">PROJECT_COMPLETED </div></th>
   
  </tr>
  
  
  
  
  
  <%
                    	System.out.println(session.getAttribute("u"));
                    		try{
                    			Connection con=EDB.getCon();
                    			PreparedStatement pst=con.prepareStatement("select * from EMPLOYEE where ECODE="+session.getAttribute("u"));
                    			Statement st=con.createStatement();
                    			ResultSet rs=pst.executeQuery();
                    			ResultSet rs1 = st.executeQuery("select *  from performance where ecode="+session.getAttribute("u"));
                    			
                    			rs.next();  String com="0";
                    			    if(rs1.next())
                    			    	 com=rs1.getString(1);
                    	%>
  <tr>
    <th><div align="center">
      <input type="text" name="ecode" value=<%=rs.getString(1) %> readonly >
    </div></th>
    <td><div align="center">
      <input type="text" name="ename"  value=<%=rs.getString(5) %>  readonly >
    </div></td>
   <td><div align="center">
      <input type="text" name="dcode"   value=<%=rs.getString(6) %>  readonly >
    </div></td>
    <td><div align="center">
      <input type="text" name="projectcompleted"  value=<%=com%>  readonly  >
    </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><div align="center">
   <input type="submit" name="Submit" value="Submit">
    </div>
      </td>
   
    <td><input type="reset" name="reset" value="Reset"></td>
    <td>&nbsp;</td>
  </tr>
  
  <%
                    			
                    		}catch(Exception e){
                    			System.out.println(e);
                    		}
                    	%>
</table>
</form>   

<!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

<%@include file = "footer1.html" %>   
</body>
</html>