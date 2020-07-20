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

<spring:url value="/Resources/font-awesome/css/font-awesome.css"
	var="FONT_AWESOME_CSS" />
<link rel="stylesheet" href="${FONT_AWESOME_CSS}">


<spring:url value="/Resources/css/animate.css" var="ANIMATE_CSS" />
<link rel="stylesheet" href="${ANIMATE_CSS}">

<spring:url value="/Resources/css/inspania-style.css"
	var="INSPANIA_STYLE_CSS" />
<link rel="stylesheet" href="${INSPANIA_STYLE_CSS}">

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
	</div>
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
							<a href="#"> <img src="images/product-2/sm-smg/1.jpg"
								alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2>
								<a href="${pageContext.request.contextPath}/products/product">BO&Play
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
							<a href="#"> <img src="images/product-2/sm-smg/2.jpg"
								alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2>
								<a href="${pageContext.request.contextPath}/products/product">Brone
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
					<li><a href="${pageContext.request.contextPath}/checkout/cart">View
							Cart</a></li>
					<li class="shp__checkout"><a
						href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
				</ul>
			</div>
		</div>
		<!-- End Cart Panel -->
	</div>
	<!-- End Offset Wrapper -->
	<!-- cart-main-area start -->
	<div class="cart-main-area ptb--100 bg__white"
		style="background-color: #F4F6F6; padding: 30px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>

			</div>

		</div>
		<!-- cart-main-area end -->
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
											href="${pageContext.request.contextPath}/checkout/cart">My
												Cart</a></li>
										<li><a href="#">Login</a></li>
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist">Wishlist</a></li>
										<li><a
											href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
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
	<!-- Body main wrapper end -->
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
</body>

</html>