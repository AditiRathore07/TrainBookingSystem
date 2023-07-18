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

public class AdminRegistration extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter pw = res.getWriter();
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Aditi");
	        PreparedStatement pstmt1 = con.prepareStatement("INSERT INTO admin (username, password) VALUES (?, ?)");
	        pstmt1.setString(1, username);
	        pstmt1.setString(2, password);
	        pstmt1.executeUpdate();
	        System.out.println("ADMIN REGISTRATION SUCCESSFUL");
	        res.sendRedirect("Admin_login.jsp");
	    } catch (Exception e) {
	        e.printStackTrace();
	        res.sendRedirect("adminRegister.jsp?errorMessage=An error occurred. Please try again.");
	    }
	}}
