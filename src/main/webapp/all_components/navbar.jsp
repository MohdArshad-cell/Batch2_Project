<%@ page import="com.User.UserDetails" %>

<style>
  .navbar {
    background: linear-gradient(135deg, #1f1c2c, #928dab);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
  }

  .nav-link {
    color: #ffffff !important;
    font-weight: 500;
    margin: 0 10px;
    transition: all 0.3s ease;
  }

  .nav-link:hover {
    color: #ffd369 !important;
    transform: translateY(-2px);
  }

  .btn-outline-success {
    border-color: #ffd369;
    color: #ffd369;
    transition: all 0.3s ease;
  }

  .btn-outline-success:hover {
    background-color: #ffd369;
    color: #1f1c2c;
  }

  .modal-content {
    border-radius: 12px;
    border: none;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.4);
  }

  .modal-title {
    font-weight: bold;
    font-size: 22px;
  }

  .table th {
    width: 40%;
    background-color: #f1f1f1;
  }

  .fa-user {
    color: #928dab;
  }
</style>

<nav class="navbar navbar-expand-lg navbar-dark">
  <a class="navbar-brand font-weight-bold text-light ml-3" href="index.jsp">
    <i class="fas fa-sticky-note"></i> NoteKeeper
  </a>

  <button class="navbar-toggler" type="button" data-toggle="collapse"
    data-target="#navbarSupportedContent">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
    <ul class="navbar-nav ml-3">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addnotes.jsp"><i class="fas fa-plus-circle"></i> Add Notes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="showNotes.jsp"><i class="fas fa-book-open"></i> Show Notes</a>
      </li>
    </ul>

    <div class="mr-3">
      <%
        UserDetails user = (UserDetails) session.getAttribute("userD");
        if (user != null) {
      %>
        <a class="btn btn-outline-success mr-2" href="#" data-toggle="modal" data-target="#exampleModal">
          <i class="fas fa-user-circle"></i> <%= user.getName() %>
        </a>
        <a class="btn btn-outline-success" href="LogoutServlet">
          <i class="fas fa-sign-out-alt"></i> Log Out
        </a>

        <!-- User Details Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
          aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header bg-dark text-white">
                <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-user"></i> User Profile</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body text-center">
                <i class="fas fa-user-circle fa-4x mb-3"></i>
                <table class="table table-bordered">
                  <tr>
                    <th>User ID</th>
                    <td><%= user.getId() %></td>
                  </tr>
                  <tr>
                    <th>Full Name</th>
                    <td><%= user.getName() %></td>
                  </tr>
                  <tr>
                    <th>Email</th>
                    <td><%= user.getEmail() %></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>

      <%
        } else {
      %>
        <a class="btn btn-outline-success mr-2" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
        <a class="btn btn-outline-success" href="register.jsp"><i class="fas fa-user-plus"></i> Register</a>
      <%
        }
      %>
    </div>
  </div>
</nav>
