package todolist.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todolist.jdbc.JDBC;
import todolist.object.List1;

@WebServlet("/remove")
public class Remove extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<List1> list = JDBC.viewAllTask();
		req.setAttribute("list", list);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("remove.jsp");
		requestDispatcher.forward(req, resp);
	}
}
