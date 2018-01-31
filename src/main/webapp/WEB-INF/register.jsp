<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login | Register</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">	
		<script src="/js/main.js"></script>
	</head>

	<body>
		<h1>REGISTER</h1>
		<form:form action="register" method="post" modelAttribute="user">
		<p></p>
			<form:label path="email">Email:
				<form:input path="email"></form:input>
				<p style="color: red;"><form:errors path="email"></form:errors></p>
			</form:label>
		</p>
			<form:label path="firstName">First Name:
				<form:input path="firstName"></form:input>
				<p style="color: red"><form:errors path="firstName"></form:errors></p>
			</form:label>
		<p>
			<form:label path="lastName">Last Name:
				<form:input path="lastName"></form:input>
				<p style="color: red"><form:errors path="lastName"></form:errors></p>
			</form:label>
		</p>
			<form:label path="password">Password:
				<form:input path="password" type="password"></form:input>
				<p style="color: red"><form:errors path="password"></form:errors></p>
			</form:label>
		<p>
			<form:label path="confirm">Confirm Password:
				<form:input path="confirm" type="password"></form:input>
				<p style="color: red"><form:errors path="confirm"></form:errors></p>
			</form:label>
		</p>
			<input type="submit" value="Submit">
		</form:form>
		<h1>LOGIN</h1>
		<form action="/login" method="post">
			<p>Login <input type="text" name="email"></p>
			<p>Password <input type="password" name="password"></p>
			<input type="submit" value="Login">
		</form>
		<br>
		<a href="discover"><img src="/images/compass-256.png" alt="Discover"></a>
	</body>
</html>