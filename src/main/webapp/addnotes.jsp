<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
    session.setAttribute("login-error", "Please login First.......");
    response.sendRedirect("login.jsp");
    return;
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Notes</title>
    <%@ include file="all_components/All_CDN.jsp"%>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f0f2f5, #d6e0f5);
            color: #333;
        }

        .note-form-container {
            max-width: 800px;
            margin: 60px auto;
            padding: 40px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 0.8s ease-out;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            font-size: 2.5rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 40px;
        }

        label {
            font-weight: 500;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px 15px;
            font-size: 1rem;
            border: 1px solid #ccc;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #2563eb;
            box-shadow: 0 0 8px rgba(37, 99, 235, 0.3);
        }

        textarea.form-control {
            resize: none;
        }

        .btn-submit {
            background-color: #2563eb;
            color: #fff;
            padding: 12px 30px;
            font-size: 1rem;
            border: none;
            border-radius: 30px;
            margin-top: 20px;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #1d4ed8;
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    <%@ include file="all_components/navbar.jsp"%>

    <div class="container">
        <div class="note-form-container">
            <h1>Add Your Note</h1>
            <form action="AddNotes" method="post">
                <% 
                    UserDetails us = (UserDetails) session.getAttribute("userD");
                    if (us != null) {
                %>
                    <input type="hidden" value="<%=us.getId()%>" name="uid">
                <% } %>

                <div class="form-group mb-4">
                    <label for="title">Title</label>
                    <input type="text" name="title" class="form-control" id="title" placeholder="Enter note title" required>
                </div>

                <div class="form-group mb-4">
                    <label for="content">Content</label>
                    <textarea rows="10" class="form-control" name="content" id="content" placeholder="Write your note here..." required></textarea>
                </div>

                <button type="submit" class="btn btn-submit">Add Note</button>
            </form>
        </div>
    </div>

    <%@ include file="all_components/footer.jsp"%>

</body>
</html>
