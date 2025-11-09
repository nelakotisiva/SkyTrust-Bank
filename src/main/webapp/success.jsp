<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ SkyTrust background */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
                no-repeat center center/cover;

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Success Card */
.container {
    width: 420px;
    background: rgba(255, 255, 255, 0.90);
    padding: 35px;
    text-align: center;
    border-radius: 15px;
    box-shadow: 0px 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Logo */
.logo img {
    width: 80px;
    margin-bottom: 15px;
}

/* ✅ Success Text */
.message {
    font-size: 24px;
    font-weight: bold;
    color: #008000;
    margin-bottom: 20px;
}

/* ✅ Button */
.btn {
    display: inline-block;
    padding: 12px 25px;
    background: #b8860b;
    color: white;
    text-decoration: none;
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

<div class="container">

    <!-- ✅ Gold Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3">
    </div>

    <!-- ✅ Success Message -->
    <div class="message">
        Amount <%=session.getAttribute("amount") %> <%=session.getAttribute("type") %> Successfully!
    </div>

    <!-- ✅ Return Button -->
    <a class="btn" href="dashboard.jsp">Return to Home</a>

</div>

</body>
</html>
