<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.payrole.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payslip</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .payslip-container {
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        width: 400px;
        text-align: center;
    }
    h2 {
        margin-bottom: 20px;
        color: #333;
        border-bottom: 2px solid #007bff;
        padding-bottom: 10px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    td {
        background-color: #f9f9f9;
    }
    .footer {
        margin-top: 20px;
        font-size: 14px;
        color: #555;
    }
</style>
</head>
<body>

<div class="payslip-container">
    <h2>Employee Payslip</h2>
    <% Employee e = (Employee)session.getAttribute("employee"); %>
    <table>
        <tr>
            <th>Id</th>
            <td><%= e.getId() %></td>
        </tr>
        <tr>
            <th>Name</th>
            <td><%= e.getName() %></td>
        </tr>
        <tr>
            <th>Designation</th>
            <td><%= e.getDesignation() %></td>
        </tr>
        <tr>
            <th>Gross Salary</th>
            <td>₹ <%= e.getGrossSalary() %></td>
        </tr>
        <tr>
            <th>Tax (in %)</th>
            <td><%= e.getTaxPercentage() * 100 %> %</td>
        </tr>
        <tr>
            <th>Net Salary</th>
            <td><strong>₹ <%= e.getNetSalary() %></strong></td>
        </tr>
    </table>
    <div class="footer">
        <p>Generated on: <%= new java.util.Date() %></p>
    </div>
</div>

</body>
</html>
