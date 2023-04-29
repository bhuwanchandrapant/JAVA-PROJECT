<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">


<!-- Mirrored from themesbrand.com/minia/layouts/auth-login.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:24 GMT -->
<head>

<meta charset="utf-8" />
<title>Login | Minia - Minimal Admin & Dashboard Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="Premium Multipurpose Admin & Dashboard Template"
	name="description" />
<meta content="Themesbrand" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

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
	<div class="auth-page">
		<div class="container-fluid p-0">
			<div class="row g-0">
				<div class="col-xxl-3 col-lg-4 col-md-5">
					<div class="auth-full-page-content d-flex p-sm-5 p-4">
						<div class="w-100">
							<div class="d-flex flex-column h-100">
								<div class="mb-4 mb-md-5 text-center">
									<a href="Admin_Index.jsp" class="d-block auth-logo"> <img
										src="assets/images/logo-sm.svg" alt="" height="28"> <span
										class="logo-txt">Driving School</span>
									</a>
								</div>
								<div class="auth-content my-auto">
									<div class="text-center">
										<h5 class="mb-0">Change Password !</h5>
									</div>
									<p>
				                  		<%
				                  			if(request.getAttribute("msg")!=null)
				                  			{
				                  				out.println(request.getAttribute("msg"));
				                  			}
				                  		%>
				                  	</p>
									<form action="NewFile.jsp" method="post" class="mt-4 pt-2"
										action="https://themesbrand.com/minia/layouts/index.jsp">
										<div class="mb-3">
											<div class="d-flex align-items-start">
												<div class="flex-grow-1">
													<label class="form-label">Old Password</label>
												</div>
											</div>
											<div class="input-group auth-pass-inputgroup">
												<input type="password" name="old" class="form-control"
													placeholder="Enter password" aria-label="Password"
													aria-describedby="password-addon">
												<button class="btn btn-light shadow-none ms-0" type="button"
													id="password-addon">
													<i class="mdi mdi-eye-outline"></i>
												</button>
											</div>
										</div>
										<div class="mb-3">
											<div class="d-flex align-items-start">
												<div class="flex-grow-1">
													<label class="form-label">New Password</label>
												</div>
											</div>
											<div class="input-group auth-pass-inputgroup">
												<input type="password" name="new" class="form-control"
													placeholder="Enter password" aria-label="Password"
													aria-describedby="password-addon">
												<button class="btn btn-light shadow-none ms-0" type="button"
													id="password-addon">
													<i class="mdi mdi-eye-outline"></i>
												</button>
											</div>
										</div>
										<div class="mb-3">
											<div class="d-flex align-items-start">
												<div class="flex-grow-1">
													<label class="form-label">Confirm New Password</label>
												</div>
											</div>
											<div class="input-group auth-pass-inputgroup">
												<input type="password" name="confirm" class="form-control"
													placeholder="Enter password" aria-label="Password"
													aria-describedby="password-addon">
												<button class="btn btn-light shadow-none ms-0" type="button"
													id="password-addon">
													<i class="mdi mdi-eye-outline"></i>
												</button>
											</div>
										</div>
										
										<div class="mb-3">
											<button
												class="btn btn-primary w-100 waves-effect waves-light" name="action"
												type="submit">Change Password </button>
										</div>
									</form>

									<!--     <div class="mt-4 pt-2 text-center">
                                            <div class="signin-other-title">
                                                <h5 class="font-size-14 mb-3 text-muted fw-medium">- Sign in with -</h5>
                                            </div>

                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()"
                                                        class="social-list-item bg-primary text-white border-primary">
                                                        <i class="mdi mdi-facebook"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()"
                                                        class="social-list-item bg-info text-white border-info">
                                                        <i class="mdi mdi-twitter"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="javascript:void()"
                                                        class="social-list-item bg-danger text-white border-danger">
                                                        <i class="mdi mdi-google"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>-->

									<!--  <div class="mt-5 text-center">
                                            <p class="text-muted mb-0">Don't have an account ? <a href="register.jsp" 
                                                    class="text-primary fw-semibold"> Signup now </a> </p>                                      
                                              </div>  -->
								</div>
								<div class="mt-4 mt-md-5 text-center">
									<p class="mb-0">
										©
										<script>document.write(new Date().getFullYear())</script>
										Minia . Crafted with <i class="mdi mdi-heart text-danger"></i>
										by Themesbrand
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- end auth full page content -->
				</div>
				<!-- end col -->
				<div class="col-xxl-9 col-lg-8 col-md-7">
					<div class="auth-bg pt-md-5 p-4 d-flex">
						<div class="bg-overlay bg-primary"></div>
						<ul class="bg-bubbles">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<!-- end bubble effect -->
						<div class="row justify-content-center align-items-center">
							<div class="col-xl-7">
								<div class="p-0 p-sm-4 px-xl-0">
									<div id="reviewcarouselIndicators" class="carousel slide"
										data-bs-ride="carousel">
										<!-- end carouselIndicators -->
										<div class="carousel-inner">
											<div class="carousel-item active">
											</div>



										</div>
										<!-- end carousel-inner -->
									</div>
									<!-- end review carousel -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container fluid -->
	</div>


	<!-- JAVASCRIPT -->
	<script src="assets/libs/jquery/jquery.min.js"></script>
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/libs/metismenu/metisMenu.min.js"></script>
	<script src="assets/libs/simplebar/simplebar.min.js"></script>
	<script src="assets/libs/node-waves/waves.min.js"></script>
	<script src="assets/libs/feather-icons/feather.min.js"></script>
	<!-- pace js -->
	<script src="assets/libs/pace-js/pace.min.js"></script>
	<!-- password addon init -->
	<script src="assets/js/pages/pass-addon.init.js"></script>

</body>


<!-- Mirrored from themesbrand.com/minia/layouts/auth-login.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Aug 2022 10:41:24 GMT -->
</html>