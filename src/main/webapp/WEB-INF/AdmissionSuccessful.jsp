<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${headerMessage}</h1>

	<table>
		<tr>
			<td>Student Name</td>
			<td>${student1.studentname }</td>
		</tr>
		<tr>
			<td>Student Hobby</td>
			<td>${student1.studenthobby }</td>
		</tr>

		<tr>
			<td>Student Mobile</td>
			<td>${student1.studentmobile }</td>
		</tr>
		<tr>
			<td>Student's date of birth</td>
			<td>${student1.studentdob }</td>
		<tr>
			<td>student skills</td>
			<td>${student1.studentskill}</td>
		</tr>
		<tr>
			<td>Student Address</td>
			<td>Country:${student1.studentaddress.country } city :
				${student1.studentaddress.city } street:
				${student1.studentaddress.street } PINCODE:
				${student1.studentaddress.pincode }</td>
		</tr>



	</table>

</body>
</html>