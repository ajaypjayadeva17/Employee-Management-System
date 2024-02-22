package com.manhattan.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InvalidNameException;

import com.manhattan.*;
import com.manhattan.emp.Employee;

public class EmployeeDao 
{

	public void add(int id,String name,int age,String gender,float salary) 
	{  

        String sql = "INSERT INTO employee(id,name,age,gender,salary) VALUES (?,?,?,?,?)";
        PreparedStatement prep;
		try {
			prep = JDBCConnection.getConnection().prepareStatement(sql);
            prep.setInt(1,id);
            prep.setString(2,name);
            prep.setInt(3,age);
            prep.setString(4,gender);
            prep.setFloat(5,salary);

            prep.executeUpdate();
            prep.close();   
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
	}
	
	
	public ResultSet addifexist(int id)
	{
		String sql = "select * from employee where id=?";
		PreparedStatement prep;
		ResultSet rs = null;
        try 
        {
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
        	prep.setInt(1, id);
            rs = prep.executeQuery();
        }
        catch (SQLException e) 
		{
            e.printStackTrace();
        }
		return rs;
	}
	
	public  List<Employee> findById(int id) 
	{
		String sql = "select * from employee where id=?";
		PreparedStatement prep;
		List<Employee> data = new ArrayList<>();
        try 
        {
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
        	prep.setInt(1, id);
            ResultSet rs = prep.executeQuery();
            while(rs.next()) 
            {
            	Employee e1 = new Employee();
	            int id1 = rs.getInt("id");
	            e1.setId(id1);
	            String name1 = rs.getString("name");
	            e1.setName(name1);
	            int a1 = rs.getInt("age");         
	            e1.setAge(a1);         
	            String g1 =  rs.getString("gender");            
	            e1.setGender(g1);
	            float s1 = rs.getFloat("salary");
	            e1.setSalary(s1);
	            data.add(e1);    
            }
            
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        
        return data;
    }

	public List<Employee> findByName(String name)  
	{
		String sql = "select * from employee where name=?";
		PreparedStatement prep;
		List<Employee> data = new ArrayList<>();
		try 
		{
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
        	prep.setString(1, name);
            ResultSet rs = prep.executeQuery();
      
            while(rs.next()) 
            {
                 Employee e1 = new Employee();
                 int id1 = rs.getInt("id");
                 e1.setId(id1);
                 String name1 = rs.getString("name");
                 e1.setName(name1);
                 int a1 = rs.getInt("age");         
                 e1.setAge(a1);         
                 String g1 =  rs.getString("gender");            
                 e1.setGender(g1);
                 float s1 = rs.getFloat("salary");
                 e1.setSalary(s1);
                 data.add(e1);
             }
            
//             if(!found)
//             {
//            	 throw new InvalidNameException("Invalid name"+name);
//             }
            
        } 
		catch (SQLException e) 
		{
            e.printStackTrace();
        }
       return data;
	}
	
	
	
	public  List<Employee> viewAll() 
	{
		String sql = "select * from employee ";
		PreparedStatement prep;
		List<Employee> data = new ArrayList<>();
        try 
        {
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
            ResultSet rs = prep.executeQuery();
            while(rs.next()) 
            {
            	Employee e1 = new Employee();
	            int id1 = rs.getInt("id");
	            e1.setId(id1);
	            String name1 = rs.getString("name");
	            e1.setName(name1);
	            int a1 = rs.getInt("age");         
	            e1.setAge(a1);         
	            String g1 =  rs.getString("gender");            
	            e1.setGender(g1);
	            float s1 = rs.getFloat("salary");
	            e1.setSalary(s1);
	            data.add(e1);    
            }
            
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        
        return data;
    }
	

	public ResultSet updateifexist(int id)
	{
		String sql = "select * from employee where id=?";
		PreparedStatement prep;
		ResultSet rs = null;
        try 
        {
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
        	prep.setInt(1, id);
            rs = prep.executeQuery();
        }
        catch (SQLException e) 
		{
            e.printStackTrace();
        }
		return rs;
	}
	
	public int update(int id,String name,int age,String gender,float salary) 
	{
   	 String sql = "UPDATE employee SET name = ?, age = ?, gender = ? , salary =? where id=?";
        PreparedStatement preparedStatement=null;
        int rowsUpdated=0;
        try 
        {
            preparedStatement =  JDBCConnection.getConnection().prepareStatement(sql) ;

            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            preparedStatement.setString(3, gender);
            preparedStatement.setFloat(4, salary);

            preparedStatement.setInt(5, id);
            rowsUpdated = preparedStatement.executeUpdate();
            System.out.println(rowsUpdated);
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return rowsUpdated;
    }
	
	public void delete(int id) 
	{
        String sql = "DELETE FROM employee WHERE id = ?";
        PreparedStatement preparedStatement=null;
        try 
        {
            preparedStatement =  JDBCConnection.getConnection().prepareStatement(sql) ;
            preparedStatement.setInt(1, id);
            int rowsDeleted = preparedStatement.executeUpdate();

            if (rowsDeleted > 0) 
            {
                System.out.println("Employee with ID " + id + " has been deleted.");
            } else 
            {
                System.out.println("No employee found with ID " + id + ".");
            }
        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        
    }
	public ResultSet deleteifexist(int id)
	{
		String sql = "select * from employee where id=?";
		PreparedStatement prep;
		ResultSet rs = null;
        try 
        {
        	prep = JDBCConnection.getConnection().prepareStatement(sql);
        	prep.setInt(1, id);
            rs = prep.executeQuery();
        }
        catch (SQLException e) 
		{
            e.printStackTrace();
        }
		return rs;
	}
	
}
