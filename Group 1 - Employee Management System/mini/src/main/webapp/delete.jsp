<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Employee</title>
<style>
    body {
        background-color: #f5f5f5; /* Light gray background */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

 

    form {
        background-color: #ffffff; /* White form background */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        padding: 20px;
        text-align: center;
        margin: 50px auto;
        width: 400px;
    }

 

    h2 {
        color: #3498db; /* Blue header text */
        margin-bottom: 20px;
    }

 

    label {
        color: #555; /* Dark gray label text */
        display: block;
        margin-bottom: 10px;
        font-size: 16px;
    }

 

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc; /* Light gray border */
        border-radius: 3px;
        margin-bottom: 10px;
    }

 

    .submit-button {
        background-color: #e74c3c; /* Red submit button background */
        color: #fff; /* White submit button text */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        padding: 10px 20px;
    }

 

    .submit-button:hover {
        background-color: #c0392b; /* Darker red on hover */
    }

 

    .back-button {
        background-color: #555; /* Dark gray back button background */
        color: #fff; /* White back button text */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        padding: 10px 20px;
    }

 

    .back-button:hover {
        background-color: #333; /* Darker gray on hover */
    }
</style>
</head>
<body>
<form action="EmployeeServlet" method="post">
<input type="hidden" name="action" value="deleteEmployee">
<h2>Delete Employee</h2>
<label for="idVal">Enter employee ID:</label>
<input type="text" id="id" name="id" required>
<input type="submit"  class="submit-button" value="Delete">


</form>
</body>
</html>