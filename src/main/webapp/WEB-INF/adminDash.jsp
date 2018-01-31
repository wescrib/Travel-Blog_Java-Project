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
		<title>Admin Dashboard</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">	
		<script src="/js/main.js"></script>
	</head>

	<body>
		<h1>Hello Administrator, ${current_user.firstName}</h1>
		<a href="logout">Logout</a>
		<a href="adminDash/create"><button>Create Account</button></a>
		<a href="dashboard"><button>User View</button></a>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Account Type</th>
				<th>Edit/Delete</th>
			</tr>
			<tr>
				<c:forEach items="${users}" var="user">
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<c:choose>
						<c:when test="${user.admin == 'true'}">
							<td>Administrator</td>
						</c:when>
						<c:otherwise>
							<td>Standard</td>
						</c:otherwise>
					</c:choose>
					<td><a href="/edit/${user.id}">Edit</a> |<a href="/delete/${user.id}">Delete</a></td>
			</tr>
		</c:forEach>
		</table>
	</body>
</html>