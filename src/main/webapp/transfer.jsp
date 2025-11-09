<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer</title>

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

/* ✅ Glass-effect card */
.container {
    width: 350px;
    background: rgba(255, 255, 255, 0.90);
    padding: 30px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0px 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Gold logo */
.logo img {
    width: 75px;
    margin-bottom: 12px;
}

/* ✅ Heading */
h1 {
    color: #b8860b;
    font-size: 28px;
    margin-bottom: 25px;
    font-weight: bold;
}

/* ✅ Inputs */
input {
    width: 90%;
    padding: 12px;
    margin-top: 12px;
    border-radius: 6px;
    border: 1px solid #b8860b;
    outline: none;
    font-size: 16px;
}

/* ✅ Button */
button, input[type=submit] {
    width: 100%;
    padding: 12px;
    margin-top: 18px;
    border: none;
    border-radius: 6px;
    background: #b8860b;
    color: white;
    cursor: pointer;
    font-size: 18px;
    font-weight: bold;
    transition: 0.3s;
}

button:hover, input[type=submit]:hover {
    background: #8a6c07;
}
</style>

</head>
<body>

<div class="container">

    <!-- ✅ Logo -->
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3" alt="SkyTrust Logo">
    </div>

    <h1>Transfer Money</h1>

    <form action="transfer" method="post">
        <input type="email" name="receiveremail" placeholder="Recipient Email" required>
        <input type="number" name="amount" min="1" step="0.01" placeholder="Enter Amount" required>
        <input type="submit" value="Transfer">
    </form>

</div>

</body>
</html>
