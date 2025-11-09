<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Your background image link (unchanged) */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=") no-repeat center center/cover;
        height: 100vh;

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

.login-box {
    width: 360px;
    background: rgba(255, 255, 255, 0.90);
    padding: 35px 40px;
    text-align: center;
    border-radius: 12px;
    box-shadow: 0 6px 25px rgba(0,0,0,0.3);
}

/* ✅ Your gold logo link (unchanged) */
.logo img {
    width: 90px;
    margin-bottom: 10px;
}

h1 {
    color: #b8860b;
    margin-bottom: 25px;
    font-weight: bold;
}

input {
    width: 90%;
    padding: 10px;
    margin-top: 12px;
    border: 1px solid #b8860b;
    border-radius: 6px;
}

button {
    width: 100%;
    padding: 12px;
    margin-top: 20px;
    font-size: 17px;
    background: #b8860b;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
}

button:hover {
    background: #8a6c07;
}
</style>

</head>
<body>

<div class="login-box">

    <!-- ✅ Logo added (your link exactly same) -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3" alt="SkyTrust Logo">
    </div>

    <h1>Login</h1>

    <form action="login" method="post">
        <input type="text" name="email" placeholder="Enter Email"><br>
        <input type="password" name="password" placeholder="Enter Password"><br>
        <button>Login</button>
    </form>

</div>

</body>
</html>
