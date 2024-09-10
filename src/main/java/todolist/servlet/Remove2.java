package todolist.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todolist.jdbc.JDBC;
import todolist.object.List1;

@WebServlet("/removetask")
public class Remove2 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("title");
		int res = 0;

		try {
			res = JDBC.removetask(title);  // Remove the task
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// Set appropriate message based on whether the task was removed
		if (res == 1) {
			req.setAttribute("message", "Task deleted");
		} else {
			req.setAttribute("message", "Task not deleted");
		}

		
		List<List1> updatedList = JDBC.viewAllTask();
		req.setAttribute("list", updatedList);

		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("remove.jsp");
		requestDispatcher.forward(req, resp);
	}
}
