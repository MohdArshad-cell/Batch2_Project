<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBconnect"%>
<%@page import="com.User.Post"%>
<%@page import="com.User.UserDetails"%>
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
<title>Edit Notes</title>
<%@ include file="all_components/All_CDN.jsp"%>
</head>
<body>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBconnect.getConn());
	Post p = post.getDataById(noteid);
	%>
	<div class="container-fluid mb-5">
		<%@ include file="all_components/navbar.jsp"%>
		<h1 class="text-center mt-5">Edit Your Notes</h1>
		<div class="container  mb-5">
			<div class="row">
				<div class="col-md-12">
					<form action="EditServlet" method="post">

						<div class="form-group">
							<input type="hidden" value="<%=noteid%>" name="noteid">

						</div>
						<div class="form-group">
							<label for="">Enter Title</label> <input type="text" name="title"
								class="form-control" placeholder="Enter title"
								value="<%=p.getTitle()%>">
						</div>


						<div class="form-group">
							<label for="">Enter Message</label>
							<textarea rows="11" cols="6" class="form-control" name="content"
								id="exampleInputPassword1"><%=p.getContent()%>
								</textarea>
						</div>
						<button type="submit" class="btn btn-primary">Update
							Notes</button>
					</form>
				</div>
			</div>
		</div>
	</div>



	<%@ include file="all_components/footer.jsp"%>
</body>
</html>