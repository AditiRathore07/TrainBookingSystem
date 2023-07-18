<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Trains</title>
    <style> 
    *{
margin:0;
padding:0;
box-sizing:border-box;
}
body{
font-family: Arial, sans-serif;
 background-image: url("https://images.unsplash.com/photo-1563632158089-0ccec4fb87cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80");
}
   .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h2 {
            margin-top: 0;
            text-align: center;
            color: black;
        }

        /* Form styles */
        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
        }

        /* Media Queries for responsiveness */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            input[type="text"],
            input[type="password"],
            input[type="number"],
            input[type="submit"] {
                padding: 8px;
            }
        }

    </style>
</head>
<body>

    <%-- Book Train button --%>
    <div class="container">
    <h2>Book Train</h2>
    <div class="tab"><p1 class="menu red">Please Check The <a href='Availability.jsp'>Seat availability</a> before Booking !</p1></div><br><br>
    <form method="post" action="BookTrainServlet">
        <label for="trainNumber">Train Number:</label>
        <input type="text" id="trainNumber" name="trainNumber" required><br><br>

        <label for="passengerName">Passenger Name:</label>
        <input type="text" id="passengerName" name="passengerName" required><br><br>
        
        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br><br>
        <input type="submit" value="Book Train">
    </form>
   </div>
</body>
</html>
