<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
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

     <div class="container">
       <h1 style="text-align: center; color: blue;">List Of Employee</h1>
       <a href="regist">Registration Page</a> 	
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
				<c:forEach items="${elist }" var="emp">
				    <tr>
				      <th>${emp.eid }</th>
				      <th>${emp.name }</th>
				      <th>${emp.mobile }</th>
				      <th>${emp.email }</th>
				      <th>${emp.password }</th>
				    </tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>