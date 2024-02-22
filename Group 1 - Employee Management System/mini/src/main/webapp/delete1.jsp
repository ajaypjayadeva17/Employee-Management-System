<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Deleted</title>
<script>                
function handleRedirect() {            
	window.location.href = 'menu.jsp';         
	} 
</script>
<style>
        body {
            background-color: #f4f4f4; /* Light gray background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }

 

        .container {
            background-color: #ffffff; /* White container background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 50px auto;
            width: 400px;
        }

 

        h1 {
            color: #3498db; /* Blue header text */
            margin-bottom: 20px;
        }

 

        p {
            color: #333; /* Dark gray text */
            font-size: 18px;
            margin-bottom: 20px;
        }

 

        .menu-button {
            background-color: #3498db; /* Blue menu button background */
            color: #fff; /* White menu button text */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            padding: 10px 20px;
        }

 

        .menu-button:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }
</style>
</head>
<body>
<div class="container">
<h1>Employee Deleted Successfully</h1>
<p>Employee has been deleted from the records.</p>
<button type="button" class="menu-button" onclick="handleRedirect();">Menu</button>
</div>
</body>
</html>