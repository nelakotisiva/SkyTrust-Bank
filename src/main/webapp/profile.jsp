<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Banking background */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
               no-repeat center center/cover;

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Profile card */
.container {
    width: 420px;
    background: rgba(255, 255, 255, 0.90);
    padding: 30px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0px 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Gold logo */
.logo img {
    width: 80px;
    margin-bottom: 15px;
}

.title {
    font-size: 30px;
    color: #b8860b;
    font-weight: bold;
    margin-bottom: 20px;
}

.label {
    font-size: 20px;
    font-weight: bold;
    color: #1976d2;
    margin-top: 10px;
}
.value {
    font-size: 22px;
    font-weight: bold;
    color: #333;
}
</style>

</head>
<body>

<div class="container">

    <!-- ✅ Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3">
    </div>

    <!-- ✅ Title -->
    <div class="title">Profile Details</div>

    <!-- ✅ User details -->
    <div class="label">Name</div>
    <div class="value"><%= session.getAttribute("name") %></div>

    <div class="label">Email</div>
    <div class="value"><%= session.getAttribute("email") %></div>

    <div class="label">Account Number</div>
    <div class="value"><%= session.getAttribute("accountNumber") %></div>

    <div class="label">Phone</div>
    <div class="value"><%= session.getAttribute("phone") %></div>

</div>

</body>
</html>
