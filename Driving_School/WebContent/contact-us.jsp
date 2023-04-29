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
						<h1>contact us</h1>
					</div>
					<!-- page heading End -->
				</div>
				<!-- breadcrumb Start -->
				<div class="breadcrumb_section">
					<ul class="breadcrumb">
						<li><a href="index.jsp">home</a></li>
						<li>contact-us</li>
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
			<div class="col-sm-6 col-xs-12">
				<ul class="contact_details">
					<li class="fromleft wow" data-wow-delay=".3s">
						<span class="icons">
							<i class="fa fa-envelope-open-o" aria-hidden="true"></i>
						</span>
						<div>
							<h3>Our Email</h3>
							<p><strong>Help :</strong> info@yourmail.com</p>
							<p><strong>Support :</strong> Support@yourmail.com</p>
						</div>
					</li>
					<li class="fromleft wow" data-wow-delay=".6s">
						<span class="icons">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
						<div>
							<h3>Our Phone</h3>
							<p><strong>Office Phone :</strong> +1-202-555-0145</p>
							<p><strong>Mobile :</strong> 202-555-0168</p>
						</div>
					</li>
					<li class="fromleft wow" data-wow-delay=".9s">
						<span class="icons">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</span>
						<div>
							<h3>Our Address</h3>
							<p><strong>Office Address 1 :</strong> 2285 Memory Ln, Germanton, NC, 27019</p>
							<p><strong>Office Address 2 :</strong> 5124 Fong Dr, Copperopolis, CA, 95228</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="col-sm-6 col-xs-12">
				<div class="contact_form">
					<h3>Get In Touch</h3>
					<div class="row">
					
						<form action="Contact" method="post">
							<div class="col-md-6 col-xs-12">
								<input type="text" name="name" placeholder="Your Name" id="u_name">
							</div>
							<div class="col-md-6 col-xs-12">
								<input type="text" name="email" placeholder="Your Email" id="u_email">
							</div>
							<div class="col-lg-12 col-xs-12">
								<textarea name="message" placeholder="Your Message" id="u_message"></textarea>
							</div>
							<div class="col-lg-12 col-xs-12">
								<button type="submit" class="submit_btn red_btn">Send</button>
							</div>
							<div class="col-lg-12 col-xs-12" id="err_msg">
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
<div class="map_section">
	<div id="contact_map"></div>
</div>
<!-- contact section End -->
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
<!-- google map js file-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNdePPJKYq0ptBV_AFi_4RnmUtMa1ZLFg&amp;libraries=places">
</script>
<script type="text/javascript" src="js/jquery.googlemap.js"></script>
<!-- google map js file-->
<!-- custom js -->
<script type="text/javascript" src="js/custom.js"></script> 
<!-- custom js -->
<!-- map script -->
<script>
	$(document).ready(function() {
		var myCenter=new google.maps.LatLng(51.508530, -0.076134);
		function initialize()
		{
			var mapProp = {
				center:myCenter,
				zoom:1,
				scrollwheel: false,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			};
			var map=new google.maps.Map(document.getElementById("contact_map"),mapProp);
			var icon = { 
				url: "https://www.google.com/maps/@22.9776287,72.4621251,13z"
			};
			var marker=new google.maps.Marker({
				position:myCenter,
				map: map,
				title: 'Template Bundle',
				icon: icon
			});
			marker.setMap(map);
			var infowindow = new google.maps.InfoWindow({
				content:"<span> Template Bundle </span>"
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map,marker);
			});
		}
		google.maps.event.addDomListener(window, 'load', initialize);
	});
</script>
<!-- map script -->
</body>
<!--body end -->

<!-- Mirrored from templatebundle.net/templates/driving-school-html-template/contact-us.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 12 Sep 2022 05:02:32 GMT -->
</html>