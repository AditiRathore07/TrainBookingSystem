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

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
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
 h1 {
     color: white;
     text-align: center;
     }
</style>
</head>
<body>
<div class="navbar">
<a href="#home">Home</a>
  
  <div class="dropdown">
    <button class="dropbtn">Sign Up 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="AdminRegister.jsp">Admin</a>
      <a href="Registration.jsp">Passenger</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Logout 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Welcome.jsp">Admin</a>
      <!-- <a href="PassengerLogin.jsp">Passenger</a> -->
     
    </div>
  </div> </div>
<div class="box">
 <h1>Add Train</h1>

    <form method="post" action="adminAddTrainServlet" style="border: 1px solid #ccc; padding: 20px; border-radius: 4px;">
        <label for="trainNumber" style="font-weight: bold;">Train Number:</label>
        <input type="text" id="trainNumber" name="trainNumber" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px;"><br><br>
        
        <label for="trainName" style="font-weight: bold;">Train Name:</label>
        <input type="text" id="trainName" name="trainName" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px;"><br><br>

        <label for="source" style="font-weight: bold;">Source:</label>
        <input type="text" id="source" name="source" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px;"><br><br>
        
        <label for="destination" style="font-weight: bold;">Destination:</label>
        <input type="text" id="destination" name="destination" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px;"><br><br>
        
        <label for="available" style="font-weight: bold;">Available Seats:</label>
        <input type="text" id="available" name="available" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; margin-bottom: 10px;"><br><br>

        <input type="submit" value="Add Train" style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;" onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007BFF'">
    </form>
</div>
</body>
</html>