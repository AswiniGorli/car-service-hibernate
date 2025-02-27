<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #010;
   
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
    .form-container {
    margin:5% 20% 5% 35%;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    input {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: yellow;
        
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .buttns{
    display:flex;
    gap:5%;
    margin:2% 5% 2% 33%;
    }
   .buttns button
   {
   width:20%;
   } 
   a
{
text-decoration: none;
color: black;
}
footer {
margin:1% 0%;
    text-align: center;
    padding: 15px;
    background: #222;
    color: #fff;
}
</style>
</head>
<body>
<nav>
<img alt="" src="https://hoora.in/wp-content/themes/hoora/assets/img/car-yellow.svg">
<button><a href="home.jsp">home</a></button>
<button><a href="appontmentInsert.jsp">Book Now</a></button>
<button><a href="login.jsp">login</a></button>
<button><a href="adduser.jsp">User SignUp</a></button>
<button><a href="workersignup.jsp">Employee SignUp</a></button>
</nav>
   <div class="form-container">
<form action="signup" method="post">
<h1>Employee SignUp</h1>
<input name="workerid" placeholder="enter id" type="text">
<input name="workername" placeholder="enter name" type="text">
<input name="email" placeholder="enter email" type="text">
<input name="password" placeholder="enter password" type="text">
<button type="submit">submit</button>

</form>
</div>
<div class="buttns">
<button><a href="getallappointments.jsp">all appointments</a></button>

<button><a href="getall.jsp">all users</a></button>

   </div> 
<footer>
        <p>&copy; 2025 Car Wash & Service. All rights reserved.</p>
    </footer>

</body>
</html>