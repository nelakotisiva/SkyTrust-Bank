<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ SkyTrust banking background */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
                no-repeat center center/cover;

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Error box */
.box {
    background: rgba(255, 255, 255, 0.92);
    padding: 30px 45px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Logo */
.logo img {
    width: 70px;
    margin-bottom: 10px;
}

/* ✅ Error heading */
.error-title {
    font-size: 26px;
    font-weight: bold;
    color: #d10000;
    margin-bottom: 12px;
}

/* ✅ Error message text */
.error-msg {
    font-size: 20px;
    color: #333;
    margin-bottom: 20px;
}

/* ✅ Button */
.btn {
    padding: 10px 20px;
    background: #b8860b;
    color: white;
    border-radius: 6px;
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
}

.btn:hover {
    background: #8a6c07;
}
</style>

</head>
<body>

<div class="box">

    <!-- ✅ Bank Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3">
    </div>

    <div class="error-title">Error Occurred</div>

    <div class="error-msg">
        <%= session.getAttribute("error") %>
    </div>

    <a class="btn" href="dashboard.jsp">Return to Dashboard</a>

</div>

</body>
</html>
