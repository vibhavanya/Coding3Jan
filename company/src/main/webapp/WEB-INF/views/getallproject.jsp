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
			<th>PROJECT ID</th>
			<th>PROJECT NAME</th>
			<th>PROJECT DESCRIPTION</th>
			<th>PROJECT DURATION</th>
			<!-- <th>EMPLOYEE NAME</th>
			<th>EMPLOYEE EXPERIENCE</th>
			<th>EMPLOYEE SALARY</th> -->
		</tr>
		<c:forEach items="${projects}" var="project">
			<tr>
				<td><c:out value="${project.getProjectId()}" /></td>
				<td><c:out value="${project.getProjectName()}" /></td>
				<td><c:out value="${project.getProjectDescription()}" /></td>
				<td><c:out value="${project.getProjectDuration()}" /></td>
			
			</tr>

		</c:forEach>
		<button type="submit" onclick="location.href='/'">Home</button>
	</table>

</body>
</html>