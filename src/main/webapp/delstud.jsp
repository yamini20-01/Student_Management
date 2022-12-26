<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
</head>

<style>
* {
        box-sizing: border-box;
      }
      body
{  
    margin: 0;  
    padding: 0;  
    background-image: url("https://img.freepik.com/premium-photo/soft-blurred-background-blur-lights-solid-pastel-plain-background-texture-illustration-with-soft-gradient-wallpaper_634053-1767.jpg?w=2000");
    font-family: 'Arial';  
}  
button:hover {
        background-color: #0e002b;
      }
      
button {
		border-color:#1c87c9;
		border-bottom-color: white;
        padding: 5px 5px;
        margin-top: 15px;
        margin-left: 10px;
        background-color: #1c87c9;
        color: white;
        font-size: 15px;
        }

</style>


<body>
<center>
<form action="DeleteStudent" method="post">
<h3 style="color:#1c87c9;">Enter Student ID:</h3>
<input type="text" name="stud_id">
<br>
<button type="submit">Delete</button> 
</form>
</center>
<form action="Home.jsp" method="post">
<button type="submit">Back</button> 
</form>

<%
		response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");	
%>


</body>
</html>