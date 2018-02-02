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
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">	
		<!-- <link rel="stylesheet" type="text/css" href="/css/style.css"> -->
		<script src="/js/main.js"></script>
		<style>
			body{
				background-image: url(/postImages/${post.imageName});
				width: 90%;
				height: 100%;
				background-size: cover;
				background-repeat: no-repeat;
			}

			.content{
				float: right;
				position: absolute;;
				bottom: 10px;
				right: 50px;
			}

			.content p {
				text-shadow: 1px 1px 3px black;
			}

			#basic {
				position:absolute;
				right: 5px;
			}

			.btn {
				background-color: transparent;
			}

		</style>
	</head>

	<body class="text-light">
		<a href="dashboard" class="text-center">Home</a>
		<a id="basic" class="m-5 btn btn-light text-primary" href="discover">⮚</a>
		<div class="content">

			<!-- <p>${post.description}</p> -->
			<p class="display-2">${post.location}</p>
			<p class="display-2">${post.country}</p>
			<p>By ${post.getUser().getFirstName()}</p>
		</div>
	</body>
</html>