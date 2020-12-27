<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#" style="color: blue;">Amazon</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="logine">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"></a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> User </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="logine">SignUp</a> <a
							class="dropdown-item" href="signin">SignIn</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="logout">Logout</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<h1 style="text-align: center; color: blue;">List Of Employee</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>${emp.eid }</th>
					<th>${emp.name }</th>
					<th>${emp.mobile }</th>
					<th>${emp.email }</th>
					<th>${emp.password }</th>
				</tr>
			</tbody>
		</table>
</body>
</html>