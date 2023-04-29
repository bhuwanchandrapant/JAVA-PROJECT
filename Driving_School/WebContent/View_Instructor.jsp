<%@page import="pojo.Instructors"%>
<%@page import="dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">


<!-- Mirrored from themesbrand.com/minia/layouts/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:15 GMT -->
<head>
<style type="text/css">
body {
	counter-reset: section;
}

#id::before {
	counter-increment: section;
	content: "" counter(section) "";
}
#carditem {
	/* border:1px solid; */
	
}

#carditem:hover {
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	border: 1px solid;
}
</style>

<meta charset="utf-8" />
<title>Dashboard | Minia - Minimal Admin & Dashboard Template</title>
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
	<div id="layout-wrapper">
		<%@include file="Admin_Header.jsp"%>
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="main-content">
			<div class="page-content">
				<div class="container-fluid">
					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div
								class="page-title-box d-sm-flex align-items-center justify-content-between">
								<h4 class="mb-sm-0 font-size-18"> View Category</h4>

								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">View Category</li>
									</ol>
								</div>

							</div>
						</div>
					</div>
					<!-- end page title -->
					<% 
						UserDao dao = new UserDao();
 		            	List<Instructors>list =dao.viewInstructors();
 					    session.setAttribute("ins", list);					
 					   %>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<table id="datatable-buttons"
										class="table table-bordered dt-responsive nowrap w-100">
										<thead>
											<tr>

												<th>Sr No.</th>
												<th>Instructor Name</th>
												<th>Instructor Details</th>
												<th>Image</th>
												<th style="width: 50px;">Edit</th>
												<th style="width: 50px;">Delete</th>
											</tr>
										</thead>


										<tbody>
											<c:forEach var="ins" items="${ins}">
												<tr>
													<td id="id"></td>
													<td>${ins.name}</td>
													<td>${ins.detail}</td>
													<td><img src="images/instructors/${ins.profile}"
														style="height: 30px; width: 60px;"></td>
														
													<td align="center"><a href="EditInst?id=${ins.id}"><i
															class="fa fa-edit" style="font-size: 18px"></i></a></td>
															
													<td align="center"><a
														href="DeleteInst?id=${ins.id}"><i
															class="fa fa-trash" style="font-size: 18px"></i></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- end cardaa -->
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->
				</div>
				<!-- container-fluid -->
			</div>
			<!-- End Page-content -->
			<footer class="footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6">
							<script>
								document.write(new Date().getFullYear())
							</script>
							© Minia.
						</div>
						<div class="col-sm-6">
							<div class="text-sm-end d-none d-sm-block">
								Design & Develop by <a href="#!"
									class="text-decoration-underline">Themesbrand</a>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>
		<!-- end main content-->
	</div>
	<!-- END layout-wrapper -->
	<!-- Right Sidebar -->
	<div class="right-bar">
		<div data-simplebar class="h-100">
			<div class="rightbar-title d-flex align-items-center p-3">

				<h5 class="m-0 me-2">Theme Customizer</h5>

				<a href="javascript:void(0);" class="right-bar-toggle ms-auto">
					<i class="mdi mdi-close noti-icon"></i>
				</a>
			</div>

			<!-- Settings -->
			<hr class="m-0" />

			<div class="p-4">
				<h6 class="mb-3">Layout</h6>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout"
						id="layout-vertical" value="vertical"> <label
						class="form-check-label" for="layout-vertical">Vertical</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout"
						id="layout-horizontal" value="horizontal"> <label
						class="form-check-label" for="layout-horizontal">Horizontal</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2">Layout Mode</h6>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-mode"
						id="layout-mode-light" value="light"> <label
						class="form-check-label" for="layout-mode-light">Light</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-mode"
						id="layout-mode-dark" value="dark"> <label
						class="form-check-label" for="layout-mode-dark">Dark</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2">Layout Width</h6>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-width"
						id="layout-width-fuild" value="fuild"
						onchange="document.body.setAttribute('data-layout-size', 'fluid')">
					<label class="form-check-label" for="layout-width-fuild">Fluid</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-width"
						id="layout-width-boxed" value="boxed"
						onchange="document.body.setAttribute('data-layout-size', 'boxed')">
					<label class="form-check-label" for="layout-width-boxed">Boxed</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2">Layout Position</h6>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-position"
						id="layout-position-fixed" value="fixed"
						onchange="document.body.setAttribute('data-layout-scrollable', 'false')">
					<label class="form-check-label" for="layout-position-fixed">Fixed</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="layout-position"
						id="layout-position-scrollable" value="scrollable"
						onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
					<label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2">Topbar Color</h6>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="topbar-color"
						id="topbar-color-light" value="light"
						onchange="document.body.setAttribute('data-topbar', 'light')">
					<label class="form-check-label" for="topbar-color-light">Light</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="topbar-color"
						id="topbar-color-dark" value="dark"
						onchange="document.body.setAttribute('data-topbar', 'dark')">
					<label class="form-check-label" for="topbar-color-dark">Dark</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2 sidebar-setting">Sidebar Size</h6>

				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-size"
						id="sidebar-size-default" value="default"
						onchange="document.body.setAttribute('data-sidebar-size', 'lg')">
					<label class="form-check-label" for="sidebar-size-default">Default</label>
				</div>
				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-size"
						id="sidebar-size-compact" value="compact"
						onchange="document.body.setAttribute('data-sidebar-size', 'md')">
					<label class="form-check-label" for="sidebar-size-compact">Compact</label>
				</div>
				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-size"
						id="sidebar-size-small" value="small"
						onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
					<label class="form-check-label" for="sidebar-size-small">Small
						(Icon View)</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2 sidebar-setting">Sidebar Color</h6>

				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-color"
						id="sidebar-color-light" value="light"
						onchange="document.body.setAttribute('data-sidebar', 'light')">
					<label class="form-check-label" for="sidebar-color-light">Light</label>
				</div>
				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-color"
						id="sidebar-color-dark" value="dark"
						onchange="document.body.setAttribute('data-sidebar', 'dark')">
					<label class="form-check-label" for="sidebar-color-dark">Dark</label>
				</div>
				<div class="form-check sidebar-setting">
					<input class="form-check-input" type="radio" name="sidebar-color"
						id="sidebar-color-brand" value="brand"
						onchange="document.body.setAttribute('data-sidebar', 'brand')">
					<label class="form-check-label" for="sidebar-color-brand">Brand</label>
				</div>

				<h6 class="mt-4 mb-3 pt-2">Direction</h6>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="layout-direction" id="layout-direction-ltr" value="ltr">
					<label class="form-check-label" for="layout-direction-ltr">LTR</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="layout-direction" id="layout-direction-rtl" value="rtl">
					<label class="form-check-label" for="layout-direction-rtl">RTL</label>
				</div>

			</div>

		</div>
		<!-- end slimscroll-menu-->
	</div>
	<!-- /Right-bar -->

	<!-- Right bar overlay-->
	<div class="rightbar-overlay"></div>

	<!-- JAVASCRIPT -->
	<script src="assets/libs/jquery/jquery.min.js"></script>
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/libs/metismenu/metisMenu.min.js"></script>
	<script src="assets/libs/simplebar/simplebar.min.js"></script>
	<script src="assets/libs/node-waves/waves.min.js"></script>
	<script src="assets/libs/feather-icons/feather.min.js"></script>
	<!-- pace js -->
	<script src="assets/libs/pace-js/pace.min.js"></script>

	<!-- Required datatable js -->
	<script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script
		src="assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
	<script src="assets/libs/jszip/jszip.min.js"></script>
	<script src="assets/libs/pdfmake/build/pdfmake.min.js"></script>
	<script src="assets/libs/pdfmake/build/vfs_fonts.js"></script>
	<script src="assets/libs/datatables.net-buttons/js/buttons.jsp5.min.js"></script>
	<script
		src="assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="assets/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>

	<!-- Responsive examples -->
	<script
		src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

	<!-- Datatable init js -->
	<script src="assets/js/pages/datatables.init.js"></script>

	<script src="assets/js/app.js"></script>

</body>


<!-- Mirrored from themesbrand.com/minia/layouts/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:16 GMT -->
</html>