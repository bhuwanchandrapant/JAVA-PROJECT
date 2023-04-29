<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pojo.Instructors"%>
<%@page import="pojo.Courses"%>
<%@page import="dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- 
Template Name: Driving School Html Website Template
Version: 1.0.0
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]> -->
<html lang="en">
<!-- <![endif]-->
<!-- BEGIN HEAD -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:01 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Driving School</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="description" content="" />
<meta name="keywords"
	content="auto, automobile, bootstrap, car, car driving, course, driver, driving class, driving school, instructor, responsive, school, teacher, training">
<meta name="author" content="TemplateBundle" />
<meta name="MobileOptimized" content="320" />
<!--srart theme style -->
<link href="css/main.css" rel="stylesheet" type="text/css">
<!-- end theme style -->
<!-- favicon-icon -->
<link rel="icon" type="image/png" href="images/icon/favicon.png">
<!-- favicon-icon -->
</head>
<!-- END HEAD -->
<!--body start-->
<body>
	<!-- preloader start -->
	<div class="preloader">
		<div class="preloader_inner">
			<div class="loading_icon">
				<i class="flaticon flaticon-car-steering-wheel"></i>
			</div>
			<p>Loading...</p>
		</div>
	</div>
	<!-- preloader End -->
	<%@include file="header.jsp"%>
	<!-- slider section start -->
	<div class="ds_slider_section">
		<div class="owl-carousel owl-theme home_slider">
			<!-- item Start -->
			<div class="item">
				<div class="slides"
					style="background-image: url('images/slider/slide_1.jpg');">
					<div class="slider_caption_wrap">
						<div class="container">
							<div class="row">
								<div class="col-lg-4 col-sm-6 col-xs-12">
									<div class="slider_form">
										<div class="form_heading">
											<h2>Join Now</h2>
											<p>First Month Training Free**</p>
										</div>
										<form action="Enquiry" method="post">
												<div class="form_group">
													<input type="text" placeholder="Your name" pattern="[A-z]{1,15}" required="required" name="name">
												</div>
												<div class="form_group">
													<input type="text" placeholder="Your Email" pattern="^[-+.\w]{1,64}@[-.\w]{1,64}\.[-.\w]{2,6}$" required="required" name="email">
												</div>
												<div class="form_group">
													<input type="text" placeholder="Your Phone" pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$" required="required" name="contact">
													</div>
											<div class="form_group date_wrapper">
												<input type="date"  required="required" name="date"
													placeholder="Join Date"> <i
													class="date_icon fa fa-calendar"></i>
											</div>
											<div class="form_group">
									<input list="cartypes" name="cartype" required="required" id="cartype"
										placeholder=" Select car type">
									<datalist id="cartypes">
										<option value="Ford">
										<option value="Honda">
										<option value="Tata">
										<option value="BMW">
										<option value="Maruti suzuki">
										<option value="Hyundai">
										<option value="Volvo">
									</datalist>
									</div>
									<div class="form_group">
										<input list="coursetypes" name="coursetype" required="required" id="coursetype"
											placeholder=" Select Course type">
										<datalist id="coursetypes">
											<option value="Drive Your Dreams">
											<option value="Safety First">
											<option value="Safe drive">
											<option value="Road Skills School">
											<option value="Drive Accurately">
											<option value="Teach On Road">
											<option value="Highway Driving">
											<option value="Road Alert">
											<option value="One Stand">
										</datalist>
								</div>
												<button type="submit" class="join_btn red_btn">Join
												Now</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- item End -->
			<!-- item Start -->
			<div class="item">
				<div class="slides"
					style="background-image: url('images/slider/slide_2.jpg');">
					<div class="slider_caption_wrap">
						<div class="container">
							<div class="row">
								<div class="col-lg-8 col-xs-12 col-lg-offset-2">
									<div class="slider_caption">
										<h3>Best For You</h3>
										<h2>Make safe & Successfull Drive With Us</h2>
										<p>Contrary to popular belief, Lorem Ipsum is not simply
											random text. It has roots in a piece of classical Latin
											literature from 45 BC.</p>
										<a href="inquiry.jsp" class="red_btn slide_btn"> Join Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- item End -->
		</div>
	</div>
	<!-- slider section end -->
	<!-- Service section start -->
	<div class="service_section">
		<div class="container">
			<div class="row">
				<!-- heading section -->
				<div class="heading_section">
					<h1>Our Services</h1>
					<span class="heading_icon"> <i
						class="flaticon flaticon-car-steering-wheel"></i>
					</span>
				</div>
				<!-- heading section -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="service_box fromright wow" data-wow-delay=".5s">
						<i class="fa fa-car"></i>
						<h4>Comfort Vehicles</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="service_box fromright wow">
						<i class="fa fa-id-card-o" aria-hidden="true"></i>
						<h4>Licensed Training</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="service_box fromleft wow">
						<i class="fa fa-cog" aria-hidden="true"></i>
						<h4>Driving Practice</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="service_box fromleft wow" data-wow-delay=".5s">
						<i class="fa fa-tachometer" aria-hidden="true"></i>
						<h4>Flexible Schedule</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service section end -->
	<!-- testimonial section Start -->
	
	<!-- testimonial section End -->
	<%
				UserDao dao2  = new UserDao();
                List<Courses>list1=dao2.viewCourses();
                session.setAttribute("cou", list1);            		
                           
            %>
	<!-- Course section Start -->
	<div class="courses_section">
		<div class="container">
			<div class="row">
				<!-- heading section -->
				<div class="heading_section">
					<h1>Our Courses</h1>
					<span class="heading_icon"> <i
						class="flaticon flaticon-car-steering-wheel"></i>
					</span>
				</div>
				<c:forEach items="${cou}" var="in">
				<!-- heading section -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="course_figure frombottom wow">
						<span class="c_price">${in.price}</span>
						<div class="course_thumb">
							<img src="images/instructors/${in.image}" alt="driving-school-course1"
								class="img-responsive">
							<div class="course_overlay">
								<div class="overlay_inner">
									<a href="inquiry.jsp" class="book_btn red_btn">Book Now</a>
								</div>
							</div>
						</div>
						<div class="course_desc">
							<h4>${in.courses}</h4>
							<p>${in.time}</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Course section End -->
	<!-- Skill section Start -->
	<div class="skills_section">
		<div class="black_overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="counter_figure zoom wow">
							<i class="flaticon flaticon-happy"></i>
							<h1 class="counter_num" data-to=" <%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM contact";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%>" data-delay="100"
								data-speed="4000"> <%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM contact";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%></h1>
							<p>Happy Customers</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="counter_figure zoom wow" data-wow-delay=".3s">
							<i class="flaticon flaticon-baths-marker-point"></i>
							<h1 class="counter_num" data-to="15" data-delay="100"
								data-speed="4000"></h1>
							<p>Locations</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="counter_figure zoom wow" data-wow-delay=".6s">
							<i class="flaticon flaticon-delivery-man"></i>
							<h1 class="counter_num" data-to="<%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM enquiry";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%>" data-delay="100"
								data-speed="4000"><%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM enquiry";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%></h1>
							<p>years of Expertise</p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="counter_figure zoom wow" data-wow-delay=".9s">
							<i class="flaticon flaticon-car-steering-wheel"></i>
							<h1 class="counter_num" data-to=" <%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM Instructors";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%>" data-delay="100"
								data-speed="4000"><%
										try
										{
											Class.forName("com.mysql.jdbc.Driver").newInstance();
											Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/driving_school","root","");
											Statement st=con.createStatement();
											String strQuery = "SELECT COUNT(*) FROM Instructors";
											ResultSet rs = st.executeQuery(strQuery);
											String Countrow="";
											while(rs.next()){
											Countrow = rs.getString(1);
											out.println(Countrow);
											}
											}
											catch (Exception e){
											e.printStackTrace();
										}
									%></h1>
							<p>Driving Instructors</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- skill section End -->
	<!-- instruction section Start -->
	<%
            	UserDao dao1  = new UserDao();
                List<Instructors>list=dao1.viewInstructors();
                session.setAttribute("ins", list);            		
                           
            %>
	<div class="instructor_team_section">
		<div class="container">
			<div class="row">
				<!-- heading section -->
				<div class="heading_section">
					<h1>Our Instructors</h1>
					<span class="heading_icon"> <i
						class="flaticon flaticon-car-steering-wheel"></i>
					</span>
				</div>
				<!-- heading section -->
				 <c:forEach items="${ins}" var="in">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="instruct_figure">
						<div class="course_thumb thumb_hover">
							<img src="images/instructors/${in.profile}" alt="driving-school-team1"
								class="img-responsive">
						</div>
						<div class="instruct_desc">
							<h4>${in.name }</h4>
							<h5>${in.detail }</h5>
							<ul class="social_icons">
								<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
								<li><a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				</c:forEach>
				
				
				
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- instruction section End -->
	<%@include file="footer.jsp"%>
	<!-- jquery library js -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<!-- jquery library js -->
	<!-- bootstrap js file-->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- bootstrap js file-->
	<!-- owl crousel js file-->
	<script type="text/javascript"
		src="js/plugins/owl-crousel/owl.carousel.js"></script>
	<!-- owl crousel js file-->
	<!-- animation js file-->
	<script type="text/javascript" src="js/plugins/animation/wow.min.js"></script>
	<script type="text/javascript"
		src="js/plugins/animation/jquery.appear.js"></script>
	<!-- animation js file-->
	<!-- counter js file-->
	<script type="text/javascript"
		src="js/plugins/counter/jquery.countTo.js"></script>
	<!-- counter js file-->
	<!-- Datepicker js file-->
	<script type="text/javascript" src="js/plugins/datepicker/jquery-ui.js"></script>
	<!-- Datepicker js file-->
	<!-- custom js -->
	<script type="text/javascript" src="js/custom.js"></script>
	<!-- custom js -->
	<!-- map script -->
</body>
<!--body end -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:17 GMT -->
</html>