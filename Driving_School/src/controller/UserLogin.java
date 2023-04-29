package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import dao.Dao;
import pojo.User;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//String email = request.getParameter("email");
		String name=request.getParameter("name");
		String password = request.getParameter("password");
		
		dao.Dao dao = new Dao();
		
		try{
		
			User user = dao.userCheckLogin(name, password);
			String destPage = "index.jsp";
            
            if (user != null) {
                
            	HttpSession session = request.getSession();
                session.setAttribute("user", user);
                
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request,response);
            
            } else {
            	
                /*String message = "Invalid email/password";
                request.setAttribute("msg", message);*/
                //destPage = "login.jsp?msg=notmatch";
                //response.sendRedirect("login.jsp?msg=notmatch");
            	
            	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                 out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                 out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
                 out.println("<script language=JavaScript>");
                 out.println("$(document).ready(function(){");
                 out.println("swal({position: 'center',icon: 'info',title: 'Invalid email & password', timer: 5000});");
                 out.println("});");
                 out.println("</script>");
                 
                 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                 rd.include(request,response);
                
            }
                         
            
            
	
		} catch(Exception e){ System.out.println(e);}
	}
}



