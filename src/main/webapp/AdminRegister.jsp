<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
*{
margin:0;
padding:0;
box-sizing:border-box;
}
body{
 background-image: url("https://images.unsplash.com/photo-1563632158089-0ccec4fb87cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80");
}
.box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
  background-color:rgb(16, 16, 16);
  border: 2px solid rgba(255, 255, 255, .03);
  backdrop-filter: blur(20px);
  box-shadow: 0 0 10px rgba(29, 27, 27, 0.2);
  border-radius: 10px;
  padding: 30px 40px;
  color: white;
  
}
</style>
</head>
<body>
     
<!-- <div class="bg">

 
</div> -->


<div class="box">
<h1 >Admin Registration </h1><br><br>
<form action="AdminRegistration" method="get">
    <label style="font-weight:bold;">Username:</label>
    <input type="text" name="username" style="padding: 5px;border: 1px solid #ccc;border-radius: 4px;"><br><br>
        <label style="font-weight:bold;">Password:</label>
        <input type="password" name="password" style="padding: 5px;border: 1px solid #ccc;border-radius: 4px;"><br><br>
        <input type="submit" value="Register" style="background-color:#4CAF50;color:white;padding:10px 20px;border:none;border-radius:4px;cursor:pointer;" onmouseover="this.style.backgroundColor='#45a049'" onmouseout="this.style.backgroundColor='#4CAF50'">
</form>
</div>
     
</body>
</html>