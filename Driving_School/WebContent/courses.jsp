<%@page import="pojo.Pricing"%>
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

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:21 GMT -->
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
						<h1>Courses</h1>
					</div>
					<!-- page heading End -->
				</div>
				<!-- breadcrumb Start -->
				<div class="breadcrumb_section">
					<ul class="breadcrumb">
						<li><a href="index-2.jsp">home</a></li>
						<li>Courses</li>
					</ul>
				</div>
				<!-- breadcrumb End -->
			</div>
		</div>
	</div>
</div>
<!-- page banner Section End -->
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

<!-- Pricing section Start -->
<div class="pricing_section">
	<div class="black_overlay">
		<div class="container">
			<div class="row">
				<!-- heading section -->
				<div class="heading_section heading_light">
					<h1>Our Pricing Plan</h1>
					<span class="heading_icon">
						<i class="flaticon flaticon-car-steering-wheel"></i>
					</span>
				</div>
				<!-- heading section -->
				  <%
				UserDao dao  = new UserDao();
                List<Pricing>list=dao.ViewPricing();
                session.setAttribute("pricing", list);            		
                           
            %>
				<!-- price one Start -->
				 <c:forEach items="${pricing}" var="p">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="pricing_main fromright wow" data-wow-delay=".5s">
						<div class="pricing_body">
							<div class="price_head"><h3>${p.plan}</h3></div>
							<div class="plan_price"><h4>${p.price}/<span>mon</span></h4></div>
							<ul class="pricing_details list-unstyled">
							  <li>2 Month Course</li>
							  <li>3 Hours Per Day</li>
							  <li>Weekly 1 Test</li>
							  <li>20 Video Classes</li>
							  <li>${p.coursename}</li>
							</ul>
							<div class="pricing_btn">
								<a href="#" class="price_btn red_btn">Select Plan</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- price one End -->
			</div>
		</div>
	</div>
</div>
<!-- Pricing section End -->
 <%@include file="footer.jsp" %>
<!-- jquery library js -->
<script type="text/javascript" src="js/jquery.js"></script> 
<!-- jquery library js -->
<!-- bootstrap js file-->
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<!-- bootstrap js file-->
<!-- animation js file-->
<script type="text/javascript" src="js/plugins/animation/wow.min.js"></script>
<script type="text/javascript" src="js/plugins/animation/jquery.appear.js"></script> 
<!-- animation js file-->
<!-- custom js -->
<script type="text/javascript" src="js/custom.js"></script> 
<!-- custom js -->
</body>
<!--body end -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/courses.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:22 GMT -->
</html>