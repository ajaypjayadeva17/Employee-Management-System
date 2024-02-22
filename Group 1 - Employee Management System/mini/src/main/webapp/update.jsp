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
        margin-bottom: 20px;
    }

 

    form {
        margin-top: 20px;
    }

 

    label {
        font-size: 18px;
        font-weight: bold;
    }

 

    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
    }

 

    input[type="submit"] {
        background-color: #0074D9;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
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
<h1>Update Employee</h1>
<form action="EmployeeServlet" method="post">
<input type="hidden" name="action" value="updateEmployee">
<label for="id">Employee ID:</label>
<input type="text" id="id" name="id" required>
<br>
<label for="name">Update Name:</label>
<input type="text" id="name" name="name">
<br>
<label for="age">Update Age:</label>
<input type="number" id="age" name="age">
<br>
<label for="gender">Update Gender:</label>
<input type="text" id="gender" name="gender">
<br>
<label for="salary">Update Salary:</label>
<input type="number" id="salary" name="salary" step="0.01">
<br>
<input type="submit" value="Update">
</form>
<br>
<button type="button" onclick="handleRedirect();">Back to menu</button>
</div>
</body>
</html>