package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import pojo.Admin;
import dao.Dao;

/**
 * Servlet implementation class Change_Password
 */
@WebServlet("/Change_Password")
public class Change_Password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change_Password() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action"); 
		
		if(action.equalsIgnoreCase("change password"))
		{
			HttpSession session=request.getSession();
			Admin a=(Admin) session.getAttribute("a");
			if(a.getPassword().equals(request.getParameter("Old_password")))
			{
				if(request.getParameter("New_password").equals(request.getParameter("Cnew_password")))
				{
					Dao.change_password(a.getEmail(), request.getParameter("New_password"));
					response.sendRedirect("Admin_Logout.jsp");
				}
				else
				{
					request.setAttribute("msg", "New Password & Confirm New Password Does Not Matched");
					request.getRequestDispatcher("Change_Password.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("msg", "Old Password Is Incorrect");
				request.getRequestDispatcher("Change_Password.jsp").forward(request, response);
			}
		}
	}
}
