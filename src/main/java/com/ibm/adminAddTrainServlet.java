package com.ibm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class adminAddTrainServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        String trainNumber = req.getParameter("trainNumber");
        String trainName = req.getParameter("trainName");
        String source = req.getParameter("source");
        String destination = req.getParameter("destination");
        int available = Integer.parseInt(req.getParameter("available"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Aditi");
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO TRAIN (Train_number, Train_name, Source, Destination, AVAILABLE) VALUES (?, ?, ?, ?, ?)");
            pstmt.setString(1, trainNumber);
            pstmt.setString(2, trainName);
            pstmt.setString(3, source);
            pstmt.setString(4, destination);
            pstmt.setInt(5, available);
            int rowsAffected = pstmt.executeUpdate();
            res.sendRedirect("addTrain.jsp");
//            if (rowsAffected > 0) {
//                // Train added successfully
//                res.sendRedirect("admin_.jsp");
//            } else {
//                // Failed to add train
//                res.sendRedirect("adminAddTrain.jsp?errorMessage=Failed to add train. Please try again.");
//            }

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            res.sendRedirect("addTrain.jsp?errorMessage=An error occurred. Please try again.");
        }

	}

}
