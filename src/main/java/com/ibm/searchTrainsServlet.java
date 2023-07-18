package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class searchTrainsServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 res.setContentType("text/html");
	        PrintWriter pw = res.getWriter();
	        String source = req.getParameter("source");
	        String destination = req.getParameter("destination");
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Aditi");
	            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM Train WHERE source=? AND destination=?");
	            pstmt.setString(1, source);
	            pstmt.setString(2, destination);
	            ResultSet rs = pstmt.executeQuery();

	            if (rs.next()) {
	                String trainNumber = rs.getString("Train_number");
	                String trainName = rs.getString("Train_name");

	                // Set the attributes in the request object
	                req.setAttribute("trainName", trainName);
	                req.setAttribute("trainNumber", trainNumber);
	                req.getRequestDispatcher("searchTrainResult.jsp").forward(req, res);

	            } else {
	                // No matching trains found
	            	pw.println("<script type='text/javascript'>alert('No trains found for the given source and destination.');window.location.href='bookTrain.jsp';</script>");
	            }

	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Error occurred
	            pw.println("<script type='text/javascript'>alert('An error occurred. Please try again.');window.location.href='bookTrain.jsp';</script>");
	        }
	        
	}

}
