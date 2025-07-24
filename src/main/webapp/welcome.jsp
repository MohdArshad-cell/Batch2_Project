<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please login First.......");
}
%>



<%@ include file="all_components/All_CDN.jsp"%>
<%@ include file="all_components/navbar.jsp"%>
<div class="container-fluid p-0">
	<div class="card py-5">
		<div class="card-body text-center">
			<img src="image/images.png"
				class="img-fluid mx-auto" style="max-width: 300px">

			<h1>Start Your Notes</h1>
			<a href="addnotes.jsp" class="btn btn-outline-primary">Start Here</a>
		</div>
	</div>
</div>
<%@ include file="all_components/footer.jsp"%>
