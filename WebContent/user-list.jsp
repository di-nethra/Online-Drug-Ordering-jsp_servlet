<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Online Payments</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body >

	<header>
		<nav class="navbar navbar-dark bg-warning">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand font-weight-bold"> Online Payments </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}></div> -->

		<div class="container">
			<h3 class="text-center">User Details</h3>
			<hr>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Account Number</th>
						<th>Name</th>
						<th>Phone Number</th>
						<th>District</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.accountNumber}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.phoneNumber}" /></td>
							<td><c:out value="${user.district}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
						
					
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
				<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-warning">Add
					New User</a>
			</div>
		</div>
	</div>
</body>
</html>
