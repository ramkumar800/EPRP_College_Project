<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, java.util.*, p1.EDB, javax.mail.*,javax.mail.internet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


try
{
	Connection con=EDB.getCon();
	
		
	
	PreparedStatement pst=null;
	String sql="insert into TASKALLOCATION values(?,?,?,?,?,?,?,?)";
	pst=con.prepareStatement(sql);
	
	pst.setInt(1, Integer.parseInt(request.getParameter("tcode")));
	pst.setInt(2, Integer.parseInt(request.getParameter("pid")));
	pst.setInt(3, Integer.parseInt(request.getParameter("eid")));
	pst.setDate(4, new java.sql.Date(new java.util.Date(request.getParameter("sdate")).getTime()));
	pst.setDate(5, new java.sql.Date(new java.util.Date(request.getParameter("ldate")).getTime()));
	pst.setDate(6, new java.sql.Date(new java.util.Date(request.getParameter("subdate")).getTime()));
	pst.setString(7, request.getParameter("des"));
	pst.setString(8, "Pending");
	
	
	
	
	int x=pst.executeUpdate();
	
	if(x>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("DoneT.jsp");
		rd.forward(request, response);
	}else
	{
		RequestDispatcher rd=request.getRequestDispatcher("errorT.jsp");
		rd.forward(request, response);
	}
	
	
	
}catch(Exception e)
{
	System.out.println(e);
	RequestDispatcher rd=request.getRequestDispatcher("errorT.jsp");
	rd.forward(request, response);
}




%>

</body>
</html>