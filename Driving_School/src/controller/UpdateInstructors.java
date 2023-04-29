package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.Dao;
import dao.UserDao;
import pojo.Instructors;



/**
 * Servlet implementation class EditInst
 */
@WebServlet("/EditInst")
@MultipartConfig
public class UpdateInstructors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInstructors() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		Instructors i = new Instructors();
		UserDao dao = new UserDao();
		
		i = dao.getInstructorsById(id);
		HttpSession session = request.getSession();
		session.setAttribute("list", i);
		response.sendRedirect("UpdateInstructors.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String detail=request.getParameter("detail");
		Part image=request.getPart("image");
		
		Instructors i = new Instructors();
		UserDao dao=new UserDao();
		
		i.setId(id);
		i.setName(name);
		i.setDetail(detail);
		i.setProfile(image.getSubmittedFileName());

		dao.saveOrUpdateInst(i);
		
		String path = request.getRealPath("images")+File.separator+"instructors"+File.separator+image.getSubmittedFileName();
		System.out.println(path);
		
		FileOutputStream fos = new FileOutputStream(path);
		InputStream is = image.getInputStream();
		String Path = "D:\\D_HUSAIN\\Driving_SChool\\WebContent\\instructors";
		
		// reading data
		
		byte [] data = new byte[is.available()];
		is.read(data);
		
		// writing data
		
		fos.write(data);
		fos.close();
	    // response.sendRedirect("Add_Instructor.jsp");
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
        out.println("<script language=JavaScript>");
        out.println("$(document).ready(function(){");
        out.println("swal('Update Instructor Successfull','','success');");
        out.println("});");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("View_Instructor.jsp");
        rd.include(request,response);
	}
	
	

}
