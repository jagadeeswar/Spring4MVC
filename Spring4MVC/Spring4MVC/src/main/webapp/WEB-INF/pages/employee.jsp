<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form</title>
</head>
<body>
<form:form action="saveEmployee" method="post" commandName="emp">
	<table>
		<tr>
			<td>Employee Id:</td>
			<td><form:input path="empId"/></td>
		</tr>
		<tr>
			<td><form:label path="firstName">FirstName:</form:label></td>
			<td><form:input path="firstName"/></td>
		</tr>
	
		<tr>
			<td><form:label path="lastName">LastName:</form:label></td>
			<td><form:input path="lastName"/></td>
		</tr>
		
		<tr>
			<td><form:label path="salary">Salary:</form:label></td>
			<td><form:input path="salary"/></td>
		</tr>
		
		<tr>
			<td></td>
			<td>
				<input type="submit" value="Save"/>
			</td>
		</tr>
		
		
	</table>
</form:form>
</body>
</html>