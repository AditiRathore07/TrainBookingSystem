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
 h1 {
            color: white;
            text-align: center;
        }

        /* Styling for the registration link */
        a {
            display: block;
            text-align: center;
            color: #007BFF;
            text-decoration: none;
            margin-top: 20px;
        }

        a:hover {
            text-decoration: underline;
        }
        
</style>
</head>
<body>
 <div class="box">
 <a href="Registration.jsp">CLICK HERE TO REGISTER AGAIN</a>
 <h1>Passenger Login</h1>
  <form action="PassengerLoginServlet" method="post" style="border: 1px solid #ccc;padding: 20px;border-radius: 4px;">
        <label for="username" style="font-weight:bold;">Username:</label>
        <input type="text" id="username" name="username" style="width:100%;padding:10px;border:1px solid #ccc;border-radius:4px;margin-bottom:10px;"><br><br>
        
        <label for="password" style="font-weight:bold;">Password:</label>
        <input type="password" id="password" name="password" style="width:100%;padding:10px;border:1px solid #ccc;border-radius:4px;margin-bottom:10px;"><br><br>

        <input type="submit" value="Login" style="background-color:#007BFF;color:white;padding:10px 20px;border:none;border-radius:4px;cursor:pointer;" onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007BFF'">
    </form>
  </div>
  </body>
  </html>
 