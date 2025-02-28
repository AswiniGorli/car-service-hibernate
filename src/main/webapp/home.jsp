<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
margin: 2%;
}
nav
{
background-color: black;
display: flex;
}
nav img
{
width:15%;
}
nav button
{
width: 10%;
height:40px;
margin:2% 3%;
background-color: yellow;
border:none;
border-radius:5%;
box-shadow: 5px 5px 5px rgb(86, 87, 82);
}
nav a
{
text-decoration: none;
color: black;
}
.col
{
padding:1%;
text-align: center;
}

footer {
margin:1% 0%;
    text-align: center;
    padding: 15px;
    background: #222;
    color: #fff;
}
</style>
<meta charset="UTF-8">
<title>home page</title>
</head>
<body>
<nav>
<img alt="" src="https://hoora.in/wp-content/themes/hoora/assets/img/car-yellow.svg">
<button><a href="home.jsp">Home</a></button>
<button><a href="appontmentInsert.jsp">Book Now</a></button>
<button><a href="login.jsp">login</a></button>
<button><a href="adduser.jsp">User SignUp</a></button>
<button><a href="workersignup.jsp">Employee SignUp</a></button>
</nav>
  <h1 >CAR Wash & Services</h1>
 <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://www.rubadub.co.nz/img/banner-menu.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.rubadub.co.nz/img/banner-loyalty.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.rubadub.co.nz/img/banner-01.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  <h1>Our Services</h1>      
<div class="row row-cols-1 row-cols-md-3 g-4">

  <div class="col">
    <div class="card">
      <img src="https://www.speedcarwash.com/images/services/silver-wash.jpg" class="card-img-top" alt="...">
      
        <h3 class="card-title">Silver Car Wash</h3>
        <h2>₹159</h2>
        <h4 style="color:red"> 25 % off</h4>
        </div>
        </div>
        <div class="col">
        <div class="card">
      <img src="https://www.speedcarwash.com/images/services/gold-wash.jpg" class="card-img-top" alt="...">
      
        <h5 class="card-title">Golden Car wash</h5>
        <h2>₹299</h2>
        <h4 style="color:red">  15 % off</h4>
        </div>
        </div>
        <div class="col">
        <div class="card">
      <img src="https://www.speedcarwash.com/images/services/platinum-wash.jpg" class="card-img-top" alt="...">
      
        <h5 class="card-title">Platinum Polishing</h5>
      <h2>₹559</h2>
        <h4 style="color:red">  30 % off</h4>
        </div>
        </div>
       
     
  <div class="col">
    <div class="card">
      <img src="https://www.speedcarwash.com/images/services/teflon-coating.jpg" class="card-img-top" alt="...">
      
        <h5 class="card-title">Polishing</h5>
     <h2>₹399</h2>
        <h4 style="color:red"> 55 % off</h4>
        </div>
        </div>
        <div class="col">
        <div class="card">
      <img src="https://www.speedcarwash.com/images/services/rubbing.jpg" class="card-img-top" alt="...">
      
        <h5 class="card-title">Buffing </h5>
     <h2>₹289</h2>
        <h4 style="color:red">  10 % off</h4>
        </div>
        </div>
        <div class="col">
        <div class="card">
      <img src="https://www.speedcarwash.com/images/services/internal-clean.jpg" class="card-img-top" alt="...">
      
        <h5 class="card-title">Interior Cleaning</h5>
     <h2>₹659</h2>
        <h4 style="color:red">  35 % off</h4>
        </div>
        </div>
        </div>

<footer>
        <p>&copy; 2025 Car Wash & Service. All rights reserved.</p>
    </footer>

</body>
</html>