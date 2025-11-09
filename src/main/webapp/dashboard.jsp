<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Your background image (unchanged) */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
                no-repeat center center/cover;

    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* ✅ Beautiful header with logo */
.header-box {
    margin-top: 20px;
    background: rgba(255, 255, 255, 0.85);
    padding: 15px 30px;
    text-align: center;
    border-radius: 12px;
    backdrop-filter: blur(2px);
    box-shadow: 0px 5px 20px rgba(0,0,0,0.25);
}

.logo img {
    width: 75px;
}

.bank-title {
    font-size: 32px;
    font-weight: bold;
    color: #b8860b;
    display: block;
    margin-top: 10px;
}

/* ✅ Center Menu Grid */
.menu-container {
    margin-top: 40px;
    display: grid;
    grid-template-columns: repeat(2, 200px);
    gap: 25px;
}

.menu-item {
    background: rgba(255, 255, 255, 0.88);
    padding: 18px;
    text-align: center;
    border-radius: 12px;
    font-size: 20px;
    font-weight: bold;
    color: #1976d2;
    text-decoration: none;
    box-shadow: 0 4px 15px rgba(0,0,0,0.25);
    transition: 0.3s;
}

.menu-item:hover {
    background: #1976d2;
    color: white;
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(0,0,0,0.35);
}

/* ✅ Mobile friendly */
@media (max-width: 480px) {
    .menu-container {
        grid-template-columns: 1fr;
    }
}
</style>

</head>
<body>

<!-- ✅ Logo + Bank Name -->
<div class="header-box">
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3" alt="SkyTrust Logo">
    </div>
    <span class="bank-title">SkyTrust Bank</span>
</div>

<!-- ✅ Centered Menu Buttons -->
<div class="menu-container">
    <a class="menu-item" href="dashboard.jsp">Home</a>
    <a class="menu-item" href="profile.jsp">Profile</a>
    <a class="menu-item" href="balance">Balance</a>
    <a class="menu-item" href="deposit.jsp">Deposit</a>
    <a class="menu-item" href="withdraw.jsp">Withdraw</a>
    <a class="menu-item" href="transfer.jsp">Transfer</a>
    <a class="menu-item" href="statement">Statement</a>
    <a class="menu-item" href="logout">Logout</a>
</div>

</body>
</html>
