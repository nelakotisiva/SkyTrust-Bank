# 🌐 SkyTrust Bank – Online Banking Web Application

SkyTrust Bank is a secure and user-friendly full-stack banking system developed using **Java, JSP, Servlets, JDBC, and MySQL**.  
The application allows users to register, log in, manage their accounts, deposit/withdraw funds, transfer money, and view detailed transaction history.

---

## ✅ Features

### 🔐 User Authentication
- User registration with account details  
- Login with session-based security  
- Secure logout  

### 💼 Banking Operations
- Deposit money  
- Withdraw funds with balance validation  
- Fund transfer between accounts using email  
- Balance inquiry in real time  
- Transaction history with timestamps and descriptions  

### 🧩 Technical Highlights
- MVC architecture using **Servlets as Controllers**, **JSP as Views**, and **JDBC as Model Layer**  
- ACID-compliant fund transfers with **commit & rollback**  
- Centralized database logic inside **Dblogic.java**  
- MySQL-based persistent storage for users and transactions  
- Clean and responsive UI using HTML + CSS  

---

## 📦 Tech Stack

| Component | Technology |
|----------|------------|
| Frontend | JSP, HTML, CSS |
| Backend | Java Servlets, JDBC |
| Database | MySQL |
| Server | Apache Tomcat |
| Architecture | MVC |

---

## 📂 Project Structure

SkyTrust-Bank/
├── src/
│ ├── Com.pack.Controller/ # Servlets
│ ├── model.com/ # Models + DB Logic
│ └── Dbconn.com/ # Connection Utility
│
├── WebContent/ or webapp/ # JSP pages + HTML
├── README.md



---

## 🗄️ Database Setup (MySQL)

### 1️⃣ Create Database
```sql
CREATE DATABASE newbankdb;
CREATE TABLE userdetailsdb (
    name VARCHAR(50),
    email VARCHAR(50) PRIMARY KEY,
    accnum BIGINT,
    phone BIGINT,
    password VARCHAR(50),
    balance DOUBLE DEFAULT 0.0
);

CREATE TABLE transcation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50),
    type VARCHAR(20),
    amount DOUBLE,
    trans_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255)
);
```
▶️ How to Run the Project

Install Apache Tomcat

Install MySQL

Run the database SQL scripts

Import project in Eclipse/IntelliJ

Add MySQL Connector JAR to lib

Update DB credentials in DbConccetion.java

Run on Tomcat



✅ Project Summary

SkyTrust Bank demonstrates complete full-stack development skills using Java Web Technologies.
It includes real-world features such as authentication, money transfer handling with transactional safety, and dynamic dashboard-based navigation.
The project is ideal for showcasing backend logic, MVC architecture, and secure data handling.

👤 Author

Nelakoti Siva
🔗 GitHub: https://github.com/nelakotisiva

📧 Email: nelakotisiva@gmail.com
