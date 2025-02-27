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
<meta charset="UTF-8">
<title>Get All Appointments</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        text-align: center;
    }

    h1 {
        margin-top: 20px;
        color: #333;
    }

    .container {
        width: 70%;
        margin: 20px auto;
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background: #fff;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    .delete-btn {
        background-color: red;
        color: white;
        border: none;
        padding: 8px 12px;
        cursor: pointer;
        border-radius: 5px;
    }

    .delete-btn:hover {
        background-color: darkred;
    }
</style>
</head>
<body>

    <div class="container">
        <h1>All User Appointment Details</h1>

        <table>
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Vehicle Name</th>
                    <th>Vehicle No</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>
            </thead>

           <tbody>
    <% 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carhibernate", "root", "root");
        String sql = "SELECT * FROM appointment";
        PreparedStatement pmst = conn.prepareStatement(sql);
        ResultSet rs = pmst.executeQuery();
            
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("vehicletype") %></td>
        <td><%= rs.getString("vehicleno") %></td>
        <td><%= rs.getString("date") %></td>
        <td><%= rs.getString("time") %></td>
        <td>
            <form action="wkdelete" method="get" style="display:inline;">
                <input type="hidden" name="vehicleno" value="<%= rs.getString("vehicleno") %>">
                <button type="submit" style="background-color: green; color: white; border: none; padding: 5px 10px; cursor: pointer;">
                    Work Done!
                </button>
            </form>
        </td>
    </tr>
    <% 
        }
        rs.close();
        pmst.close();
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
