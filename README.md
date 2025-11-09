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
