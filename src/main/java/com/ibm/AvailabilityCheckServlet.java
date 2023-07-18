package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AvailabilityCheckServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 res.setContentType("text/html");
	     PrintWriter pw = res.getWriter();
	     String trainNumber = req.getParameter("trainNumber");
	     try {
	    	 Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Aditi");
	            PreparedStatement pstmt = con.prepareStatement("SELECT AVAILABLE FROM TRAIN WHERE train_number=?");
	            pstmt.setString(1, trainNumber);
	            ResultSet rs = pstmt.executeQuery();

	            if (rs.next()) {
	                int availableSeats = rs.getInt("available");

	                pw.println("<h2 style='text-align: center; color: #3366cc;'>Seat Availability for Train " + trainNumber + "</h2>");
	                pw.println("<p>Available Seats: " + availableSeats + "</p>");
	                
	                pw.println("<form action='bookTrain.jsp'>");
	                pw.println("    <input type='submit' value='Back to Book Train' style='display: block; width: 100%; padding: 10px; font-size: 18px; color: #fff; background-color: #3366cc; border: none; border-radius: 4px; cursor: pointer;'>");
	                pw.println("</form>");
	            } else {
	                pw.println("<h2>No information available for Train " + trainNumber + "</h2>");
	            }
		} catch (Exception e) {
			 e.printStackTrace();
	            // Error occurred
	            pw.println("<h2>An error occurred while checking seat availability. Please try again.</h2>");
		}
	}

}
