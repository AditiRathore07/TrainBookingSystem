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


public class AdminLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
	    PrintWriter pw = res.getWriter();
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("successfully registered driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","Aditi");
			System.out.println("Got the connection: "+ con.getClass());

	        PreparedStatement pstmt2 = con.prepareStatement("SELECT * FROM admin WHERE username = ? AND password = ?");
	        pstmt2.setString(1, username);
	        pstmt2.setString(2, password);
	        ResultSet rs = pstmt2.executeQuery();
	        if(rs.next()) {
	        	 res.sendRedirect("addTrain.jsp");
	        }
	        else {
	            // Admin verification failed
	            res.sendRedirect("Admin_login.jsp");
	        }
	        }
	        catch (Exception e) {
		        e.printStackTrace();
		        
		    }
	}

}
