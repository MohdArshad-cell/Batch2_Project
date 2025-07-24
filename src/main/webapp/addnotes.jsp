
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please login First.......");
}
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="all_components/All_CDN.jsp"%>

</head>
<body>
	<div class="container-fluid mb-5">
		<%@ include file="all_components/navbar.jsp"%>
		<h1 class="text-center mt-5">Add Your Notes</h1>
		<div class="container  mb-5">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotes" method="post">

						<div class="form-group">
							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

						</div>
						<div class="form-group">
							<label for="">Title</label> <input type="text" name="title"
								class="form-control" placeholder="Enter title">
						</div>


						<div class="form-group">
							<label for="">Content</label>
							<textarea rows="11" cols="6" class="form-control" name="content"
								id="exampleInputPassword1" placeholder="Password">
								</textarea>
						</div>
						<button type="submit" class="btn btn-primary">Add Notes</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="all_components/footer.jsp"%>
</body>
</html>