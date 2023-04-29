package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import pojo.Enquiry;


@WebServlet("/Enquiry")
public class SaveEnquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveEnquiry() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		try{
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school", "root","");
		    PreparedStatement st=con.prepareStatement("select * from enquiry where email=?");
		    st.setString(1, email);
		    ResultSet rs=st.executeQuery();
		        while(rs.next()){

		            if(email.equals(rs.getString("email"))){
		                out.print("Email is already registered!!");
		            }
		            else{
		                out.print("Welcome..");
		            }
		        }
		}
		catch(Exception e){
		    e.printStackTrace();
		}
		String contact =request.getParameter("contact");
		String date=request.getParameter("date");
		String course=request.getParameter("coursetype");
		String car=request.getParameter("cartype");
		
		Enquiry e = new Enquiry();
		UserDao dao = new UserDao();
		
		e.setName(name);
		e.setEmail(email);
		e.setContact(contact);
		e.setDate(date);
		e.setCoursetype(course);
		e.setCartype(car);
		
		dao.addEnquiry(e);
		
		 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
         out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
         out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
         out.println("<script language=JavaScript>");
         out.println("$(document).ready(function(){");
         out.println("swal('Enquiry Submitted Successfull','','success');");
        // out.println("location='index.jsp';");
         out.println("});");
         out.println("</script>");
         
         RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
         rd.include(request,response);
	}

}
