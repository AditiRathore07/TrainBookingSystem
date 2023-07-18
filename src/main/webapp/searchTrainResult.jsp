<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Train Result</title>
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
    
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

h2 {
    margin-top: 0;
    text-align: center;
    color: #007BFF;
}

.tab {
    background-color:grey;
    color: #fff;
    padding: 10px;
    text-align: center;
}

.menu {
    font-size: 18px;
    font-weight: bold;
}


.content {
	font-size: 20px;
    color: white;
}


table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

td {
	font-size: 20px;
    padding: 15px;
    border: 1px solid #ddd;
}


@media (max-width: 768px) {
    .container {
        padding: 10px;
    }
    .tab {
        font-size: 16px;
        padding: 8px;
    }
    .menu {
        font-size: 16px;
    }
    td {
        padding: 8px;
    }
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
    
    <div class='tab'>
        <p1 class='menu'>Hello! Welcome to our Website</p1>
    </div>
    <div class='main'>
        <p1 class='menu'>Searched Train Detail</p1>
    </div>
    <div class='tab'>
        <table>
            <tr>
                <td class='content'>Train Name :</td>
                <td>${trainName}</td>
            </tr>
            <tr>
                <td class='content'>Train Number :</td>
                <td>${trainNumber}</td>
            </tr>
        </table>
    </div>
</body>
</html>
