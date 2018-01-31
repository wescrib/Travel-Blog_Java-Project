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
		<title>Index</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">	
		<script src="/js/main.js"></script>
	</head>

	<body>
		<h1>EDIT ACCOUNT</h1>
		<h2>${user.firstName} ${user.lastName}</h2>
		<form action="${user.id}/update" method="post">
			<p>First Name: <input type="text" name="firstName" value="${user.firstName}"></p>
			<p>Last Name: <input type="text" name="lastName" value="${user.lastName}"></p>
			<p>Email: <input type="text" name="email" value="${user.email}"></p>
			<p>Account Type: <select name="admin">
				<c:choose>
					<c:when test="${user.admin == 'true'}">
						<option value="true">Administrator</option>
						<option value="false">Standard</option>
					</c:when>
					<c:otherwise>
							<option value="false">Standard</option>
							<option value="true">Administrator</option>
					</c:otherwise>
				</c:choose>
			</select></p>
			<input type="submit" value="submit">
		</form>

	</body>
</html>