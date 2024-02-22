package com.manhattan.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.naming.InvalidNameException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manhattan.dao.EmployeeDao;
import com.manhattan.emp.Employee;
import com.manhattan.excep.InvalidIdException;
import com.manhattan.excep.*;

//@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	EmployeeDao employeeDao = new EmployeeDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");

		if ("addEmployee".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			float salary = Float.parseFloat(request.getParameter("salary"));
			employeeDao.add(id, name, age, gender, salary);
			response.sendRedirect("addsuccess.jsp");
		}

		else if ("addifExists".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			ResultSet r = employeeDao.addifexist(id);
			try {
				if (r.next() == true) {
					response.sendRedirect("addfailure.jsp");
				} else {
					response.sendRedirect("Add.jsp");

				}
			} catch (SQLException e) {

				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		else if ("viewEmployee".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			List<Employee> data = null;
			try {
				data = employeeDao.findById(id);
				if (data.size() > 0) {
					request.setAttribute("dataList", data);
					request.getRequestDispatcher("/view.jsp").forward(request, response);
				} else {
					throw new InvalidIdException("Id not found");
				}
			} catch (InvalidIdException e1) {
				request.setAttribute("error", e1.getMessage());
				RequestDispatcher dis = request.getRequestDispatcher("viewbyIdException.jsp");
				dis.forward(request, response);
			}

		}

		else if ("viewEmployee1".equals(action)) {
			String name = String.valueOf(request.getParameter("name"));

			List<Employee> data = null;

			try {
				data = employeeDao.findByName(name);
				if (data.size() > 0) {
					request.setAttribute("dataList", data);
					request.getRequestDispatcher("/view2.jsp").forward(request, response);
				} else {
					throw new InvalidNameException("Name not found");
				}

			} catch (InvalidNameException e) {
				request.setAttribute("error", e.getMessage());
				RequestDispatcher dis = request.getRequestDispatcher("viewbynameException.jsp");
				dis.forward(request, response);
			}

		}
		
		else if ("viewEmployeeAll".equals(action)) 
		{
			

			List<Employee> data = employeeDao.viewAll();

			request.setAttribute("dataList", data);
			
			request.getRequestDispatcher("/viewall.jsp").forward(request, response);
				
		}

		else if ("updateifExists".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			ResultSet r = employeeDao.updateifexist(id);
			try {
				if (r.next() == true) {
					response.sendRedirect("update.jsp");
				} else {
					response.sendRedirect("updatefailure.jsp");

				}
			} catch (SQLException e) {

				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		else if ("updateEmployee".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String gender = request.getParameter("gender");
			float salary = Float.parseFloat(request.getParameter("salary"));

			int rowsUpdated = employeeDao.update(id, name, age, gender, salary);
			if (rowsUpdated > 0) {
				response.sendRedirect("updatesuccess.jsp");
			} else {
				response.sendRedirect("updatefailure1.jsp");
			}

		}

		else if ("deleteifExists".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			ResultSet r = employeeDao.deleteifexist(id);
			try {
				if (r.next() == true) {
					employeeDao.delete(id);
					response.sendRedirect("delete1.jsp");
				} else {
					response.sendRedirect("deletefailure.jsp");

				}
			} catch (SQLException e) {

				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		/*
		 * else if ("deleteEmployee".equals(action)) { int id =
		 * Integer.parseInt(request.getParameter("id"));
		 * 
		 * employeeDao.delete(id); response.sendRedirect("delete1.jsp");
		 * 
		 * }
		 */

	}

}
