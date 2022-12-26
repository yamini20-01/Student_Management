<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,javax.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display details of students</title>
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
div{
color:#1c87c9;
}
</style>




<body>
<center>
<h2 style="color:#1c87c9;top-padding:100px;">All the Students List</h2>
<table border="5">
<div>
<tr>
<td><h4 style="color:#1c87c9;">Student Id</h4></td>
<td><h4 style="color:#1c87c9;">Student Name</h4></td>
<td><h4 style="color:#1c87c9;">Student Department</h4></td>
<td><h4 style="color:#1c87c9;">Student CGPA</h4></td>
</tr>
</div>
<%

String url="jdbc:mysql://localhost:3306/students_management";
String uname="root";
String pass="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,uname,pass);
String query="select * from students;";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);

while(rs.next())
{
 %>
 <tr>
 	<td><%= rs.getInt(1) %> </td>
    <td><%= rs.getString(2) %> </td>
 	<td><%= rs.getString(3) %> </td>
 	<td><%= rs.getInt(4) %> </td>
 </tr>
 <%
 }
 %>
 </table>
 <%
 rs.close();
 st.close();
 %>
 </center>
 <form action="Home.jsp" method="post">
<button type="submit">Back</button> 
</form>
</body>
</html>