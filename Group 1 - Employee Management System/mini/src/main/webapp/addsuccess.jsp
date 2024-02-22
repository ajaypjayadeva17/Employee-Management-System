<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Added Successfully</title>
<style>
    body {
        background-color: #f5f5f5; /* Light gray background */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    p {
        font-size: 24px;
        color: #3498db; /* Blue text color */
        text-align: center;
        margin-top: 100px;
    }

    button {
        background-color: #27ae60; /* Green button background */
        color: #fff; /* White button text */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        padding: 10px 20px;
        display: block;
        margin: 20px auto;
    }

    button:hover {
        background-color: #219a52; /* Darker green on hover */
    }
</style>
<script>                
function handleRedirect() {            
	window.location.href = 'menu.jsp';         
	} 
</script>
</head>
<body>
<p>Employee added successfully</p>
<button type="button" onclick="handleRedirect();">Back to Menu</button>
</body>
</html>
