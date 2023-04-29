<%@page import="pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% User user=(User) session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- header cover Start -->
<div class="header">
	<!-- header Top Section Start -->
	<div class="header_top">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-xs-12">
					<ul class="contact_desc">
						<li><i class="fa fa-envelope-open" aria-hidden="true"></i> Test@yourmail.com</li>
						<li><i class="fa fa-phone" aria-hidden="true"></i> +91-225-555-0154</li>
					</ul>
					<ul class="timing_shed">
						<li><i class="fa fa-clock-o" aria-hidden="true"></i> Mon - Fri 10am-7:pm </li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- header Top Section End -->
	<!-- header menu section start -->
	<div class="header_menu_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-xs-12">
					<div class="ds_logo">
						<a href="index.jsp">
							<img src="images/ds_logo.png" alt="driving-school-logo">
						</a>
					</div>
					<div class="nav_toggle">
						<i></i>
						<i></i>
						<i></i>
					</div>
					<div class="header_right_menu">
						<ul class="menu"> 
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="services.jsp">Services</a></li>
							<li><a href="courses.jsp">Courses</a></li>
							<li><a href="contact-us.jsp">Contact us</a></li>
							<li><a href="inquiry.jsp">Inquiry</a></li>
							<%
						if (user == null) {
					%>
							 <li><a href="login.jsp"><i class="fa-solid fa-user"></i></a></li> 
							<%
						} else {
					%>
					<li><a href="logout.jsp">Logout(${user.name})</a></li> 
					<%} %>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header menu section end -->
</div>
<!-- header cover End -->
</body>
</html>