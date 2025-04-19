<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
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
        width: 320px;
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
        background-color: #28a745;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e9f0f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        width: 360px;
        max-width: 95%;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
        font-size: 24px;
        text-align: center;
    }

    label {
        display: block;
        margin-top: 15px;
        font-weight: 600;
        color: #555;
        text-align: left;
    }

    input[type="text"],
    input[type="number"],
    input[readonly] {
        width: 100%;
        padding: 10px 12px;
        margin-top: 6px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
        background-color: #fdfdfd;
        transition: border 0.3s;
    }

    input:focus {
        border-color: #007bff;
        outline: none;
    }

    input[readonly] {
        background-color: #e9ecef;
        color: #6c757d;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        margin-top: 20px;
        border: none;
        border-radius: 6px;
        background-color: #28a745;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }
</style>

<div class="container">
    <h2>Edit Employee</h2>
    <form:form action="UpdateServlet" method="post" modelAttribute="employee">
        <label>Id</label>
        <form:input path="id" readonly="true" />

        <label>Name</label>
        <form:input path="name" />

        <label>Designation</label>
        <form:input path="designation" />

        <label>Gross Salary</label>
        <form:input path="grossSalary" />

        <input type="submit" value="Update" />
    </form:form>
</div>
</body>
