<%@page import="pojo.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%

Admin admin = (Admin)session.getAttribute("admin");

if(admin==null){
	response.sendRedirect("Admin_login.jsp");
}
%>
<!doctype html>
<html lang="en">

<!-- Mirrored from themesbrand.com/minia/layouts/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:15 GMT -->
<head>
<style type="text/css">
#carditem {
	/* border:1px solid; */
	
}

#carditem:hover {
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	border: 1px solid;
}
</style>
<meta charset="utf-8" />
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="Premium Multipurpose Admin & Dashboard Template"
	name="description" />
<meta content="Themesbrand" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- plugin css -->
<link
	href="assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" type="text/css" />

<!-- preloader css -->
<link rel="stylesheet" href="assets/css/preloader.min.css"
	type="text/css" />

<!-- Bootstrap Css -->
<link href="assets/css/bootstrap.min.css" id="bootstrap-style"
	rel="stylesheet" type="text/css" />
<!-- Icons Css -->
<link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="assets/css/app.min.css" id="app-style" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<!-- <body data-layout="horizontal"> -->
	<!-- Begin page -->
	<header id="page-topbar">
		<div class="navbar-header">
			<div class="d-flex">
				<!-- LOGO -->
				<div class="navbar-brand-box">
					<a href="Admin_Index.jsp" class="logo logo-dark"> <span
						class="logo-sm"> <img src="assets/images/logo-sm.svg"
							alt="" height="24">
					</span> <span class="logo-lg"> <img src="assets/images/logo-sm.svg"
							alt="" height="24"> <span class="logo-txt">Driving School</span>
					</span>
					</a> <a href="Admin_Index.jsp" class="logo logo-light"> <span
						class="logo-sm"> <img src="assets/images/logo-sm.svg"
							alt="" height="24">
					</span> <span class="logo-lg"> <img src="assets/images/logo-sm.svg"
							alt="" height="24"> <span class="logo-txt">Driving School</span>
					</span>
					</a>
				</div>
				<button type="button"
					class="btn btn-sm px-3 font-size-16 header-item"
					id="vertical-menu-btn">
					<i class="fa fa-fw fa-bars"></i>
				</button>

				<!-- App Search-->
				
			</div>
			<div class="d-flex">
				
				<div class="dropdown d-inline-block">
					<button type="button"
						class="btn header-item bg-soft-light border-start border-end"
						id="page-header-user-dropdown" data-bs-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						<!-- <img class="rounded-circle header-profile-user"
							src="assets/images/users/avatar-1.jpg" alt="Header Avatar"> -->
						<span class="d-none d-xl-inline-block ms-1 fw-medium"><b>${admin.name}
							</b>
							</span> <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
					</button>
					<div class="dropdown-menu dropdown-menu-end">
						<!-- item-->
						<a class="dropdown-item" href="Change_Password.jsp"><i
							class="mdi mdi-face-profile font-size-16 align-middle me-1"></i>
							Change Password</a> 
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Admin_login.jsp"><i
							class="mdi mdi-logout font-size-16 align-middle me-1"></i> Logout <b>(${admin.name})</b></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- ========== Left Sidebar Start ========== -->
	<div class="vertical-menu">
		<div data-simplebar class="h-100">
			<!--- Sidemenu -->
			<div id="sidebar-menu">
				<!-- Left Menu Start -->
				<ul class="metismenu list-unstyled" id="side-menu">
					<li class="menu-title" data-key="t-menu">Menu</li>
					<li><a href="Admin_Index.jsp"> <i class=" fas fa-home"></i> <span
							data-key="t-dashboard">Dashboard</span>
					</a></li>
						<li><a href="javascript: void(0);" class="has-arrow"> <i
							class=" fas fa-users"></i> <span data-key="t-pages">Istructors</span>
					</a>
						<ul class="sub-menu" aria-expanded="false">
							<li><a href="Add_Instructor.jsp" data-key="t-starter-page">Add
									Istructors</a></li>
							<li><a href="View_Instructor.jsp" data-key="t-maintenance">View
								    Istructors</a></li>
					</ul></li>
						<li><a href="javascript: void(0);" class="has-arrow"> <i
							class="fas fa-box-open"></i> <span data-key="t-authentication">Pricing</span>
					 </a><ul class="sub-menu" aria-expanded="false">
							<li><a href="Add_Pricing.jsp" data-key="t-starter-page">Add
									Pricing</a></li>
							<li><a href="View_Pricing.jsp" data-key="t-maintenance">View
								    Pricing</a></li>
						</ul>
						</li>

					<li><a href="javascript: void(0);" class="has-arrow"> <i
							class="fas fa-shopping-cart"></i> <span data-key="t-pages">Courses</span>
					</a>
						<ul class="sub-menu" aria-expanded="false">
							<li><a href="Our_Courses.jsp" data-key="t-starter-page">Add
									Courses</a></li>
							<li><a href="View_Courses.jsp" data-key="t-maintenance">View
								    Courses</a></li>
						</ul>
						</li>

					<li><a href="View_enquiry.jsp"> <i
							class=" fas fa-users"></i> <span data-key="t-pages">View Enquiry</span>
					</a>
						</li>
					</ul>
			</div>
			<!-- Sidebar -->
		</div>
	</div>
	<!-- Left Sidebar End -->
</body>
<!-- Mirrored from themesbrand.com/minia/layouts/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:16 GMT -->
</html>