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
  .navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}



/* Add a red background color to navbar links on hover */
.navbar a:hover {
  background-color: red;
}



body, html {
  height: 100%;
}

.bg {
  /* The image used */
  background-image: url("https://images.unsplash.com/photo-1442570468985-f63ed5de9086?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1840&q=80");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.centered {
 
  position: absolute;
  top: 20%;
  left: 10%;
  font-size:60px ;
  font-weight: 700;
}
</style>
</head>
<body>
<div class="navbar">
  <a href="#home">Home</a>
  <a href="SearchTrain.jsp">Search Train</a>
  <a href="bookTrain.jsp">Book Train</a>
  <a href="Welcome.jsp">Logout</a>
  
  
</div>
<div class="bg">
 <div class="centered">WELCOME TO<br> TRAIN RESERVATION SYSTEM</div>
</div>
	

</body>
</html>