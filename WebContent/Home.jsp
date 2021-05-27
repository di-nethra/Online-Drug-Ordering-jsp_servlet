<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Suwasetha Home</title>
 
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
</head>


<body>
   <section id="hero">
  
      
   <nav class="navbar navbar-expand-lg navbar-dark bg-tild ">
    <img class="logo" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\suwasetha.png" alt="60">
    <a href="" class="title navbar-brand font-weight-bold">Suwasetha</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#target1" aria-controls="navbarNav" aria-expanded="false" aria-label="Toogle Navbar" >
        <span class="navbar-toggler-icon"></span>
      </button>
    <div class="collapse navbar-collapse" id="target1"><!--navbar-collapse will collapse all elements in to hamburger icon but nothing inside-->
        
    <ul class="navbar-nav ml-auto"> <!-- will remove the buletpoints of links-->
        <li class="nav-item"><a href="" class="nav-link">Home</a></li>
        <li class="nav-item"><a href=""  class="nav-link">About</a></li>
        <li class="nav-item"><a href=""  class="nav-link">Payments</a></li>
        <li class="nav-item"><a href=""  class="nav-link">Contact Us</a></li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Login
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">User Login</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Staff Login</a>
            </div>
          </li>
        
    </ul>
  
</div>


   </nav>

<!-- #2BA08D -->

<section id="carousel">
  <div id="dinethrexcalousel" class="carousel slide" data-ride="carousel" data-interval="1500">
    <div class="carousel-inner">
      <div class="carousel-item active">
          <img class="carousalimg" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\image1.jpg" alt="4">
      </div>
      <div class="carousel-item">
        <img class="carousalimg" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\image2.jpg" alt="4">
      </div>
      <div class="carousel-item">
        <img class="carousalimg" src="G:\jsp_servlets\Online Drug Ordering System\WebContent\images\image3.jpg" alt="4">
      </div>
     
    </div>
    <a class="carousel-control-prev" href="#dinethrexcalousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" ></span>
    </a>
    <a class="carousel-control-next" href="#dinethrexcalousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon"></span>
      
    </a>
  </div>

</section>
<section class="message container-fluid bg-info text-center">
<div>
    <p>
        Suwasetha Pharmacy Limited a 100% subsidiary of Sunshine Healthcare is one of the 1st branded retail Pharmaceutical Chains in Sri Lanka
        that has entered the market with a view of creating a difference in the retail pharmaceutical trade.
        Headed by a team of professionals, Healthguard has introduced an innovative concept centered on superior customer care,
        latest technology in data management, a wide product assortment, affordable prices and a host of value additions.
    </p>
</div>

</section>


<div class="container click ">

<div class="row text-center">
  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Customer Login</h5>
        <p class="card-text">Dear customer,<br>
          please Login here</p>
        <a href="#" class="btn btn-success">Customer Login</a>
      </div>
    </div>
  </div>

  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Staff Login</h5>
        <p class="card-text">Dear Staff Member,<br>
          please Login here</p>
        <a href="#" class="btn btn-success">Staff Login</a>
      </div>
    </div>
  </div>


  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Order prescription</h5>
        <p class="card-text">Order any of your<br> prescription</p>
        <a href="#" class="btn btn-success"> Place Order</a>
      </div>
    </div>
  </div>

</div>


</div>

<div class="container click">

  <div class="row text-center">
    <div class="col-lg-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Pay Bills Online</h5>
          <p class="card-text">Pay you bills easy as you like.you can use credit,debit,M-pay</p>
          <a href="user-form.jsp" class="btn btn-success">Pay Bills</a>
        </div>
      </div>
    </div>
  
    <div class="col-lg-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Home delivery</h5>
          <p class="card-text">We Deliver you medicine to <br> your door-step</p>
          <a href="#" class="btn btn-success">Deliver to Home</a>
        </div>
      </div>
    </div>
  
  
    <div class="col-lg-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Chat With Suwasetha</h5>
          <p class="card-text">Chat with our <br> AI powerd chat-bot</p>
          <a href="#" class="btn btn-success">Chat with AI</a>
        </div>
      </div>
    </div>
  
  </div>
  
  
  </div>
  


<div style="margin-top:100px;"></div>

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
                <a href="#" class="text-white">Mother & Baby</a>
              </li>
              <li>
                <a href="#" class="text-white">Cosmetics & Fragrances</a>
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
   
  </footer>
 
</body>
</html>

