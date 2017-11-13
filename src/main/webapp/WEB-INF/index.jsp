<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h2>Hello World!</h2>
	<p>${msg}</p>
	<form:errors path="student1*" />
	<h1>${dummyMessage}</h1>
	<form action="submitadmissionform.html" method="post">

		<table>
			<tr>
				<td>Student name</td>
				<td><input type="text" name="studentname" /></td>
			</tr>
			<tr>
				<td>Student Hobby</td>
				<td><input type="text" name="studenthobby" /></td>
			</tr>
			<tr>
				<td>mobile number</td>
				<td><input type="text" name="studentmobile">
			</tr>
			<tr>
				<td>Student dob</td>
				<td><input type="text" name="studentdob">
			<tr>
				<td>Student's Skills</td>
				<td><select name="studentskill" multiple>
						<option value="java core">core java</option>
						<option value="dot net">dot net</option>
						<option value="oracle">Oracle</option>
						<option value="spring ">Spring</option>
						<option value="hibernate">hibernate</option>
				</select></td>
			</tr>

		</table>
		<table>
			<tr>
				<td>Studen's address</td>
			</tr>

			<tr>
				<td>Country:<input type="text" name="studentaddress.country"></td>
				<td>City:<input type="text" name="studentaddress.city"></td>
				<td>Street:<input type="text" name="studentaddress.street"></td>
				<td>pin:<input type="text" name="studentaddress.pincode"></td>
				<td><input type="submit" value="adressbook">
			</tr>



		</table>


	</form>

</body>
</html>
