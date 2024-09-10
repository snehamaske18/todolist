package todolist.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todolist.jdbc.JDBC;
@WebServlet("/addtask")
public class AddTask extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title=req.getParameter("title");
		String description=req.getParameter("description");
		int res=0;
		try {
			res=JDBC.addTask(title, description);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (res == 1) {
			req.setAttribute("message", "Task added");
		}else {
			req.setAttribute("message", "Task not added");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("addtask.jsp");
		requestDispatcher.forward(req, resp);
	}
}
