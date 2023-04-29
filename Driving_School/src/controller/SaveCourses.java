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
import javax.servlet.http.Part;

import dao.UserDao;
import pojo.Courses;


/**
 * Servlet implementation class SaveCourses
 */
@MultipartConfig
@WebServlet("/SaveCourses")
public class SaveCourses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCourses() {
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
		
		String courses=request.getParameter("courses");
		String price=request.getParameter("price");
		String time=request.getParameter("time");
		Part image=request.getPart("image");
		
		Courses c = new Courses();
		UserDao dao = new UserDao();
	
		c.setCourses(courses);
		c.setPrice(price);
		c.setTime(time);
		c.setImage(image.getSubmittedFileName());

		dao.addCourses(c);
		
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
		
		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
        out.println("<script language=JavaScript>");
        out.println("$(document).ready(function(){");
        out.println("swal('Courses Add Successfull','','success');");
        out.println("});");
        out.println("</script>");
		
        RequestDispatcher rd=request.getRequestDispatcher("Our_Courses.jsp");
        rd.include(request,response);
	}
	

}
