<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<style>
body
{  
    margin: 0;  
    padding: 0;  
    background-image: url("https://img.freepik.com/premium-photo/soft-blurred-background-blur-lights-solid-pastel-plain-background-texture-illustration-with-soft-gradient-wallpaper_634053-1767.jpg?w=2000");
    font-family: 'Arial';  
}  
 * {
        box-sizing: border-box;
      }
      body {
        margin: 0;
      }
      .nav {
        overflow: hidden;
        background-color: #add8e6;
        width:100%;
        height:60px;
      }
      
      .nav a {
      
        display: block;
        color: #fafafa;
        text-decoration: none;
        font-size: 20px; 
      }
      
      .nav a:hover {
        background-color: #fafafa;
        color: #000000;
      }
      
      .nav a.active {
        background-color: #0e002b;
        color: #ffffff;
      }
      .nav .login-container {
        float: left;
      }
     
 
      .nav .login-container button {
        padding: 5px 5px;
        margin-top: 15px;
        margin-left: 10px;
        background-color: #1c87c9;
        color: white;
        font-size: 15px;
        
      }
       
      .nav .login-container button:hover {
        background-color: #0e002b;
      }
      @media screen and (max-width: 600px) {
        .nav .login-container {
          float: none;
        }
        }
 

.center1 {
  position: fixed;
  top: 50%;
  left: 50%;
  margin-top: -50px;
  margin-left: -100px;
}
</style>

<body>

<%
		response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setHeader("Expires","0");
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		} 
%>
<center>



<h3 style="color:#1c87c9;top-padding:100px;">Welcome ${username}</h3>
<div class="active">
<div class="nav">
<div class="login-container">
 <form action="getStudent.jsp" method="post">
<button type="submit">Get student</button>
</form>
</div>

<div class="login-container">
<form action="AddStudent.jsp" method="post">
<button type="submit">Add new student</button>
</form>
</div>

<div class="login-container">
<form action="update.jsp" method="post">
<button type="submit">Update Student Details</button>
</form>
</div>

<div class="login-container">
<form action="delstud.jsp" method="post">
<button type="submit">Delete a student</button>
</form>
</div>

<div class="login-container" >
<form action="Attendance.jsp" method="post">
<button type="submit">Get Attendance</button>
</form>
</div>

<div class="login-container" >
<form action="display.jsp" method="post">
<button type="submit">All Students</button>
</form>
</div>


<div style= "float:right; top-padding:15px; padding:0px 15px;" class="login-container">
<form action="LogoutServlet" method="post">
<button type="submit">Logout</button>
</form>
<div>

</div>
</div>


</center>
<div class="center1">
<h1 style="color:#1c87c9;top-padding:100px;">Student Management System</h1>
</div>

<%
		response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setHeader("Expires","0");
	
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>