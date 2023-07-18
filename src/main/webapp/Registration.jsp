<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
  background-color:black;
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
<div class="box">
<h1 >Passenger Registration </h1><br><br>
<form action="Register" method="post" style="max-width: 400px;margin: 0 auto;">
FirstName: <input type="text" name="fname" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>
LastName: <input type="text" name="lname" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>
UserName: <input type="text" name="uname" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>
Email Id: <input type="text" name="email" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>
Mobile number: <input type="number" name="mob" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>
Password: <input type="password" name="pwd" style="width: 100%;padding: 10px;border: 1px solid #ccc;border-radius: 4px;margin-bottom: 10px;"><br><br>

<input type="submit" value ="Click here to Register" style="background-color: #4CAF50;color: white;padding: 10px 20px;border: none;border-radius: 4px;cursor: pointer;" onmouseover="this.style.backgroundColor='#45a049'" onmouseout="this.style.backgroundColor='#4CAF50'">
 

</form>
</div>
</body>
</html>