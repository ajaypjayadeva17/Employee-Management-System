<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<style>

    .bg-image {
    background-image: url('bg.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            height: 100vh; /* Adjust the height as needed */
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #F2EAD3; /* Light beige background color */
            margin: 0;
            padding: 0;
            color: #007B5E; /* Light green text color */
            transition: background-color 0.5s ease;
        }

 

        .container {
            background-color: #EEEDED; /* Light tan background color for content */
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            margin: 50px auto;
            width: 400px;
            transition: background-color 0.5s ease;
        }

 

        h1 {
            color: #219ebc; /* Cerulean blue header text color */
            margin-bottom: 20px;
        }

 

        button {
            background-color: #219ebc; /* Cerulean blue button background color */
            color: #fff; /* White button text color */
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

 

        button:hover {
            background-color: #007BBE; /* Slightly darker blue on hover */
            transform: scale(1.05); /* Slight scale up on hover */
        }

 

        button:active {
            transform: scale(0.95); /* Slight scale down on click */
        }

 

        form {
            margin-bottom: 20px;
        }

 

        /* Background color transition on hover */
        button:hover,
        body:hover,
        .container:hover {
            background-color:#E4F1FF; /* Light gray on hover */
        }
</style>

 

    <script>
        /* function addRedirect() {
            window.location.href = 'Add.jsp';
        } */
	
        function addRedirect() {
            window.location.href = 'Add1.jsp';
        }
 

        function viewRedirect() {
            window.location.href = 'view1.jsp';
        }

 

        function viewRedirect1() {
            window.location.href = 'view3.jsp';
        }

 

        function updateRedirect() {
            window.location.href = 'update1.jsp';
        }

 

        function deleteRedirect() {
            window.location.href = 'delete11.jsp';
        }

 

        function handle2Redirect() {
            window.location.href = 'home.html';
        }
        
        function viewRedirect12() {
            window.location.href = 'viewall.jsp';
        }
</script>
</head>

 

<body class="bg-image">
<div class="container">
<h1>Welcome to Employee Management System</h1>

 

        <form>
<button type="button" onclick="addRedirect();">Add Employee</button>
</form>

 

        <form>
<button type="button" onclick="viewRedirect();">View Employee by ID</button>
</form>

 

        <form>
<button type="button" onclick="viewRedirect1();">View Employee by Name</button>
</form>

<form>
<button type="button" onclick="viewRedirect12();">View All Employee</button>
</form>

 

        <form>
<button type="button" onclick="updateRedirect();">Update Employee</button>
</form>

 

        <form>
<button type="button" onclick="deleteRedirect();">Delete Employee</button>
</form>

 

        <button type="button" onclick="handle2Redirect();">Logout</button>
</div>
</body>
</html>