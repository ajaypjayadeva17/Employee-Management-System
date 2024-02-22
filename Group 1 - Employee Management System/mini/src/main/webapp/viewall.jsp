<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function handleRedirect() {
        // Redirect to the desired JSP page
        window.location.href = 'menu.jsp';
    }
</script>
</head>
<body>
<h2>View Employee</h2>
 <input type="hidden" name="action" value="viewEmployeeAll">
 
 <table>
<!-- <thead>
<tr>
<th>Employee ID</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Salary</th>
</tr>
</thead>
<tbody> -->
<%-- <c:forEach items="${dataList}" var="employee">
<tr align="center">
<td><c:out value="${employee.id}"></c:out></td>
<td><c:out value="${employee.name}"></c:out></td>
<td><c:out value="${employee.age}"></c:out></td>
<td><c:out value="${employee.gender}"></c:out></td>
<td><c:out value="${employee.salary}"></c:out></td>
</tr>
</c:forEach> --%>
<c:forEach var="employee" items="${dataList}">    
<p>        
	Employee ID: ${employee.id}<br>        
	Name: ${employee.name}<br>        
	Age: ${employee.age}<br>        
	Gender: ${employee.gender}<br>  
	Salary: ${employee.salary} 
</p>    
</c:forEach>

</tbody>


</table>
 <button type="button" onclick="handleRedirect();">Menu</button>
</body>
</html>