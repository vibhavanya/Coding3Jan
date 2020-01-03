<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>EMPLOYEE ID</th>
			<th>EMPLOYEE NAME</th>
			<th>EMPLOYEE EMAIL</th>			
			<th>EMPLOYEE PASSWORD</th>
			<th>EMPLOYEE DATE OF JOINING</th>
			<th>EMPLOYEE ROLE</th>
			<th>EMPLOYEE PROJECT</th>
			<!-- <th>EMPLOYEE NAME</th>
			<th>EMPLOYEE EXPERIENCE</th>
			<th>EMPLOYEE SALARY</th> -->
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td><c:out value="${employee.getEmployeeId()}" /></td>
				<td><c:out value="${employee.getEmployeeName()}" /></td>
				<td><c:out value="${employee.getEmail()}" /></td>
				<td><c:out value="${employee.getPassword()}" /></td>
				<td><c:out value="${employee.getDateOfJoining()}" /></td>
				<td><c:out value="${employee.getRole()}" /></td>
				<td><c:out value="${employee.getProject().getProjectId()}" /></td>
			
			</tr>

		</c:forEach>
		<button type="submit" onclick="location.href='/'">Home</button>
	</table>

</body>
</html>