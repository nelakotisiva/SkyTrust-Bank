<%@page import="model.com.Transcation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statement</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* ✅ Same background as dashboard */
    background: url("https://media.istockphoto.com/id/1492189677/photo/bank-symbol-with-with-coins-stack-concepts-of-the-banking-system-rising-interest-rates.jpg?b=1&s=170667a&w=0&k=20&c=4juSl-CA3dqdm7SoZzKMkOyABsMeIeNYoNKH-0zYDsc=")
               no-repeat center center/cover;

    min-height: 100vh;

    display: flex;
    flex-direction: column;
    align-items: center;

    backdrop-filter: blur(3px);
}

/* ✅ Header with logo */
.header-box {
    margin-top: 20px;
    background: rgba(255, 255, 255, 0.88);
    padding: 15px 30px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0px 4px 20px rgba(0,0,0,0.30);
}

.logo img {
    width: 70px;
}

.heading {
    font-size: 28px;
    font-weight: bold;
    color: #b8860b;
    margin-top: 10px;
}

/* ✅ Table Wrapper */
.table-box {
    width: 85%;
    margin-top: 40px;
    background: rgba(255,255,255,0.92);
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 6px 25px rgba(0,0,0,0.25);
}

/* ✅ Table Styles */
table {
    width: 100%;
    border-collapse: collapse;
    border-radius: 12px;
    overflow: hidden;
}

th {
    background: #1976d2;
    color: white;
    padding: 12px;
    font-size: 18px;
}

td {
    border-bottom: 1px solid #ddd;
    padding: 12px;
    font-size: 16px;
}

tr:hover {
    background: #e3f2fd;
}
</style>

</head>
<body>

<!-- ✅ Logo + Title -->
<div class="header-box">
    <div class="logo">
        <img src="https://tse3.mm.bing.net/th/id/OIP.4QoxmGJoXK1TcB7AQUasKQHaE0?cb=ucfimg2ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3">
    </div>
    <div class="heading">Transaction Statement</div>
</div>

<!-- ✅ Table Box -->
<div class="table-box">
    <%
        List<Transcation> elist = (List<Transcation>) request.getAttribute("transdetails");
    %>

    <table>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Description</th>
        </tr>

        <% for (Transcation emp : elist) { %>
        <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getEmail() %></td>
            <td><%= emp.getType() %></td>
            <td><%= emp.getAmount() %></td>
            <td><%= emp.getTrans_date() %></td>
            <td><%= emp.getDescription() %></td>
        </tr>
        <% } %>
    </table>
</div>

</body>
</html>
