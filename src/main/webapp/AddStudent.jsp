<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<form action="AddStudentServlet" method="post">

<h1 style="color:#1c87c9;top-padding:100px;">Enter Student Details</h1>

<h3 style="color:#1c87c9;">Enter Student ID:</h3>
 <input type="text" name="stud_id">

<h3 style="color:#1c87c9;">Enter Student Name:</h3>
 <input type="text" name="stud_name">
 

<h3 style="color:#1c87c9;">Enter Student Department:</h3>
 <input type="text" name="stud_dept">
 

<h3 style="color:#1c87c9;">Enter Student CGPA:</h3>
 <input type="text" name="stud_cgpa">
<br>
 <button type="submit">Add New Student</button> 
</form>
</center>

<br>
<br>
<form action="Home.jsp" method="post">
<button type="submit">Back</button> 



</body>
</html>