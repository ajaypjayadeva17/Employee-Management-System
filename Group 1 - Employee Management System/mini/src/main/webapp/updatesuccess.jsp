<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    body {
        background-image: url('https://c0.wallpaperflare.com/preview/389/615/630/business-businessman-communication-concept.jpg');
        background-size: cover;
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

 

    p {
        font-size: 18px;
        color: #333;
        margin-top: 20px;
    }

 

    button {
        background-color: #0074D9;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px;
    }

 

    button:hover {
        background-color: #0056b3;
    }
</style>
<script>
    function handleRedirect() {
        // Redirect to the desired JSP page
        window.location.href = 'menu.jsp';
    }
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<p>Employee updated successfully</p>
<button type="button" onclick="handleRedirect();">Menu</button>
</div>
</body>
</html>