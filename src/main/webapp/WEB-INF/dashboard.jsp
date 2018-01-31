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
		<title>User Dashboard</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">	
		<script src="/js/main.js"></script>
	</head>

	<body>
		<a href="logout">Logout</a>
		<h1>STANDARD USER</h1>
		${current_user.firstName}

		<br><br>


		<form:form action="dashboard" method="post" enctype="multipart/form-data" modelAttribute="postPic">
		<p>
			<form:label path="description">Description
				<form:textarea path="description" cols="40" rows="7" placeholder="Enter a little blurb about your photo here, like how you got there or how you felt in that moment."/>
				<form:errors path="description"/>
			</form:label>
		</p>
		<p>
			<form:label path="location">Location
				<form:input path="location" placeholder="Town, city, province, rough approximation"/>
				<form:errors path="location"/>
			</form:label>
		</p>
		<p>
			<form:label path="country">Country
				<form:input path="country" placeholder="Full Name"/>
				<form:errors path="country"/>
			</form:label>
		</p>
			<input type="file" name="file">
			<input type="submit" value="Submit">
		</form:form>

		<c:forEach items="${posts}" var="post">
			
			<p>${post.id}<img src="/postImages/${post.imageName}" alt="a photo is meant to be here" style="width: 300px;"></p>
		</c:forEach>

	</body>
</html>