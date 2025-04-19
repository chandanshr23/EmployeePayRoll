<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    #form {
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    label {
        font-weight: bold;
        display: block;
        margin: 10px 0 5px;
    }
    input[type="text"], input[type="password"] {
        width: 95%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px;
        cursor: pointer;
        width: 100%;
        border-radius: 5px;
    }
    input[type="submit"]:hover {
        background-color: #218838;
    }
    p {
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
    <form:form action="UserServlet" method="post" modelAttribute = "admin" id="form">
        <h2>Login</h2>
        <label>Username</label>
        <form:input path="username"></form:input>
        <label>Password</label>
         <form:input path="password"></form:input>
        
        <input type="submit" value="Login">
        
        <p>
				${errorMessage }
        </p>
    </form:form>
</body>
</html>



















