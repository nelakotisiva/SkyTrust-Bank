<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Balance</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Banking Background (same as others) */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
                no-repeat center center/cover;

    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Center Glass Card */
.card {
    width: 400px;
    background: rgba(255, 255, 255, 0.88);
    padding: 40px 30px;
    text-align: center;
    border-radius: 15px;
    box-shadow: 0px 5px 25px rgba(0,0,0,0.35);
}

/* ✅ Gold Logo */
.logo img {
    width: 80px;
    margin-bottom: 10px;
}

.title {
    color: #b8860b;
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

.balance {
    font-size: 32px;
    font-weight: bold;
    color: #1976d2;
    margin-bottom: 30px;
}

/* ✅ Button */
.btn {
    text-decoration: none;
    padding: 12px 25px;
    background: #b8860b;
    color: white;
    border-radius: 8px;
    font-size: 18px;
    font-weight: bold;
    transition: 0.3s;
}

.btn:hover {
    background: #8a6c07;
}
</style>
</head>

<body>

<div class="card">

    <!-- ✅ Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3">
    </div>

    <!-- ✅ Title -->
    <div class="title">Your Balance</div>

    <!-- ✅ Balance Amount -->
    <div class="balance">
        ₹ <%= request.getAttribute("balance") %>
    </div>

    <!-- ✅ Back Button -->
    <a class="btn" href="dashboard.jsp">Return to Home</a>

</div>

</body>
</html>
