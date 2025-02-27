<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style>
/* Reset some default styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    text-align: center;
}

.container {
    width: 80%;
    margin: 50px auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Styling for the heading */
h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

/* Styling for the table */
table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

/* Table header styling */
th {
    background-color: #007BFF;
    color: white;
    text-transform: uppercase;
}

/* Alternating row colors */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Hover effect on rows */
tr:hover {
    background-color: #ddd;
    cursor: pointer;
}

/* Responsive table */
@media (max-width: 768px) {
    .container {
        width: 95%;
    }
    
    table {
        font-size: 14px;
    }
    
    th, td {
        padding: 8px;
    }
}
</style>

<meta charset="UTF-8">
<title>All Users</title>
</head>
<body>

	<div class="container">
		<h1>All User Details</h1>
	
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Vehicle Name</th>
					<th>Vehicle No</th>
					<th>Phone No</th>
					<th>Email</th>
					<th>Password</th>
				</tr>
			</thead>

			<tbody>
				<% 
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carhibernate", "root", "root");
					String sql = "SELECT * FROM carservicemodels";
					PreparedStatement pmst = conn.prepareStatement(sql);
					ResultSet rs = pmst.executeQuery();
						
					while(rs.next()) { 
				%>
				<tr>
					<td><%= rs.getString("id") %></td>
					<td><%= rs.getString("name") %></td>
					<td><%= rs.getString("vehicletype") %></td>
					<td><%= rs.getString("vehicleno") %></td>
					<td><%= rs.getString("phoneo") %></td>
					<td><%= rs.getString("email") %></td>
					<td><%= rs.getString("password") %></td>
				</tr>
				<% 
					}
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
