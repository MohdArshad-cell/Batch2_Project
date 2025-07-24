package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
//import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.Db.DBconnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	

		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upasssword");

		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DBconnect.getConn());
		boolean f = dao.addUser(us);
		HttpSession session;

		// PrintWriter out =response.getWriter();
		if (f) {
			// out.print("Registered Sucessfully...!!");
			session = request.getSession();
			session.setAttribute("reg-sucess", "registered Sucessfully,");
			response.sendRedirect("register.jsp");

		} else {
			// out.print("Not Registered");
			session = request.getSession();
			session.setAttribute("failed-msg", "Not Registered");
			response.sendRedirect("register.jsp");
		}
	}

}
