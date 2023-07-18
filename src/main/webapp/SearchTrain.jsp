<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search train</title>
 <style>
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
            
            background-image: url(https://images.unsplash.com/photo-1563632158089-0ccec4fb87cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h2 {
            background-color: black;
            text-align: center;
    		color: #fff;
            padding: 10px;
            margin: 0;
        }
.container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
        } input[type="text"],
        input[type="submit"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
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
<div class="box">
   
    <%-- Train search form --%>
    <h2>Search Train</h2>
    <div class="container">
    <form method="post" action="searchTrainsServlet">
        <label for="source">Source:</label>
        <input type="text" id="source" name="source" required><br><br>

        <label for="destination">Destination:</label>
        <input type="text" id="destination" name="destination" required><br><br>

        <input type="submit" value="Search">
    </form>
    </div>
 </div>
</body>
</html>