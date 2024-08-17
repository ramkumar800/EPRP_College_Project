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
<%@include file = "headerR.html" %>
     
       
            
      <table align="center" cellpadding="8" cellspacing="0" border="0" width="90%">
  <tr bgcolor="skyblue">
    <th > <div align="center">EMPLOYEE CODE </div></th>
    <th > <div align="center">EMPLOYEE NAME </div></th>
    <th > <div align="center">DEPARTMENT NAME </div></th>
    <th > <div align="center">PROJECT COMPLETED </div></th>
    <th > <div align="center">DESCRIPTION</div></th>
    <th ><div align="center">RANK</div></th>
    <th><div align="center"></div>      <div align="center"></div></th>
  </tr>
  
  
  <%
                    	
                    		try{
                    			Connection con=EDB.getCon();
                    			PreparedStatement pst=con.prepareStatement("select  * from performance where ecode NOT IN(select ecode from REVIEWERVIEW)");
                    			ResultSet rs=pst.executeQuery();
                    			while(rs.next()){
                    				Statement st = con.createStatement();
                    				ResultSet rs1 = st.executeQuery("select dname from department where dcode=(select dcode from employee where ecode="+rs.getInt(1)+")");
                                    rs1.next();
                    				String dept = rs1.getString(1);
                    				System.out.println(rs1.getString(1));
                    				%>
  
  <form action="CRapplicationpost.jsp" method="post" name="frm">     
  <tr>
    <td><div align="center"><%=rs.getString(1) %><input type="hidden" name="ecode" value="<%=rs.getString(1)%>" /></div></td>
    <td><div align="center"><%=rs.getString(2) %><input type="hidden" name="ename" value="<%=rs.getString(2)%>" />
    </div></td>
    <td><div align="center"><%=dept %><input type="hidden" name="dname" value="<%=rs.getString(3)%>"/>
    </div></td>
    <td><div align="center"><%=rs.getString(4) %><input type="hidden" name="projectcompleted" value="<%=rs.getString(4)%>"/>
    </div></td>
    <td><div align="center">
      <textarea name="description" ></textarea>
</div></td>
    <td><div align="center">
      <input name="radiobutton" type="radio" value="positive" >
  Positive</div></td>
  <td><div align="center">
      <input name="radiobutton" type="radio" value="negative">
  Negative</div></td>
    <td><div align="center">
      <input type="submit" name="Submit" value="submit">
      </div></td>
  </tr>
  </form>  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><div align="right">
    </div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    
    <td><div align="center">
      </div></td>
  </tr>
  
  	<%
                    			}
                    		}catch(Exception e){
                    			System.out.println(e);
                    		}
                    	%>
                    	
</table> 

<!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

<%@include file = "footer1.html" %>   
</body>
</html>