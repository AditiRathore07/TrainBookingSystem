package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BookTrainServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
        String trainNumber = req.getParameter("trainNumber");
        String passengerName = req.getParameter("passengerName");
        String gender = req.getParameter("gender");
        int age = Integer.parseInt(req.getParameter("age"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Aditi");

            // Check seat availability for the selected train
            PreparedStatement pstmt = con.prepareStatement("SELECT AVAILABLE FROM TRAIN WHERE train_number=?");
            pstmt.setString(1, trainNumber);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                int availableSeats = rs.getInt("available");
                if (availableSeats > 0) {
                    
                    PreparedStatement updateStmt = con.prepareStatement("UPDATE train SET available=? WHERE train_number=?");
                    updateStmt.setInt(1, availableSeats - 1); // Decrement available seats
                    updateStmt.setString(2, trainNumber);
                    updateStmt.executeUpdate();
                   

                    PreparedStatement bookStmt = con.prepareStatement(
                            "INSERT INTO bookings (Train_number, Passenger_name, gender, age, booking_date) VALUES (?, ?, ?, ?, ?)");
                    bookStmt.setString(1, trainNumber);
                    bookStmt.setString(2, passengerName);
                    bookStmt.setString(3, gender);
                    bookStmt.setInt(4, age);
                    bookStmt.setTimestamp(5, new Timestamp(System.currentTimeMillis())); 
                    bookStmt.executeUpdate();
                    bookStmt.close();
                    pw.println("<h2 style=\"color: #4CAF50; text-align: center;\">Booking Successful!</h2>");
                    pw.println("<p style=\"text-align: center;font-size:25px\">Dear " + passengerName + ", your booking for Train " + trainNumber + " is confirmed.</p>");
                } else {
                    // No available seats, booking failed
                	 pw.println("<script type='text/javascript'>alert('Booking Failed! Sorry, there are no available seats for Train " + trainNumber + ".');window.location.href='bookTrain.jsp';</script>");
                }
            } else {
            	pw.println("<script type='text/javascript'>alert('Booking Failed! No information available for Train " + trainNumber + ".');window.location.href='bookTrain.jsp';</script>");
            }

            pstmt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<script type='text/javascript'>alert('Booking Failed! An error occurred while processing the booking. Please try again.');window.location.href='bookTrain.jsp';</script>");
        }

}
}