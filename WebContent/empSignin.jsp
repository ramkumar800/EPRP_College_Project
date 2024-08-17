<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="icon" href="Untitled.png" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in | EPR Portal</title>


<script type="text/javascript">
window.history.forward();
function noBack()
{window.history.forward();}
</script>



</head>
<body>
<%@include file = "header.html" %>
<br/>

<!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <center>
<div class="register-container container">
            <!--   <div class="row"> -->
                
                 <div class="register span6">
                    <form action="E1.jsp" method="post">
                        <h2>SignIn TO <span class="light blue"><strong>EPR Portal</strong></span></h2>
                        
                  
                        <label for="username">Employee Code</label>
                        <input type="text" id="username" name="ecode" placeholder="choose a username...">
             
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="choose a password...">
                        
                        <label for="username">Role</label>
                        <input type="text" id="username" name="role" placeholder="role e.g. Employee, Project Manager, Team Leader, Project Head...">
             
                        
                        <button type="submit">Sign In</button>
                        
                    </form>
                </div>
            </div>
        </div>
</center>
<br/>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

<%@include file = "footer.html" %>

</body>
</html>