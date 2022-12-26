<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body
{  
    margin: 0;  
    padding: 0;  
    background-image: url("https://img.freepik.com/premium-photo/soft-blurred-background-blur-lights-solid-pastel-plain-background-texture-illustration-with-soft-gradient-wallpaper_634053-1767.jpg?w=2000");
  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
       
        border-radius: 15px ;  
          
}  
h1{
text-align:center;
color: #277582;
}
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color: black;  
    font-size: 17px;  
}  
#uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: black;  
}   
a{  
    float: right;  
    background-color: grey;  
}  
</style>
</head>
<body>

<h1>Student Management System</h1>
<h2>Login Page</h2><br>   

    <div class="login">    
    <form id="login" method="post" action="LoginStudent">    
        <label><b>User Name     
        </b>    
        </label>    
        <input type="text" name="uname" id="uname" placeholder="Username">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="pass" id="Pass" placeholder="Password">    
        <br><br>    
        <input type="submit" name="log" id="log" value="Log In">       
        <br><br>    
    </form>     
</div>    

</body>
</html>