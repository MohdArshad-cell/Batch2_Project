<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@ include file="all_components/All_CDN.jsp"%>
</head>
<body>
	<%@ include file="all_components/navbar.jsp"%>

	<div class="container-fluid mt-5 mb-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header">
						<h1>Register</h1>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-sucess");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=regMsg%>
						<a href="Login.jsp">Login</a>
					</div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>

					<%
					String failedMsg = (String) session.getAttribute("failed-msg");

					if (failedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=failedMsg%>
					</div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1" name="fname"
									placeholder="Enter Name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									name="uemail" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="upasssword" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>

							<button type="submit" class="btn btn-primary">Register</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@ include file="all_components/footer.jsp"%>
</body>
</html>