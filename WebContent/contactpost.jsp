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

String EMAILADDRESS=request.getParameter("EMAILADDRESS");




try
{
	Connection con=EDB.getCon();
	
		
	
	PreparedStatement pst=null;
	String sql="insert into CONTACT values(?,?,?,?)";
	pst=con.prepareStatement(sql);
	
	pst.setString(1, request.getParameter("name"));
	pst.setString(2, request.getParameter("email"));
	pst.setString(3, request.getParameter("subject"));
	pst.setString(4, request.getParameter("description"));
	System.out.println("email");
	int x=pst.executeUpdate();
	if(x>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("DoneContact.jsp");
		rd.forward(request, response);
	}else
	{
		RequestDispatcher rd=request.getRequestDispatcher("Errorcontact.jsp");
		rd.forward(request, response);
	}
	
	
	
}catch(Exception e)
{
	System.out.println(e);
	RequestDispatcher rd=request.getRequestDispatcher("ErrorContact.jsp");
	rd.forward(request, response);
}




%>

</body>
</html>