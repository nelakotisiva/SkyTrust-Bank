<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Banking Background */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
               no-repeat center center/cover;

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Center box */
.container {
    background: rgba(255, 255, 255, 0.90);
    width: 350px;
    padding: 35px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Gold Logo */
.logo img {
    width: 70px;
    margin-bottom: 10px;
}

h1 {
    color: #b8860b;
    margin-bottom: 25px;
    font-size: 27px;
    font-weight: bold;
}

/* ✅ Input Field */
input {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border-radius: 6px;
    border: 1px solid #b8860b;
    outline: none;
}

/* ✅ Withdraw Button */
button {
    width: 100%;
    padding: 12px;
    font-size: 18px;
    background: #b8860b;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

button:hover {
    background: #8a6c07;
}
</style>

</head>
<body>

<div class="container">

    <!-- ✅ Gold Bank Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3" alt="SkyTrust Logo">
    </div>

    <h1>Withdraw</h1>

    <form action="withdraw" method="post">
        <input type="number" name="amount" placeholder="Enter Amount" required>
        <button>Withdraw</button>
    </form>

</div>

</body>
</html>
