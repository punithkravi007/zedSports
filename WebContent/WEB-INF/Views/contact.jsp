<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html class="no-js" lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<core:set var="IMAGE_RELATIVE_PATH"
	value="${pageContext.request.contextPath}/Resources/"></core:set>

<spring:url value="/Resources/css/bootstrap.min.css"
	var="BOOTSTRAP_MIN_CSS" />
<link rel="stylesheet" href="${BOOTSTRAP_MIN_CSS}">

<spring:url value="/Resources/css/owl.carousel.min.css"
	var="CAROUSEL_MIN_CSS" />
<link rel="stylesheet" href="${CAROUSEL_MIN_CSS}">

<spring:url value="/Resources/css/owl.theme.default.min.css"
	var="OWL_THEME_MIN_CSS" />
<link rel="stylesheet" href="${OWL_THEME_MIN_CSS}">


<spring:url value="/Resources/css/core.css" var="CORE_CSS" />
<link rel="stylesheet" href="${CORE_CSS}">

<spring:url value="/Resources/css/shortcode/shortcodes.css"
	var="SHORTCODES_CSS" />
<link rel="stylesheet" href="${SHORTCODES_CSS}">

<spring:url value="/Resources/css/style.css" var="STYLE_CSS" />
<link rel="stylesheet" href="${STYLE_CSS}">

<spring:url value="/Resources/css/responsive.css" var="RESPONSIVE_CSS" />
<link rel="stylesheet" href="${RESPONSIVE_CSS}">

<spring:url value="/Resources/css/custom.css" var="CUSTOM_CSS" />
<link rel="stylesheet" href="${CUSTOM_CSS}">

<spring:url value="/Resources/js/vendor/modernizr-3.5.0.min.js"
	var="MODERNIZR_JS" />
<script src="${MODERNIZR_JS}"></script>
<style>
.contact-box input {
	background-color: white;
}

.contact-box.message textarea {
	background-color: white;
}

.address__icon, .address__icon {
	padding: 40px;
}
</style>
</head>

