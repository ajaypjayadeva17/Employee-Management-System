<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>
<style>
    body {
        background-image: url('https://c0.wallpaperflare.com/preview/389/615/630/business-businessman-communication-concept.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

 

    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        padding: 20px;
        text-align: center;
        width: 400px;
    }

 

    label {
        font-size: 18px;
        font-weight: bold;
    }

 

    input[type="text"] {
        width: 80%;
        padding: 10px;
        margin: 10px 0;
    }

 

    .button-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 10px;
    }

 

    input[type="submit"], button {
        background-color: #219ebc;
        color: #fff;
        padding: 12px 24px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

 

    input[type="submit"]:hover, button:hover {
        background-color: #007BBE;
        transform: scale(1.05);
    }
</style>
<script>
    function handleRedirect() {
        // Redirect to the desired JSP page
        window.location.href = 'menu.jsp';
    }
</script>
</head>
<body>
<div class="container">
<h2>Delete Employee</h2>
<form action="EmployeeServlet" method="post">
<input type="hidden" name="action" value="deleteifExists">
<label for="id">Employee ID:</label>
<input type="text" id="id" name="id" required>
<br>
<div class="button-container">
<input type="submit" value="Delete">
<button type="button" onclick="handleRedirect();">Back to Menu</button>
</div>
</form>
</div>
</body>
</html>