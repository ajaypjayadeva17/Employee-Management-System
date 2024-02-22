<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page Not Found</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        text-align: center;
        margin: 0;
        padding: 0;
    }

 

    .container {
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        margin: 100px auto;
        padding: 20px;
        max-width: 400px;
    }

 

    h6 {
        color: #FF5733;
        font-size: 24px;
        margin-bottom: 20px;
    }

 

    button {
        background-color: #219ebc;
        color: #fff;
        padding: 12px 24px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

 

    button:hover {
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
<h6>ID Doesn't Exist</h6>
<button type="button" onclick="handleRedirect();">Back to Menu</button>
</div>
</body>
</html>