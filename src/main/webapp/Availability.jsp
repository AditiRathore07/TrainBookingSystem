<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Seat Availability</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 20px;
  }

  h2 {
    text-align: center;
    color: #3366cc;
  }

  form {
    max-width: 400px;
    margin: 0 auto;
  }

  label {
    display: block;
    margin-bottom: 5px;
    color: #333;
  }

  input[type="text"] {
    width: 100%;
    padding: 8px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    font-size: 18px;
    color: #fff;
    background-color: #3366cc;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #225599;
  }
</style>
</head>
<body>
 <h2>Check Seat Availability</h2>
    <form method="post" action="AvailabilityCheckServlet">
        <label for="trainNumber">Train Number:</label>
        <input type="text" id="trainNumber" name="trainNumber" required><br><br>


        <input type="submit" value="Check Availability">
    </form>
</body>
</html>