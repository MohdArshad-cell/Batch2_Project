package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.UserDAO;
import com.Db.DBconnect;
import com.User.UserDetails;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword"); 

		UserDetails us = new UserDetails();
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DBconnect.getConn());
		UserDetails user = dao.loginUser(us);

		HttpSession session = request.getSession();

		if (user != null) {
			session.setAttribute("userD", user);
			response.sendRedirect("welcome.jsp");
		} else {
			session.setAttribute("login-failed", "Invalid email or password"); 
			response.sendRedirect("login.jsp");
		}
	}
}
