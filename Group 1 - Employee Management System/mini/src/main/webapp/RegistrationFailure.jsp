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

 

    h1 {
        font-size: 24px;
        color: #333;
    }

 

    p {
        font-size: 18px;
        color: #333;
        margin-top: 20px;
    }
</style>
<script>
    function handleRedirect() {
        // Redirect to the desired JSP page
        window.location.href = 'Login.jsp';
    }
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Registration Failed</h1>
<p>This User already Exists</p>
<button type="button" onclick="handleRedirect();">Back to Login</button>
</div>
</body>
</html>