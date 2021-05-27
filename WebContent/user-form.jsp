<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Online Payments</title>
   <!-- bootstrapCDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   
    <!-- googlefonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/ea06263aef.js" crossorigin="anonymous"></script>
    
    <!-- css -->
    <link rel="stylesheet" href="G:\jsp_servlets\Online Drug Ordering System\WebContent\styles\styles.css">
	
	 <!-- js -->
	<Script src="G:\jsp_servlets\Online Drug Ordering System\WebContent\JS\success.js"></Script>
	
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-tild ">
			<div>
			<img class="logo" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\suwasetha.png" alt="60">
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
					<form class="left-aligned" action="update" method="post" >
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post" onsubmit="return PopUpMsg()">
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
						name="name" id="name">
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
						name="cvc" id="cvc">
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
				

				<button type="submit" class="btn btn-success" onclick="PopUpMsg()">Proceed Payment</button>
				</form>
			</div>
		</div>
	</div>

	<div class="col-lg-6">
		<img class="bank" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\banking.jpg" alt="40">

	</div>
	</div>
	</div>
	
	<div class="container text-right">

				<a href="Home.jsp" class="btn btn-success">Back To Home</a>
		</div>
		
			<ul class="admin" style="text-align:center; margin-top:80px;">
				
				<li><a href="AdminLogin.jsp"><h5>View Payments(!!!For administrative purposes only!!! )</h5></a></li>
			</ul>
	<footer class="bg-dark text-center text-white">
    <div class="container p-4">
     
      <section class="content">
        <form action="#">
          
          <div class="row d-flex justify-content-center">
           
            <div class="col-auto">
              <p class="pt-2">
                <strong>Message Suwasetha</strong>
              </p>
            </div>
       
            <div class="col-md-5 col-12">
        
              <div class="form-outline form-white mb-4">
                <input type="email" id="form5Example2" class="form-control" />
              </div>
            </div>
       
            <div class="col-auto">
       
              <button type="submit" class="btn btn-outline-light mb-4">
                Send
              </button>
            </div>
 
          </div>
      
        </form>
      </section>
    
      <section class="mb-4">
       
      </section>
     
      <section class="footerlinks">

        <div class="row">
           
          <div class="col-lg-4 col-sm-6">
            <h6 class="text-uppercase" style="text-align:left">Product Range</h6>
  
            <ul class="list-unstyled mb-0 " style="text-align:left">
              <li>
                <a href="#" class="text-white">Health</a>
              </li>
              <li>
                <a href="#" class="text-white ">Skin Care</a>
              </li>
              <li>
                <a href="#" class="text-white">Personal Care</a>
              </li>
              <li>
                <a href="#" class="text-white">Mother and Baby</a>
              </li>
              <li>
                <a href="#" class="text-white">Cosmetics and Fragrances</a>
              </li>
            </ul>
          </div>
        

          <div class="col-lg-4 col-sm-6 ">
            <h6 class="text-uppercase" style="text-align:left">Information</h6>
  
            <ul class="list-unstyled mb-0" style="text-align:left">
              <li>
                <a href="#" class="text-white">About Us</a>
              </li>
              <li>
                <a href="#" class="text-white">Privacy Policy</a>
              </li>
              <li>
                <a href="#" class="text-white">Terms & Conditions</a>
              </li>
            </ul>
          </div>
          
          <div class="col-lg-4 ">
            <h6 class="text-uppercase" style="text-align:left"> Customer Service</h6>
  
            <ul class="list-unstyled mb-0" style="text-align:left">
              <li>
                <a href="#" class="text-white">FAQ</a>
              </li>
              <li>
                <a href="#" class="text-white">Contact Us</a>
              </li>
              <li>
                <a href="#" class="text-white">Store Locator</a>
              </li>
            </ul>
          </div>

          <div>
           

          </div>

        </div>
    
      </section>
     
    </div>
    <section class="mb-4">

        <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"
          ><i class="fab fa-facebook-f"></i
        ></a>
  
        <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"
          ><i class="fab fa-twitter"></i
        ></a>
  
        <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"
          ><i class="fab fa-google"></i
        ></a>
  
        <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"
          ><i class="fab fa-instagram"></i
        ></a>
      
      </section>

    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);"></div>
     
      <a  href="#">Suwasetha.lk</a>
      © 2021 All Rights Reserved
    </div>
   
  </footer>
</body>
</html>
