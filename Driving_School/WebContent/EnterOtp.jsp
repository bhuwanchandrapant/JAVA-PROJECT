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

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/contact-us.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:31 GMT -->
<head>
<title>Driving School Html Website Template</title>
<meta charset="utf-8" />
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
	<!-- page banner Section start -->
	<div class="full_width ds_page_banner">
		<div class="black_overlay">
			<div class="container">
				<div class="row">
					<div class="page_content_wrap">
						<!-- page heading Start -->
						<div class="page_heading">
							<h1>Otp</h1>
						</div>
						<!-- page heading End -->
					</div>
					<!-- breadcrumb Start -->
					<div class="breadcrumb_section">
						<ul class="breadcrumb">
							<li><a href="index.jsp">home</a></li>
							<li>Otp</li>
						</ul>
					</div>
					<!-- breadcrumb End -->
				</div>
			</div>
		</div>
	</div>
	<!-- page banner Section End -->
	<!-- contact section Start -->
	<div class="full_width contact_section">
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12 col-xs-12">
					<div class="contact_form">
						<!-- <h3>Please First Login</h3> -->
						<div class="row">
								<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
		  			}
		  
		  %>
							<form action="ValidateOtp" method="post">
								
								<div class="col-md-6 col-xs-12">
									<input type="tel" placeholder="Enter Otp" pattern="\d{5,6}" required="required" name="otp">
								</div>
								
								
								
									
								<div class="col-lg-12 col-xs-12">
									<button type="submit" class="submit_btn red_btn">Send Otp</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- contact section End -->
	<!-- contact section Start -->
	<!-- contact section End -->
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
	<!-- google map js file-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNdePPJKYq0ptBV_AFi_4RnmUtMa1ZLFg&amp;libraries=places">
		
	</script>
	<script type="text/javascript" src="js/jquery.googlemap.js"></script>
	<!-- google map js file-->
	<!-- custom js -->
	<script type="text/javascript" src="js/custom.js"></script>
	<!-- custom js -->
	<!-- map script -->
	<script>
		$(document)
				.ready(
						function() {
							var myCenter = new google.maps.LatLng(51.508530,
									-0.076132);
							function initialize() {
								var mapProp = {
									center : myCenter,
									zoom : 8,
									scrollwheel : false,
									mapTypeId : google.maps.MapTypeId.ROADMAP
								};
								var map = new google.maps.Map(document
										.getElementById("contact_map"), mapProp);
								var icon = {
									url : 'images/icon/map_pin.png'
								};
								var marker = new google.maps.Marker({
									position : myCenter,
									map : map,
									title : 'Template Bundle',
									icon : icon
								});
								marker.setMap(map);
								var infowindow = new google.maps.InfoWindow({
									content : "<span> Template Bundle </span>"
								});
								google.maps.event.addListener(marker, 'click',
										function() {
											infowindow.open(map, marker);
										});
							}
							google.maps.event.addDomListener(window, 'load',
									initialize);
						});
	</script>
	
	<!-- map script -->
</body>
<!--body end -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/contact-us.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:32 GMT -->
</html>