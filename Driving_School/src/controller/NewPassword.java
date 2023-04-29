package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;


/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				Connection con = Dao.getConnection();
				PreparedStatement pst = con.prepareStatement("update user set password = ? where email = ? ");
				pst.setString(1, newPassword);
				pst.setString(2, (String) session.getAttribute("email"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					/*request.setAttribute("msg", "Password Change Success");
					dispatcher = request.getRequestDispatcher("login.jsp");*/
					
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			         out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
			         out.println("<script language=JavaScript>");
			         out.println("$(document).ready(function(){");
			         out.println("swal({position: 'center',icon: 'success',title: 'Password Change Success',showCancelButton: false,showCofirmButton: false,timer: 4000});");
			         out.println("});");
			         out.println("</script>");
			         
			         RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			         rd.include(request,response);
				} 
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else
		{
			/*request.setAttribute("msg", "New & Confirm New Password Does Not Matched");
			request.getRequestDispatcher("newPassword.jsp").forward(request, response);*/
			
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
	        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
	         out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
	         out.println("<script language=JavaScript>");
	         out.println("$(document).ready(function(){");
	         out.println("swal({position: 'center',icon: 'info',title: 'New & Confirm New Password Does Not Matched',showCancelButton: false,showCofirmButton: false,timer: 4000});");
	         out.println("});");
	         out.println("</script>");
	         
	         RequestDispatcher rd=request.getRequestDispatcher("newPassword.jsp");
	         rd.include(request,response);
		}
	}

}
