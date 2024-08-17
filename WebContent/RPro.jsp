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

String email=request.getParameter("email");




try
{
	Connection con=EDB.getCon();
	
		
	
	PreparedStatement pst=null;
	String sql="insert into PROJECT values(?,?,?,?,?,?,?,?,?)";
	pst=con.prepareStatement(sql);
	
	pst.setInt(1, Integer.parseInt(request.getParameter("pcode")));
	pst.setString(2, request.getParameter("pname"));
	pst.setString(3, request.getParameter("client"));
	pst.setInt(4, Integer.parseInt(request.getParameter("duration")));
	pst.setDate(5, new java.sql.Date(new java.util.Date(request.getParameter("start")).getTime()));
	pst.setDate(6, new java.sql.Date(new java.util.Date(request.getParameter("end")).getTime()));
	pst.setInt(7, Integer.parseInt(request.getParameter("cost")));
	pst.setString(8, request.getParameter("cat"));
	pst.setString(9, request.getParameter("des"));
	
	
	
	int x=pst.executeUpdate();
	
	if(x>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("DoneP.jsp");
		rd.forward(request, response);
	}else
	{
		RequestDispatcher rd=request.getRequestDispatcher("errorP.jsp");
		rd.forward(request, response);
	}
	
	
	
}catch(Exception e)
{
	System.out.println(e);
	RequestDispatcher rd=request.getRequestDispatcher("errorP.jsp");
	rd.forward(request, response);
}




%>

</body>
</html>