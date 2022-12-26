<%@page import="com.Student.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
body{
background-image: url("https://img.freepik.com/premium-photo/soft-blurred-background-blur-lights-solid-pastel-plain-background-texture-illustration-with-soft-gradient-wallpaper_634053-1767.jpg?w=2000");
  }
div {
  color:#1c87c9;
}
#color{
color:#1c87c9;
}
button:hover {
        background-color: #0e002b;
      }
      
button {
		border-color:#1c87c9;
		border-bottom-color: white;
        padding: 10px 10px;
        margin-top: 15px;
        margin-left: 10px;
        background-color: #1c87c9;
        color: white;
        font-size: 18px;
        }
</style>
<body >

<h1 style="color:#1c87c9;top-padding:100px;">Student Details</h1>
<div>
<h4>Student ID:${student.stud_id}</h4>
<h4>Student Name:${student.stud_name}</h4>
<h4>Student Dept:${student.stud_dept}</h4>
<h4>Student CGPA:${student.stud_cgpa}</h4>
</div>

<form action="Home.jsp" method="post">
<button type="submit">Back</button> 
</form>
</body>
</html>