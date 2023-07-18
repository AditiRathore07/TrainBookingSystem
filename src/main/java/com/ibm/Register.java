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


public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		String f= req.getParameter("fname");
		String l= req.getParameter("lname");
		String u= req.getParameter("uname");
		String e= req.getParameter("email");
		long mobno = Long.parseLong(req.getParameter("mob"));
		int pwd = Integer.parseInt(req.getParameter("pwd"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("successfully registered");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","Aditi");
			System.out.println("Got the connection: "+ con.getClass());
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO REG VALUES(?,?,?,?,?,?)");
			pstmt.setString(1, f);
			pstmt.setString(2, l);
			pstmt.setString(3, u);
			pstmt.setString(4, e);
			pstmt.setLong(5, mobno);
			pstmt.setInt(6, pwd);
			pstmt.executeUpdate();
			System.out.println("REGISTATION SUCCESSFULL");
			res.sendRedirect("PassengerLogin.jsp");
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	
	}


