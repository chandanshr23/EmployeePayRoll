<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.payrole.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        padding: 20px;
    }
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        position: relative;
    }
    .center {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
    }
    .navbar a {
        text-decoration: none;
        color: white;
        background-color: #007bff;
        padding: 8px 15px;
        border-radius: 5px;
        display: inline-block;
    }
    .navbar a:hover {
        background-color: #0056b3;
    }
    .logout {
        background-color: #dc3545;
        margin-left: auto;
    }
    .logout:hover {
        background-color: #bd2130;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
    }
    th {
        background-color: #343a40;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    .action-links a {
        background-color: #28a745;
        padding: 5px 10px;
        margin: 2px;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }
    .action-links a:hover {
        background-color: #218838;
    }
    .delete {
        background-color: #dc3545;
    }
    .delete:hover {
        background-color: #bd2130;
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="LogoutServlet" class="logout">Log Out</a>
    <a href="AddServlet" class="center">Add Employee</a>
</div>

<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Designation</th>
        <th>Gross Salary</th>
        <th>Tax (in %)</th>
        <th>Net Salary</th>
        <th>Actions</th>
    </tr>

    <% 
        ArrayList<Employee> arrayList = (ArrayList<Employee>) session.getAttribute("arrayList");
        if (arrayList != null && !arrayList.isEmpty()) {
            for (Employee e : arrayList) {
    %>
    <tr>
        <td><%= e.getId() %></td>
        <td><%= e.getName() %></td>
        <td><%= e.getDesignation() %></td>
        <td><%= e.getGrossSalary() %></td>
        <td><%= e.getTaxPercentage() * 100 %></td>
        <td><%= e.getNetSalary() %></td>
        <td class="action-links">
            <a href="EditServlet?id=<%=e.getId()%>">Edit</a>
            <a href="DeleteServlet?id=<%=e.getId()%>" class="delete">Delete</a>
        </td>
    </tr>
    <% 
            }
        } else { 
    %>
    <tr>
        <td colspan="7">No employees found.</td>
    </tr>
    <% } %>
</table>

</body>
</html>
