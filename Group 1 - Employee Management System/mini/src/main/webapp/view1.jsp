<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
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
        background-color: #27ae60; /* Green submit button background */
        color: #fff; /* White submit button text */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        padding: 10px 20px;
    }

    .submit-button:hover {
        background-color: #219a52; /* Darker green on hover */
    }
</style>
</head>
<body>
<form action="EmployeeServlet" method="post">
    <input type="hidden" name="action" value="viewEmployee">
    <h2>View Employee</h2>
    <label for="id">Enter ID:</label>
    <input type="text" id="id" name="id" required>
    <input type="submit" class="submit-button" value="View Employees">
</form>
</body>
</html>
