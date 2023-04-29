<%@page import="dao.UserDao"%>
<%@page import="pojo.Instructors"%>
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

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:20 GMT -->
<head>
<title>Driving School Html Website Template</title>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="description" content="" />
<meta name="keywords" content="auto, automobile, bootstrap, car, car driving, course, driver, driving class, driving school, instructor, responsive, school, teacher, training">
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
<%@include file="header.jsp" %>
<!-- page banner Section start -->
<div class="full_width ds_page_banner">
	<div class="black_overlay">
		<div class="container">
			<div class="row">
				<div class="page_content_wrap">
					<!-- page heading Start -->
					<div class="page_heading">
						<h1>About Us</h1>
					</div>
					<!-- page heading End -->
				</div>
				<!-- breadcrumb Start -->
				<div class="breadcrumb_section">
					<ul class="breadcrumb">
						<li><a href="index-2.jsp">home</a></li>
						<li>About</li>
					</ul>
				</div>
				<!-- breadcrumb End -->
			</div>
		</div>
	</div>
</div>
<!-- page banner Section End -->

<!-- About section Start -->
<div class="full_width ds_about_section">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="ds_about_thumb thumb_hover fromright wow" data-wow-delay=".3s">
					<img src="images/about/about_thumb.jpg" alt="" class="img-responsive">
				</div>
			</div>
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="ds_about_desc fromright wow">
					<h3>Welcome to Our Driving School</h3>
					<p>
						It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
					</p>
					<p>
						Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years
					</p>
					<a href="#" class="read_more red_btn">Read More</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- About section End -->
<!-- testimonial section Start -->
<div class="testimonial_section">
	<div class="black_overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-xs-12 col-md-offset-1">
					<div class="owl-carousel owl-theme testimonial_slider">
						<div class="item">
							<div class="testimonial_cover">
								<i class="fa fa-quote-left"></i>
								<p>
									But I must explain to you “how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system” and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.
								</p>
								<h3>Kavin Parkar</h3>
								<h5>Designer</h5>
							</div>
						</div>
						<div class="item">
							<div class="testimonial_cover">
								<i class="fa fa-quote-left"></i>
								<p>
									But I must explain to you “how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system” and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.
								</p>
								<h3>Jasmine Dyer</h3>
								<h5>Designer</h5>
							</div>
						</div>
						<div class="item">
							<div class="testimonial_cover">
								<i class="fa fa-quote-left"></i>
								<p>
									But I must explain to you “how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system” and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.
								</p>
								<h3>Robert Doe</h3>
								<h5>Developer</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- testimonial section End -->
<!-- instruction section Start -->
<%
            	UserDao dao  = new UserDao();
                List<Instructors>list1=dao.viewInstructors();
                session.setAttribute("ins", list1);            		
                           
            %>
<div class="instructor_team_section">
	<div class="container">
		<div class="row">
		<!-- heading section -->
			<div class="heading_section">
				<h1>Our Instructors</h1>
				<span class="heading_icon">
					<i class="flaticon flaticon-car-steering-wheel"></i>
				</span>
			</div>
			<!-- heading section -->
			 <c:forEach items="${ins}" var="in">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="instruct_figure">
					<div class="course_thumb thumb_hover">
						<img src="images/instructors/${in.profile}" alt="" class="img-responsive">
					</div>
					<div class="instruct_desc fromleft wow">
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
<!-- instruction section End -->
 <%@include file="footer.jsp" %>
<!-- jquery library js -->
<script type="text/javascript" src="js/jquery.js"></script> 
<!-- jquery library js -->
<!-- bootstrap js file-->
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<!-- bootstrap js file-->
<!-- owl crousel js file-->
<script type="text/javascript" src="js/plugins/owl-crousel/owl.carousel.js"></script> 
<!-- owl crousel js file-->
<!-- animation js file-->
<script type="text/javascript" src="js/plugins/animation/wow.min.js"></script>
<script type="text/javascript" src="js/plugins/animation/jquery.appear.js"></script> 
<!-- animation js file-->
<!-- counter js file-->
<script type="text/javascript" src="js/plugins/counter/jquery.countTo.js"></script>
<!-- counter js file-->
<!-- custom js -->
<script type="text/javascript" src="js/custom.js"></script> 
<!-- custom js -->
<!-- map script -->
</body>
<!--body end -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/about.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:21 GMT -->
</html>