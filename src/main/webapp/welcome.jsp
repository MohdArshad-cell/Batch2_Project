<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	session.setAttribute("login-error", "Please login first.");
	response.sendRedirect("login.jsp");
	return;
}
%>

<%@ include file="all_components/All_CDN.jsp" %>
<%@ include file="all_components/navbar.jsp" %>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
    body {
        margin: 0;
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #dfe9f3, #ffffff);
        color: #333;
    }

    .hero-container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 80vh;
        padding: 40px 20px;
    }

    .glass-card {
        background: rgba(255, 255, 255, 0.6);
        border-radius: 20px;
        padding: 40px;
        max-width: 700px;
        width: 100%;
        box-shadow: 0 8px 32px rgba(31, 38, 135, 0.2);
        backdrop-filter: blur(12px);
        border: 1px solid rgba(255, 255, 255, 0.3);
        text-align: center;
        animation: fadeSlideIn 1s ease-out;
    }

    @keyframes fadeSlideIn {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .glass-card img {
        width: 200px;
        margin-bottom: 20px;
    }

    .glass-card h1 {
        font-size: 2.8rem;
        font-weight: 600;
        color: #1f2937;
    }

    .glass-card p {
        font-size: 1.1rem;
        color: #4b5563;
        margin-bottom: 30px;
    }

    .btn-cta {
        background: #2563eb;
        color: white;
        padding: 12px 28px;
        border: none;
        border-radius: 30px;
        font-size: 1rem;
        cursor: pointer;
        text-decoration: none;
        transition: all 0.3s ease;
        display: inline-flex;
        align-items: center;
        gap: 8px;
    }

    .btn-cta:hover {
        background: #1d4ed8;
        transform: scale(1.05);
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
    }

    .btn-cta i {
        font-size: 1.1rem;
    }

    @media (max-width: 768px) {
        .glass-card h1 {
            font-size: 2rem;
        }

        .glass-card img {
            width: 150px;
        }
    }
</style>

<div class="hero-container">
    <div class="glass-card">
        <img src="image/images.png" alt="Start Notes" />
        <h1>Welcome to NoteNest</h1>
        <p>Your secure, smart, and elegant space to create and manage notes.</p>
        <a href="addnotes.jsp" class="btn-cta">
            <i class="fas fa-pen"></i> Start Writing
        </a>
    </div>
</div>

<%@ include file="all_components/footer.jsp" %>
