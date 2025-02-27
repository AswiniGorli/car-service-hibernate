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
        <form action="appinsert" method="post">
        <h1 style="text-align: center">Book Now</h1>
            <input name="email" placeholder="Enter email" type="text" required>
            <input name="vehicletype" placeholder="Enter vehicle type" type="text" required>
            <input name="vehicleno" placeholder="Enter vehicle number" type="text" required>
            <input name="date" placeholder="Enter date" type="date" required>
            <input name="time" placeholder="Enter time" type="time" required>
            <button type="submit">Submit</button>
        </form>
        
    </div>
    
<footer>
        <p>&copy; 2025 Car Wash & Service. All rights reserved.</p>
    </footer>
</body>
</html>
