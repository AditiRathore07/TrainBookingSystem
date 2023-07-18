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

public class PassengerLoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		String u= req.getParameter("username");
		int pwd = Integer.parseInt(req.getParameter("password"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("successfully registered Driver for PassengerLoginServlet ");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","Aditi");
			System.out.println("Got the connection: "+ con.getClass());
			 PreparedStatement pstmt = con.prepareStatement("SELECT * FROM REG WHERE username=? AND password=?");
	         pstmt.setString(1, u);
	         pstmt.setInt(2, pwd);
	         ResultSet rs = pstmt.executeQuery();

	            if (rs.next()) {
	                // Passenger authenticated successfully
	                res.sendRedirect("WelcomeUser.jsp");
	            } else {
	                // Login failed
	                pw.println("<script type='text/javascript'>alert('Invalid username or password. Please try again.');window.location.href='PassengerLogin.jsp';</script>");
	            }

	            pstmt.close();
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	            pw.println("<script type='text/javascript'>alert('An error occurred. Please try again.');window.location.href='PassengerLogin.jsp'</script");
	        }
	    }
	}


