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
	<link rel="stylesheet" href="G:\jsp_servlets\Online Drug Ordering System\WebContent\styles\styles.css">
	
	    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/ea06263aef.js" crossorigin="anonymous"></script>
    
    <!-- css -->
    <link rel="stylesheet" href="styles.css">
    
    
</head>
<body style="background-image: url(G:\jsp_servlets\Online Drug Ordering System\WebContent\images\background.jpg); background-size: cover;" >

	<header>
	
	
	   <nav class=" navbar navbar-expand-lg navbar-dark bg-tild ">
  <img class="logo" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\suwasetha2.png">

    <a href="" class="title navbar-brand font-weight-bold">Suwasetha</a>

    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#target1" aria-controls="navbarNav" aria-expanded="false" aria-label="Toogle Navbar" >
        <span class="navbar-toggler-icon"></span>
      </button>
    <div class="collapse navbar-collapse" id="target1">
        
    <ul class="navbar-nav ml-auto"> 
        <li class="nav-item"><a href="" class="nav-link">Home</a></li>
        <li class="nav-item"><a href=""  class="nav-link">About</a></li>
        <li class="nav-item"><a href=""  class="nav-link">Payments</a></li>
        <li class="nav-item"><a href=""  class="nav-link">Contact Us</a></li>
        
    </ul>
  
</div>


   </nav>
		<nav class="navbar navbar-dark bg-success">
			<br>
		</nav>
	</header>
	<br>

	<div class="row">
	

		<div class="container">
			<h3 class="text-center">Payment Details</h3>
			<hr>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Account Number</th>
						<th>Name</th>
						<th>Phone Number</th>
						<th>CVC</th>
						<th>Expiration Date</th>
						<th>Payment Amount</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach  items="${listUser}" var="user">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.accountNumber}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.phoneNumber}" /></td>
							<td><c:out value="${user.cvc}" /></td>
							<td><c:out value="${user.expDate}" /></td>
							<td><c:out value="${user.amount}" /></td>
							
						
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
						
					
					</c:forEach>
					
				</tbody>

			</table>
				<div class="container text-right">

				<a href="Home.jsp" class="btn btn-success">Back To Home</a>
			</div>
		</div>
	</div>
<div style="margin-top:50px;"></div>
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
