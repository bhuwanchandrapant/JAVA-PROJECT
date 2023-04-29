package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





import pojo.Admin;
import dao.AdminDao;
import dao.Dao;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        String password = request.getParameter("password");
         
        AdminDao admindao = new AdminDao();
         
        try {
            Admin admin = admindao.AdmincheckLogin(email, password);
            String destPage = "Admin_login.jsp";
             
            if (admin != null) {
                HttpSession session = request.getSession();
                session.setAttribute("admin", admin);
                destPage = "Admin_Index.jsp";
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
        
       
    }
	}