<body>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper">
		<!-- Start Header Style -->
		<header id="htc__header" class="htc__header__area header--one">
			<!-- Start Mainmenu Area -->
			<div id="sticky-header-with-topbar"
				class="mainmenu__wrap sticky__header">
				<div class="container">
					<div class="row">
						<div class="menumenu__container clearfix">
							<div class="col-lg-5 col-md-5 col-sm-6 col-xs-7">
								<div class="logo">
									<a href="${pageContext.request.contextPath}/"><img
										src="https://www.flipflopdesign.co.uk/wp-content/uploads/2018/06/zed_logo_design_black-1000px.jpg"
										alt="logo images" height="65px;"
										style="border-bottom-left-radius: 25px; border-top-right-radius: 25px"></a>
									<font size="5" style="padding-top: 10px; padding-left: 5px;"
										color="black"><b>Zed Sports</b></font>
								</div>
							</div>
							<div class="col-md-4 col-lg-5 col-sm-2 col-xs-1">
								<nav class="main__menu__nav hidden-xs hidden-sm">
									<ul class="main__menu">
										<li class="drop"><a
											href="${pageContext.request.contextPath}/">Home</a></li>
										<li class="drop"><a href="#">women</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/">Volly
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Cricket</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Basket
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Foot
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a href="#">Tract Suits</a></li>
														<li><a href="#">Tract Pants</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a href="#">Cap</a></li>
														<li><a href="#">Shoes</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
											</ul></li>
										<li class="drop"><a href="#">men</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/">Volly
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Cricket</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Basket
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Foot
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a href="#">Tract Suits</a></li>
														<li><a href="#">Tract Pants</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/wishlist">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a href="#">Cap</a></li>
														<li><a href="#">Shoes</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
											</ul></li>
										<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
									</ul>
								</nav>

								<div class="mobile-menu clearfix visible-xs visible-sm">
									<nav id="mobile_dropdown">
										<ul>
											<li><a href="">Home</a></li>
											<li><a href="blog.html">blog</a></li>
											<li><a href="#">pages</a>
												<ul>
													<li><a href="blog.html">Blog</a></li>
													<li><a href="blog-details.html">Blog Details</a></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/cart">Cart
															page</a></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/">checkout</a></li>
													<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
													<li><a
														href="${pageContext.request.contextPath}/products/">product
															grid</a></li>
													<li><a
														href="${pageContext.request.contextPath}/products/product">product
															details</a></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/wishlist">wishlist</a></li>
												</ul></li>
											<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
								<div class="header__right">
									<div class="header__search search search__open">
										<a href="#" title="Sign In"><i class="icon-login icons"></i></a>
									</div>
									<div class="header__account">
										<a href="#"><i class="icon-user icons"></i></a>
									</div>
									<div class="htc__shopping__cart">
										<a class="cart__menu" href="#"><i
											class="icon-handbag icons"></i></a> <a href="#"><span
											class="htc__qua">2</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mobile-menu-area"></div>
				</div>
			</div>
			<!-- End Mainmenu Area -->
		</header>
		<!-- End Header Area -->

		<div class="body__overlay"></div>
		<!-- Start Offset Wrapper -->
		<div class="offset__wrapper">
			<!-- Start Search Popap -->
			<div class="search__area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="search__inner">
								<form action="#" method="get">
									<input placeholder="Search here... " type="text">
									<button type="submit"></button>
								</form>
								<div class="search__close__btn">
									<span class="search__close__btn_icon"><i
										class="zmdi zmdi-close"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Search Popap -->
			<!-- Start Cart Panel -->
			<div class="shopping__cart">
				<div class="shopping__cart__inner">
					<div class="offsetmenu__close__btn">
						<a href="#"><i class="zmdi zmdi-close"></i></a>
					</div>
					<div class="shp__cart__wrap">
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> <img
									src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-smg/1.jpg"
									alt="product images">
								</a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a
										href="product-details${pageContext.request.contextPath}/products/product">BO&Play
										Wireless Speaker</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$105.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> <img
									src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-smg/2.jpg"
									alt="product images">
								</a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a
										href="product-details${pageContext.request.contextPath}/products/product">Brone
										Candle</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$25.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
					</div>
					<ul class="shoping__total">
						<li class="subtotal">Subtotal:</li>
						<li class="total__price">$130.00</li>
					</ul>
					<ul class="shopping__btn">
						<li><a
							href="${pageContext.request.contextPath}/checkout/cart">View
								Cart</a></li>
						<li class="shp__checkout"><a
							href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
					</ul>
				</div>
			</div>
			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<!-- Start Bradcaump area -->
		<!-- End Bradcaump area -->
		<!-- Start Contact Area -->
		<section class="htc__contact__area ptb--100 bg__white"
			style="background-color: #F4F6F6">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
						<div class="map-contacts--2">
							<div id="googleMap"></div>
						</div>
					</div>
					<div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
						<h2 class="title__line--6">CONTACT US</h2>
						<div class="address">
							<div class="address__icon">
								<i class="icon-location-pin icons"></i>
							</div>
							<div class="address__details">
								<h2 class="ct__title">our address</h2>
								<p>#15, 1st main, 1st and 2nd Stage,Yelahanka New
									Town,Bengaluru,Karnataka-560064</p>
							</div>
						</div>
						<div class="address">
							<div class="address__icon">
								<i class="icon-envelope icons"></i>
							</div>
							<div class="address__details">
								<h2 class="ct__title">openning hour</h2>
								<p>9:30 AM - 9:00 PM</p>
							</div>
						</div>

						<div class="address">
							<div class="address__icon">
								<i class="icon-phone icons"></i>
							</div>
							<div class="address__details">
								<h2 class="ct__title">Phone Number</h2>
								<p>078993 69333</p>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="contact-form-wrap mt--60">
						<div class="col-xs-12">
							<div class="contact-title">
								<h2 class="title__line--6">SEND A MAIL</h2>
							</div>
						</div>
						<div class="col-xs-12">
							<form id="contact-form" action="#" method="post">
								<div class="single-contact-form">
									<div class="contact-box name">
										<input type="text" name="name" placeholder="Your Name*">
										<input type="email" name="email" placeholder="Mail*">
									</div>
								</div>
								<div class="single-contact-form">
									<div class="contact-box subject">
										<input type="text" name="subject" placeholder="Subject*">
									</div>
								</div>
								<div class="single-contact-form">
									<div class="contact-box message">
										<textarea name="message" placeholder="Your Message"></textarea>
									</div>
								</div>
								<div class="contact-btn">
									<button type="submit" class="fv-btn">Send MESSAGE</button>
								</div>
							</form>
							<div class="form-output">
								<p class="form-messege"></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Contact Area -->
		<!-- End Banner Area -->
		<!-- Start Footer Area -->
		<footer id="htc__footer">
			<!-- Start Footer Widget -->
			<div class="footer__container bg__cat--1">
				<div class="container">
					<div class="row">
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="footer">
								<h2 class="title__line--2">CONTACT US</h2>
								<div class="ft__details">
									<p>#15, 1st main, 1st and 2nd Stage, Yelahanka, Yelahanka
										New Town, Bengaluru, Karnataka-560064</p>
									<div class="ft__social__link">
										<ul style="color: #a4a4a4">
											<li><b>Email :</b> zedsports@support.com</li>
											<li><b>Phone :</b> +91 88920 42721</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
							<div class="footer">
								<h2 class="title__line--2">information</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><a href="#">About us</a></li>
										<li><a href="#">Delivery Information</a></li>
										<li><a href="#">Privacy & Policy</a></li>
										<li><a href="#">Terms & Condition</a></li>
										<li><a href="#">Manufactures</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">my account</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><a href="#">My Account</a></li>
										<li><a
											href="cart${pageContext.request.contextPath}/products/product">My
												Cart</a></li>
										<li><a href="#">Login</a></li>
										<li><a
											href="wishlist${pageContext.request.contextPath}/products/product">Wishlist</a></li>
										<li><a
											href="checkout${pageContext.request.contextPath}/products/product">Checkout</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">SUBSCRIBE</h2>
								<div class="ft__inner">
									<div class="news__input">
										<input type="text" placeholder="Your Mail*">
										<div class="send__btn">
											<a class="fr__btn" href="#">Send Mail</a>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
					</div>
				</div>
			</div>
		</footer>
		<!-- End Footer Style -->
	</div>

	<spring:url value="/Resources/js/vendor/jquery-3.2.1.min.js"
		var="JQUERY_JS" />
	<script src="${JQUERY_JS}"></script>

	<spring:url value="/Resources/js/bootstrap.min.js" var="BOOTSTRAP_JS" />
	<script src="${BOOTSTRAP_JS}"></script>

	<spring:url value="/Resources/js/plugins.js" var="PLUGIN_JS" />
	<script src="${PLUGIN_JS}"></script>

	<spring:url value="/Resources/js/slick.min.js" var="SLICK_JS" />
	<script src="${SLICK_JS}"></script>

	<spring:url value="/Resources/js/owl.carousel.min.js"
		var="OWL_CAROUSEL_JS" />
	<script src="${OWL_CAROUSEL_JS}"></script>

	<spring:url value="/Resources/js/waypoints.min.js" var="WAYPOINTS_JS" />
	<script src="${WAYPOINTS_JS}"></script>

	<spring:url value="/Resources/js/main.js" var="MAIN_JS" />
	<script src="${MAIN_JS}"></script>


	<!-- Google Map js -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>

	<spring:url value="/Resources/js/contact-map.js" var="CONTACT_MAP_JS" />
	<script src="${CONTACT_MAP_JS}"></script>

	<script>
		// When the window has finished loading create our google map below
		google.maps.event.addDomListener(window, 'load', init);

		function init() {
			// Basic options for a simple Google Map
			// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
			var mapOptions = {
				// How zoomed in you want the map to start at (always required)
				zoom : 12,

				scrollwheel : false,

				// The latitude and longitude to center the map (always required)
				center : new google.maps.LatLng(13.100650, 77.581350), // New York

				// How you would like to style the map. 
				// This is where you would paste any style found on Snazzy Maps.
				styles : [ {
					"featureType" : "all",
					"elementType" : "labels.text.fill",
					"stylers" : [ {
						"saturation" : 36
					}, {
						"color" : "#000000"
					}, {
						"lightness" : 40
					} ]
				}, {
					"featureType" : "all",
					"elementType" : "labels.text.stroke",
					"stylers" : [ {
						"visibility" : "on"
					}, {
						"color" : "#000000"
					}, {
						"lightness" : 16
					} ]
				}, {
					"featureType" : "all",
					"elementType" : "labels.icon",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "administrative",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 20
					} ]
				}, {
					"featureType" : "administrative",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 17
					}, {
						"weight" : 1.2
					} ]
				}, {
					"featureType" : "landscape",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 20
					} ]
				}, {
					"featureType" : "poi",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 21
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 17
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 29
					}, {
						"weight" : 0.2
					} ]
				}, {
					"featureType" : "road.arterial",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 18
					} ]
				}, {
					"featureType" : "road.local",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 16
					} ]
				}, {
					"featureType" : "transit",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#000000"
					}, {
						"lightness" : 19
					} ]
				}, {
					"featureType" : "water",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#141516"
					}, {
						"lightness" : 17
					} ]
				} ]
			};

			// Get the HTML DOM element that will contain your map 
			// We are using a div with id="map" seen below in the <body>
			var mapElement = document.getElementById('googleMap');

			// Create the Google Map using our element and options defined above
			var map = new google.maps.Map(mapElement, mapOptions);

			// Let's also add a marker while we're at it
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(23.7286, 90.3854),
				map : map,
				title : 'Ramble!',
				icon : '${IMAGE_RELATIVE_PATH}/images/icons/map-2.png',
				animation : google.maps.Animation.BOUNCE

			});
		}
	</script>

</body>

</html>