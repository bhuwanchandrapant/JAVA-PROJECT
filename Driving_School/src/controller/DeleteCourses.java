package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

/**
 * Servlet implementation class DeleteCourses
 */
@WebServlet("/DeleteCourses")
public class DeleteCourses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCourses() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		Integer id = Integer.parseInt(request.getParameter("id"));
		UserDao u=new UserDao();
		u.deleteCourses(id);
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Courses Deleted Successfully');");
		out.println("location='View_Courses.jsp';");
		out.println("</script>");

	}
}