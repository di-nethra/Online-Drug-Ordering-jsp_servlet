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
	
	<link rel="stylesheet" href="G:\jsp_servlets\Online Drug Ordering System\WebContent\styles\styles.css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-tild ">
			<div>
				<a href="#" class="navbar-brand">Suwasetha Payment Portal </a>
				
			</div>
			
			
		</nav>
	</header>
	<br>
	<div class="container col-lg-9">

		<div class="row">

			<div class="col-lg-6">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form class="left-aligned" action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
				
					<h2>
						
            			Payment Information
            		<br><br>
					</h2>
				</caption>
				<hr>
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Account Number</label> <input type="text"
						value="<c:out value='${user.accountNumber}' />" class="form-control"
						name="accountNumber" required="required">
				</fieldset>
				<hr>
				<fieldset class="form-group">
					<label>User name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name">
				</fieldset>
				<hr>
				<fieldset class="form-group">
					<label>phone number</label> <input type="text"
						value="<c:out value='${user.phoneNumber}' />" class="form-control"
						name="phoneNumber">
				</fieldset>
				<hr>
				<fieldset class="form-group">
					<label>CVC</label> <input type="text"
						value="<c:out value='${user.cvc}' />" class="form-control"
						name="cvc">
				</fieldset>
				<hr>
				<fieldset class="form-group">
					<label>Expiration Date</label> <input type="text"
						value="<c:out value='${user.expDate}' />" class="form-control"
						name="expDate">
				</fieldset>
				<hr>
				<fieldset class="form-group">
					<label>Payment Amount</label> <input type="text"
						value="<c:out value='${user.amount}' />" class="form-control"
						name="amount">
				</fieldset>
				<hr>
				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

	<div class="col-lg-6">
		<img class="bank" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\banking.jpg" alt="40">

	</div>
	</div>
	</div>
	
			<ul class="admin" style="text-align:center; margin-top:80px;">
				
				<li><a href="AdminLogin.jsp">View Users(!!!For administrative purposes only!!! )</a></li>
			</ul>
	
</body>
</html>
