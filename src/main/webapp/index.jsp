<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NoteNest - Your Secure Note Keeper</title>
    <%@ include file="all_components/All_CDN.jsp" %>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f7f8fa, #dff1ff);
            color: #333;
        }

        .hero {
            text-align: center;
            padding: 80px 20px;
            background: #1f2937;
            color: white;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: auto;
        }

        .btn-primary {
            margin-top: 30px;
            padding: 12px 30px;
            background-color: #3b82f6;
            border: none;
            color: white;
            font-size: 1rem;
            border-radius: 30px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2563eb;
        }

        .features {
            padding: 60px 20px;
            max-width: 1100px;
            margin: auto;
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
        }

        .feature-card {
            flex: 1 1 250px;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
            transition: transform 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .feature-card h3 {
            margin-top: 0;
            color: #1f2937;
        }

        .feature-card p {
            color: #555;
        }

        .footer-spacer {
            height: 100px;
        }
    </style>
    <script>
        window.addEventListener('DOMContentLoaded', () => {
            const cards = document.querySelectorAll('.feature-card');
            cards.forEach((card, index) => {
                card.style.opacity = 0;
                card.style.transform = 'translateY(50px)';
                setTimeout(() => {
                    card.style.transition = 'all 0.6s ease';
                    card.style.opacity = 1;
                    card.style.transform = 'translateY(0)';
                }, index * 150);
            });
        });
    </script>
</head>
<body>

    <%@ include file="all_components/navbar.jsp" %>

    <section class="hero">
        <h1>Welcome to NoteNest</h1>
        <p>Securely manage all your notes in one place with full authentication, role-based access, and rich user experience.</p>
        <a href="login.jsp"><button class="btn-primary">Get Started</button></a>
    </section>

    <section class="features">
        <div class="feature-card">
            <h3>🔒 Secure Authentication</h3>
            <p>Robust login and registration system with session management, password protection, and user validation.</p>
        </div>
        <div class="feature-card">
            <h3>📝 Full CRUD Notes</h3>
            <p>Create, read, update, and delete your personal notes using intuitive JSP-based UI and dynamic backend.</p>
        </div>
        <div class="feature-card">
            <h3>💾 MySQL Persistence</h3>
            <p>All data is stored securely in a MySQL database using JDBC for seamless and fast operations.</p>
        </div>
        <div class="feature-card">
            <h3>⚙️ Role-Based Access</h3>
            <p>Control user permissions and access levels to ensure secure, scalable multi-user support.</p>
        </div>
        <div class="feature-card">
            <h3>🚀 Deployed on Tomcat</h3>
            <p>Locally hosted using Apache Tomcat with Eclipse, showcasing strong backend engineering in Java.</p>
        </div>
    </section>

    <div class="footer-spacer"></div>
    <%@ include file="all_components/footer.jsp" %>

</body>
</html>
