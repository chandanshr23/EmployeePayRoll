<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    h2 {
        margin-bottom: 20px;
        color: #333;
    }
    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 15px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Add Employee</h2>
        <form:form action="AddEmployee" method="post" modelAttribute = "employee">
            <label>Name</label>
            <form:input  path="name"></form:input>
            
            <label>Designation</label>
            <form:input  path="designation"></form:input>
            
            <label>Gross Salary</label>
            <form:input  path="grossSalary"></form:input>
            
            <input type="submit" value="Add Employee">
        </form:form>
    </div>
</body>
</html>
