<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Records</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: #f5f5f5; /* Light gray background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .card {
            background-color: #ffffff; /* White card background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            margin: 50px auto;
            width: 400px;
        }

        h2 {
            color: #3498db; /* Blue header text */
            margin-bottom: 20px;
        }

        label {
            color: #555; /* Dark gray label text */
            display: block;
            margin-bottom: 5px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 3px;
            margin-bottom: 10px;
        }

        .submit-button {
            background-color: #3498db; /* Blue submit button background */
            color: #fff; /* White submit button text */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            padding: 10px 20px;
        }

        .submit-button:hover {
            background-color: #0076bf; /* Darker blue on hover */
        }

        .back-button {
            background-color: #555; /* Dark gray back button background */
            color: #fff; /* White back button text */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            padding: 10px 20px;
        }

        .back-button:hover {
            background-color: #333; /* Darker gray on hover */
        }
    </style>
</head>
<body>
<center>
    <div class="card">
        <h2>Add Employee</h2>
        <form action="EmployeeServlet" method="post">
            <input type="hidden" name="action" value="addEmployee">
            <label for="id">Enter ID:</label>
            <input type="text" id="id" name="id" required pattern="[0-9]+" />

            <label for="name">Enter Name:</label>
            <input type="text" id="name" name="name" required />

            <label for="age">Enter Age:</label>
            <input type="number" id="age" name="age" required />

            <label for="gender">Enter Gender:</label>
            <select id="gender" name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>

            <label for="salary">Enter Salary ($):</label>
            <input type="text" id="salary" name="salary" required pattern="[0-9]+" />

            <button type="submit" class="submit-button">Submit</button>
            <script>
    function handleRedirect() {
        window.location.href = 'menu.jsp'; // Adjust the URL to the menu page as needed
    }
</script>
            
            <button type="button" class="back-button" onclick="handleRedirect();">Back to menu</button>
        </form>
    </div>
</center>
</body>
</html>
