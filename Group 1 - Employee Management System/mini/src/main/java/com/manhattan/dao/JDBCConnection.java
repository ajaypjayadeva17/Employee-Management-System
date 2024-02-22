package com.manhattan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.manhattan.servlet.EmployeeServlet;
public class JDBCConnection {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Sanjay@140320");
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}
