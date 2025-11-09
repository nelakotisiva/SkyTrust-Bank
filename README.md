# 🌐 SkyTrust Bank – Online Banking Web Application  

A secure and user-friendly full-stack banking system developed using **Java, JSP, Servlets, JDBC, and MySQL**.  
This project enables users to create accounts, log in, deposit/withdraw money, transfer funds, check balance, and view transaction history with real-time updates.

---

## ✅ Features

### 🔐 User Authentication
- User registration with account details  
- Secure login and session-based authentication  
- Logout functionality to prevent unauthorized access  

### 💳 Core Banking Operations
- Deposit money  
- Withdraw money  
- Transfer funds between accounts (with balance validation)  
- Real-time balance update  
- Detailed transaction history (Deposit/Withdraw/Transfer)

### ⚙️ Backend Highlights
- Built using **Java Servlets + JSP (MVC architecture)**  
- Centralized DB Logic (Dblogic.java) for all SQL operations  
- ACID-compliant transfers using **commit & rollback**  
- JDBC for database connectivity  
- Exception handling & session management  

### 🎨 Frontend
- JSP pages for UI  
- HTML + CSS for styling  
- Clean dashboard and form-based navigation  

---

## 🛠️ Tech Stack

| Layer | Technology |
|------|-------------|
| Frontend | JSP, HTML, CSS |
| Backend | Java Servlets, JDBC |
| Database | MySQL |
| Server | Apache Tomcat |
| Architecture | MVC |

---

## 📂 Project Structure

SkyTrust-Bank/
│── src/
│ ├── Com.pack.Controller/
│ │ ├── LoginServlet.java
│ │ ├── RegisterServlet.java
│ │ ├── DepositServlet.java
│ │ ├── WithdrawServlet.java
│ │ ├── TransferServlet.java
│ │ ├── BalanceServlet.java
│ │ └── StatementServlet.java
│ │
│ ├── model.com/
│ │ ├── Dblogic.java
│ │ ├── User.java
│ │ └── Transcation.java
│ │
│ └── Dbconn.com/
│ └── DbConccetion.java
│
│── WebContent/ or webapp/
│ ├── index.html
│ ├── login.jsp
│ ├── register.jsp
│ ├── dashboard.jsp
│ ├── deposit.jsp
│ ├── withdraw.jsp
│ ├── transfer.jsp
│ ├── statement.jsp
│ ├── success.jsp
│ └── error.jsp
│
└── README.md

yaml
Copy code

---

## 💾 Database Setup (MySQL)

### ✅ 1. Create Database
```sql
CREATE DATABASE newbankdb;
✅ 2. User Table
sql
Copy code
CREATE TABLE userdetailsdb (
    name VARCHAR(50),
    email VARCHAR(50) PRIMARY KEY,
    accnum BIGINT,
    phone BIGINT,
    password VARCHAR(50),
    balance DOUBLE DEFAULT 0.0
);
✅ 3. Transaction Table
sql
Copy code
CREATE TABLE transcation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50),
    type VARCHAR(20),
    amount DOUBLE,
    trans_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255)
);
▶️ How to Run the Project
Install Apache Tomcat

Install MySQL

Create database using the queries above

Import project into Eclipse/IntelliJ

Add MySQL Connector JAR to the project

Update DB credentials inside DbConccetion.java

Run project on Tomcat

Open in browser:

bash
Copy code
http://localhost:8080/SkyTrustBank/index.html

Project Summary

SkyTrust Bank is designed as a complete full-stack banking system demonstrating real-world concepts such as session handling, transactional consistency, modular backend design, and secure user authentication.
It serves as a strong full-stack Java web development project.

👤 Author

Nelakoti Siva
📧 Email:nelakoti siva
🔗 GitHub: https://github.com/nelakotisiva
