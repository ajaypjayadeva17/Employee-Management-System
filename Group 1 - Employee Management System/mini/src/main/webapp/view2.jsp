<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>       
        function handleRedirect() {           
            // Redirect to the desired JSP page            
            window.location.href = 'menu.jsp';      
        }     
</script>
<title>Insert title here</title>
<style>
  /* Reset default margins and padding */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

 

  /* Apply a background color to the entire page */
  body {
    background-color: #f5f5f5; /* Light gray */
    font-family: Arial, sans-serif;
    text-align: center;
    padding: 20px;
  }

 

  /* Style the page title */
  h2 {
    color: #333; /* Dark gray text */
    font-size: 24px;
    margin-bottom: 20px;
  }

 

  /* Style the table */
  table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    background-color: #fff; /* White background */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Light shadow */
  }

 

  table th, table td {
    padding: 10px;
    border: 1px solid #ccc; /* Light gray border */
  }

 

  table th {
    background-color: #007bff; /* Blue background */
    color: #fff; /* White text */
  }

 

  /* Style the "Back to menu" button */
  button[type="button"] {
    background-color: #007bff; /* Blue */
    color: #fff; /* White text */
    border: none;
    border-radius: 3px;
    padding: 10px 20px;
    cursor: pointer;
  }

 

  /* Hover effect for buttons */
  button[type="button"]:hover {
    opacity: 0.8;
  }
</style>
</head>
<body>
<%--     <c:if test="${i > 0}">
<% 
            String message = "Hello, this is a message from Java code!";
            out.print(message);
        %>
</c:if>

 

    <table>
<tbody>
<c:forEach items="${dataList}" var="employee">
<tr align="center">
<td><c:out value="${employee.id}"></c:out></td>
<td><c:out value="${employee.name}"></c:out></td>
<td><c:out value="${employee.age}"></c:out></td>
<td><c:out value="${employee.gender}"></c:out></td>
<td><c:out value="${employee.salary}"></c:out></td>
</tr>
</c:forEach>
</tbody>
</table>

<button type="button" onclick="handleRedirect();">Back to menu</button> --%>
<h2>View Employee</h2>
<table>
<thead>
<tr>
<th>Student ID</th>
<th>Name</th>
<th>Age</th>
<th>Grade</th>
<th>Salary</th>
</tr>
</thead>
<tbody>
<c:forEach items="${dataList}" var="employee">
<tr align="center">
<td><c:out value="${employee.id}"></c:out></td>
<td><c:out value="${employee.name}"></c:out></td>
<td><c:out value="${employee.age}"></c:out></td>
<td><c:out value="${employee.gender}"></c:out></td>
<td><c:out value="${employee.salary}"></c:out></td>
</tr>
</c:forEach>
</tbody>
</table>
<button type="button" onclick="handleRedirect();">Back to menu</button>
</body>
</html>