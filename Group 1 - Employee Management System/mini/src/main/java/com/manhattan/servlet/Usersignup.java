package com.manhattan.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Usersignup")
public class Usersignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name2 = request.getParameter("n2");
		String uname2 = request.getParameter("u2");
		String pswd2 = request.getParameter("p2");
		String email2 = request.getParameter("e2");
		String phonenum = request.getParameter("ph2");
		
		Connection con=null;
		
		PreparedStatement prep = null;
		
		PrintWriter out = response.getWriter();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","Sanjay@140320");
			
			prep = con.prepareStatement("insert into user values(?,?,?,?,?)");
			
			prep.setString(1, uname2 );
			prep.setString(2, pswd2);
			prep.setString(3, email2 );
			prep.setString(4, name2);
			prep.setString(5, phonenum );
		
			
			int r = prep.executeUpdate();
			if(r>0)
			{
				response.sendRedirect("success.jsp");
				
			}
			
		
				
			
			
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			
			response.sendRedirect("RegistrationFailure.jsp");
		}
		
	}

}
