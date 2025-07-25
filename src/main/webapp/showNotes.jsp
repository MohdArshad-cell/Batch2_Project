<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBconnect"%>
<%@page import="com.User.Post"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
    session.setAttribute("login-error", "Please login First.......");
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
        font-family: 'Poppins', sans-serif;
        background: #f3f6fa;
        color: #333;
    }

    .note-container {
        padding: 60px 20px;
    }

    .note-title {
        text-align: center;
        font-size: 2.5rem;
        font-weight: 600;
        margin-bottom: 40px;
    }

    .note-card {
        border: none;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        background-color: #ffffff;
    }

    .note-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
    }

    .note-card .card-body {
        padding: 25px;
    }

    .note-card h4 {
        font-weight: 600;
        font-size: 1.4rem;
    }

    .note-meta {
        font-size: 0.95rem;
        color: #666;
    }

    .note-actions {
        padding: 15px 25px;
        border-top: 1px solid #f0f0f0;
        display: flex;
        justify-content: space-between;
        background-color: #fafafa;
        border-radius: 0 0 15px 15px;
    }

    .note-actions a {
        text-decoration: none;
        font-weight: 500;
        color: #2563eb;
        transition: color 0.2s ease;
    }

    .note-actions a:hover {
        color: #1d4ed8;
    }

    @media (max-width: 768px) {
        .note-card {
            margin-bottom: 20px;
        }
    }
</style>

<div class="container note-container">
    <h1 class="note-title">Your Notes</h1>

    <div class="row">
        <%
        if (user1 != null) {
            PostDAO ob = new PostDAO(DBconnect.getConn());
            List<Post> post = ob.getData(user1.getId());

            for (Post po : post) {
        %>
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card note-card h-100">
                    <div class="card-body">
                        <h4 class="card-title"><%= po.getTitle() %></h4>
                        <p><%= po.getContent() %></p>
                        <p class="note-meta"><strong>Uploaded By:</strong> <%= user1.getName() %></p>
                        <p class="note-meta"><strong>Date:</strong> <%= po.getPdate() %></p>
                    </div>
                    <div class="note-actions">
                        <a href="Edit.jsp?note_id=<%= po.getId() %>"><i class="fas fa-edit"></i> Edit</a>
                        <a href="DeletePostServlet?note_id=<%= po.getId() %>" onclick="return confirm('Are you sure you want to delete this note?');"><i class="fas fa-trash-alt"></i> Delete</a>
                    </div>
                </div>
            </div>
        <%
            }
        }
        %>
    </div>
</div>

<%@ include file="all_components/footer.jsp" %>
