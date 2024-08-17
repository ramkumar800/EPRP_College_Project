<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, p1.EDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String xx=request.getParameter("bid");
	System.out.println(xx);
	
	try{
		
		Connection conn=EDB.getCon();
		PreparedStatement pst=conn.prepareStatement("update TASKALLOCATION set STATUS=? where TASKID=? ");
		pst.setString(1, "Completed");
		pst.setString(2, xx);
		
		int x1=pst.executeUpdate();
		if(x1>0){
		%>
			<jsp:forward page="ViewTask.jsp"></jsp:forward>
		<%}else{
			out.println("NOT DONE");
		}
		
	}catch(Exception e){
		System.out.println(e);
	}
%>
</body>
</html>