<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
        <title>Employee Management System</title>
        <link rel="stylesheet" href="LoginCss.css">
        <script>                
function MenuRedirect() {            
	window.location.href = 'menu.jsp';         
	} 
</script> 
</head>
<body>
	<div class="banner"/>
      
            <div class="navbar">
                <img class="logo" src="https://companieslogo.com/img/orig/TGL-6604e15c.png?t=1660380022">
                <ul>
                    <li><a href="home.html">Home</a></li>
                    <li><a href="AboutUs.jsp">About</a></li>
                    <li><a href="Login.jsp">SignIn</a></li>
                </ul>
            </div>
	<div class="login-container">
	 <div class="banner"/>
    <div class="login-card">
   
        <h2>LogIn</h2>
        <form action="Userlogin" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="u1" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="p1" placeholder="Enter your password" required>
            </div>
            <button type="submit" onclick="MenuRedirect();">Login</button>
        </form>
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
    </div>
</div>

</body>
</html>
