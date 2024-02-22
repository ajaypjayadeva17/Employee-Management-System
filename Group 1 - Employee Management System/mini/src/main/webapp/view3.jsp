<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employees</title>
<style>
  /* Reset default margins and padding */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

 

  /* Apply a background color to the entire page */
  body {
    background-color: #f5f5f5; /* Light gray */
    font-family: Arial, sans-serif;
    text-align: center;
    padding: 100px;
  }

 

  /* Style the form container */
  form {
    background-color: #ffffff; /* White background */
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Light shadow */
    padding: 20px;
    max-width: 400px;
    margin: 0 auto;
  }

 

  /* Style form labels */
  label {
    display: block;
    font-weight: bold;
    margin-bottom: 10px;
  }

 

  /* Style text inputs */
  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc; /* Light gray border */
    border-radius: 3px;
  }

 

  /* Style the submit button */
  input[type="submit"] {
    background-color: #007bff; /* Blue */
    color: #fff; /* White text */
    border: none;
    border-radius: 3px;
    padding: 10px 20px;
    cursor: pointer;
  }

 

  /* Hover effect for buttons */
  input[type="submit"]:hover {
    opacity: 0.8;
  }
</style>
</head>
<body>
<form action="EmployeeServlet" method="post">
<input type="hidden" name="action" value="viewEmployee1">
<label for="name">Enter name:</label>
<input type="text" id="name" name="name" required />
<input type="submit" value="View Employees" />
</form>
</body>
</html>