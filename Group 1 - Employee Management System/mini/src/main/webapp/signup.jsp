<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>Employee Management System</title>
        <link rel="stylesheet" href="SignupCss.css">
<script>                
function SignUpRedirect() {            
	window.location.href = 'Login.jsp';         } 
</script>
</head>
<body>
<div class="banner"/>

      
            <div class="navbar">
                <img class="logo" src="https://companieslogo.com/img/orig/MANH.D-75cfae1e.png?t=1683438110">
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="AboutUs.jsp">About</a></li>
                    <li><a href="Login.jsp">SignIn</a></li>
                </ul>
            </div>

<form method="post" action="Usersignup">

<label for="username">Name:</label>
<input type="text" id="username" name="n2" required><br>

<label for="username">Username:</label>
<input type="text" id="username" name="u2" required><br>

<label for="password">Password:</label>
<input type="password" id="password" name="p2" required><br>

<label for="password">EmailId:</label>
<input type="text" id="password" name="e2" required><br>
<label for="password">Phone_number:</label>
<input type="text" id="password" name="ph2" required><br>

<input type="submit" onclick="SignUpRedirect();" value="Submit">


</form>
</body>
</html>