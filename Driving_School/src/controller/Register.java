package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import pojo.User;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name= request.getParameter("name");
		String email=request.getParameter("email");
		String contact =request.getParameter("contact");
		String password=request.getParameter("password");
		
		User u=new User();
		u.setName(name);
		u.setEmail(email);
		u.setContact(contact);
		u.setPassword(password);
		
		UserDao udao=new UserDao();
		udao.register(u);
		

    	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
         out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
         out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
         out.println("<script language=JavaScript>");
         out.println("$(document).ready(function(){");
         out.println("swal({position: 'center',icon: 'info',title: 'Register suc', timer: 5000});");
         out.println("});");
         out.println("</script>");
         
         RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
         rd.include(request,response);
		//response.sendRedirect("login.jsp");
	}

}
