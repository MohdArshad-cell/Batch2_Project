<%@page import="com.User.UserDetails"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="addnotes.jsp">Add
					Notes</a></li>
			<li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show Notes</a>
			</li>
		</ul>
		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
		%>
		<a class="btn btn-outline-success my-2 my-sm-0 mr-2 btt" type="submit"
			href="#" data-toggle="modal" data-target="#exampleModal"><%=user.getName()%></a>
		<a class="btn btn-outline-success my-2 my-sm-0 mr-2 btt" type="submit"
			href="LogoutServlet">Log Out</a>
		<!-- Button trigger modal -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container text-center">
							<i class="fas fa-user fa-3x"></i>
							<table class="table">
								<tr>
									<th>User ID</th>
									<td><%=user.getId()%></td>
								</tr>
								<tr>
									<th>Full Name</th>
									<td><%=user.getName()%></td>
								</tr>

								<tr>
									<th>Email ID</th>
									<td><%=user.getEmail()%></td>
								</tr>

							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
		<%
		} else {
		%>
		<form class="form-inline my-2 my-lg-0">
			<a class="btn btn-outline-success my-2 my-sm-0 mr-2" type="submit"
				href="login.jsp">Login</a> <a
				class="btn btn-outline-success my-2 my-sm-0" type="submit"
				href="register.jsp">Register</a>
		</form>
		<%
		}
		%>
	</div>
</nav>