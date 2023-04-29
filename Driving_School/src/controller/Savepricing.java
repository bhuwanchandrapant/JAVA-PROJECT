package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.UserDao;
import pojo.Pricing;


/**
 * Servlet implementation class SaveInstructor
 */
@MultipartConfig
@WebServlet("/Savepricing")
public class Savepricing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Savepricing() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("coursename");
		String plan=request.getParameter("plan");
		int price=Integer.parseInt(request.getParameter("price"));
		
		Pricing p = new Pricing();
		UserDao dao = new UserDao();
		
		p.setCoursename(name);
		p.setPlan(plan);
		p.setPrice(price);

		dao.AddPricing(p);
		
		 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
         out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
         out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
         out.println("<script language=JavaScript>");
         out.println("$(document).ready(function(){");
         out.println("swal('Pricing Submitted Successfull','','success');");
         out.println("});");
         out.println("</script>");
         
         RequestDispatcher rd=request.getRequestDispatcher("Add_Pricing.jsp");
         rd.include(request,response);

		
		
		
	
	}
	

}
