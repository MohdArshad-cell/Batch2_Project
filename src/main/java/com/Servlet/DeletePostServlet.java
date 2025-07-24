package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBconnect;

@WebServlet("/DeletePostServlet")
public class DeletePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBconnect.getConn());
		boolean f = dao.deleteNotes(pid);
		if (f) {
			System.out.println("Data Deleted Succeffully");
			response.sendRedirect("showNotes.jsp");

		} else {
			System.out.println("Data Not Deleted");
		}
	}

}
