package com.manhattan.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname1 = request.getParameter("u1");
		String pswd1 = request.getParameter("p1");
		
		PreparedStatement stmt=null;
		Connection con=null;
				
		PrintWriter out = response.getWriter();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","Sanjay@140320");
			stmt = con.prepareStatement("select * from user where username=? and password=?");
			
			stmt.setString(1, uname1);
			stmt.setString(2, pswd1);
			
			ResultSet rs = stmt.executeQuery();
			
			
			if(rs.next())
			{
					response.sendRedirect("menu.jsp");
					
			}
			else
				{
					response.sendRedirect("Loginfailed.jsp");
				}

		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		finally 
		{
  			
  			if(stmt!=null) 
  			{
  				try 
  				{
  					stmt.close();
  				}
  				catch(SQLException e) 
  				{
  					e.printStackTrace();
  				}
  			}
  			if(con!=null) 
  			{
  				try 
  				{
  					con.close();
  				}
  				catch(SQLException e) 
  				{
  					e.printStackTrace();
  				}
  			}
		}
	}

}
