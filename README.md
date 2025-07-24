# 📘 Batch2_Project - Java Backend Note-Taking App

A simple web-based **Note-Taking Application** developed using **JSP**, **Servlets**, and **JDBC**. This project demonstrates core Java backend concepts such as CRUD operations, session handling, and database integration using **MySQL**.

---

## 🔧 Tech Stack

- 💻 Java (JDK 8+)
- 🌐 JSP & Servlets
- 🛢️ JDBC (Java Database Connectivity)
- 🧰 Apache Tomcat (v9+)
- 🐬 MySQL Database
- 🧠 Eclipse IDE

---

## 🚀 Features

- 📝 Create, Read, Update, and Delete notes
- 📁 Stores notes in MySQL database
- 🔐 (Optional) User login/session support
- 📦 Modular MVC folder structure
- 🎯 Lightweight and easy to set up

---

## 📂 Folder Structure

```
Batch2_Project/
├── src/
│   └── com.noteapp.servlets/        # All Java servlet classes
├── WebContent/
│   ├── css/                         # Stylesheets (if any)
│   ├── js/                          # JavaScript (if any)
│   ├── jsp/                         # JSP Pages
│   └── index.jsp                    # Entry point
├── .gitignore
├── README.md
└── ...
```

---

## 🏁 How to Run Locally

### 🖥️ Prerequisites

- Java JDK 8 or higher
- Eclipse IDE
- Apache Tomcat 9 or higher
- MySQL Server

---

### 📦 Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/MohdArshad-cell/Batch2_Project.git
   ```

2. **Import into Eclipse**
   - Open Eclipse → File → Import → Existing Projects into Workspace → Select the folder

3. **Configure Apache Tomcat**
   - Right-click project → Properties → Targeted Runtimes → Add Tomcat

4. **Set Up MySQL Database**
   - Create a new database:
     ```sql
     CREATE DATABASE noteapp_db;
     ```
   - Then create the `notes` table:
     ```sql
     CREATE TABLE notes (
       id INT PRIMARY KEY AUTO_INCREMENT,
       title VARCHAR(100),
       content TEXT,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
     );
     ```

5. **Configure Database in Java Code**
   - Inside your JDBC/Servlet files, use your local MySQL credentials:
     ```java
     String url = "jdbc:mysql://localhost:3306/noteapp_db";
     String username = "root";
     String password = "your_mysql_password";
     ```

6. **Run the Project**
   - Right-click → Run on Server
   - Open browser at: `http://localhost:8080/Batch2_Project/`

---

## ✍️ Author

**Mohd Arshad**  
🔗 [GitHub](https://github.com/MohdArshad-cell)  
🔗 [LinkedIn](https://www.linkedin.com/in/mohd-arshad-156227314/)

---

## 📄 License

This project is for educational/demo purposes. Feel free to use, modify, and share.
