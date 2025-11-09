<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
body {
    background: #f5f7fa;
    font-family: Arial, sans-serif;
    text-align: center;
    margin-top: 60px;
}
input, button {
    padding: 10px;
    margin: 8px;
    border-radius: 6px;
    border: 1px solid #1976d2;
}
button {
    background: #1976d2;
    color: white;
    cursor: pointer;
}
button:hover {
    background: #0d47a1;
}
</style>
</head>
<body>
<h1>Register Page</h1>
<form action="register" method="post">
    Name:<input type="text" name="name"><br>
    Email:<input type="text" name="email"><br>
    Phone:<input type="number" name="phone"><br>
    Account Number:<input type="number" name="accnum"><br>
    Password:<input type="password" name="password"><br>
    <button>Register</button>
</form>
</body>
</html>
