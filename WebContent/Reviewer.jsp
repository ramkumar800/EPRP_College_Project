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
	try {
	Properties props = new Properties();
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.socketFactory.port", "465");
	props.put("mail.smtp.socketFactory.class",
			"javax.net.ssl.SSLSocketFactory");
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.port", "465");

	Session sess = Session.getDefaultInstance(props,
		new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("mishramamta1358@gmail.com","changepasswordnewpassword1358");
			}
		});

	

		Message message = new MimeMessage(sess);
		message.setFrom(new InternetAddress("mishramamta1358@gmail.com"));
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
		message.setSubject("Welcome to www.eprp.com");
		message.setText("Dear "+request.getParameter("ename")+""+
				"\n\n This is a mail from www.eprp.com!\n" +
				"" +
				"We are very thankful to join us. We are sending your " 
				+"Reviewer code and password to get logged in and check Employee performance.  " +
				"" +
				"" +
				"" +
				"" +
				"\n\n Your Reviewer Code is: "+Integer.parseInt(request.getParameter("rcode"))+"" +
				"\n\n Password: "+request.getParameter("upass")+"" +
				"\n\n Your Register Mobile Number is: "+request.getParameter("mob")+""+
				"\n\n Your Address  is: "+request.getParameter("addr")+""); 

		Transport.send(message);

		System.out.println("Done");

	} catch (MessagingException e) {
		System.out.println(e);
	}
	
	
	
	PreparedStatement pst=null;
	String sql="insert into REVIEWER values(?,?,?,?,?,?,?,?,?,?,?,?)";
	pst=con.prepareStatement(sql);
	
	pst.setInt(1, Integer.parseInt(request.getParameter("rcode")));
	pst.setString(3, email);
	pst.setString(2, request.getParameter("upass"));
	pst.setDate(4, new java.sql.Date(new java.util.Date(request.getParameter("doj")).getTime()));
	pst.setString(5, request.getParameter("ename"));
	pst.setString(6, request.getParameter("dno"));
	pst.setInt(7, Integer.parseInt(request.getParameter("exp")));
	pst.setString(8, request.getParameter("gen"));
	pst.setString(9, request.getParameter("addr"));
	pst.setString(10, request.getParameter("mob"));
	pst.setDate(11, new java.sql.Date(new java.util.Date(request.getParameter("dob")).getTime()));
	pst.setString(12, request.getParameter("role"));
	
	
	int x=pst.executeUpdate();
	
	if(x>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("DoneR.jsp");
		rd.forward(request, response);
	}else
	{
		RequestDispatcher rd=request.getRequestDispatcher("errorReviewer.jsp");
		rd.forward(request, response);
	}
	
	
	
}catch(Exception e)
{
	System.out.println(e);
	RequestDispatcher rd=request.getRequestDispatcher("errorReviewer.jsp");
	rd.forward(request, response);
}




%>

</body>
</html>