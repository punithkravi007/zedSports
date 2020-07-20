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
.product__action li a, .owl-next, .owl-prev, .product__action--dft li a
	{
	padding: 15px;
}
</style>

</head>

<body>
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
							<div class="col-lg-3 col-md-3 col-sm-4 col-xs-5">
								<div class="logo">
									<a href="${pageContext.request.contextPath}/"><img
										src="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif"
										alt="logo images" height="65px;"
										style="border-bottom-left-radius: 25px; border-top-right-radius: 25px"></a>
									<font size="5" style="padding-top: 10px; padding-left: 5px;"
										color="black"><b></b></font>
								</div>
							</div>
							<div class="col-md-6 col-lg-7 col-sm-4 col-xs-3">
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
										<li><a href="${pageContext.request.contextPath}/blog/">Bulk
												Order</a></li>
									</ul>
								</nav>

								<div class="mobile-menu clearfix visible-xs visible-sm">
									<nav id="mobile_dropdown">
										<ul>
											<li><a href="${pageContext.request.contextPath}/">Home</a></li>
											<li><a href="#">Men</a>
												<ul>
													<li><a href="blog.html">Sports Category</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Volly
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Kabaddi</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Cricket</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tennis/Badminton</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Basket
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Foot
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Athletics</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">HandBall</a></li>
														</ul></li>
													<li><a href="blog-details.html">Active Wear</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Suits</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Pants</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">T-Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Sweat
																	Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Corporate
																	T-Shirts</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/cart">Footwear
															and Accessories</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Shoes</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Caps</a></li>
														</ul></li>
												</ul></li>
											<li><a href="#">Women</a>
												<ul>
													<li><a href="blog.html">Sports Category</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Volly
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Kabaddi</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Cricket</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tennis/Badminton</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Basket
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Foot
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Athletics</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">HandBall</a></li>
														</ul></li>
													<li><a href="blog-details.html">Active Wear</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Suits</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Pants</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">T-Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Sweat
																	Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Corporate
																	T-Shirts</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/cart">Footwear
															and Accessories</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Shoes</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Caps</a></li>
														</ul></li>
												</ul></li>
											<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
								<div class="header__right">
									<core:if test="${empty USER_ENTITY}">
										<div class="header__search">
											<a href="${pageContext.request.contextPath}/signin"
												title="Sign In"><i class="icon-login icons"></i></a>
										</div>
									</core:if>
									<core:if test="${not empty USER_ENTITY}">
										<div class="header__search">
											<a href="${pageContext.request.contextPath}/logout"
												title="Sign out"><i class="icon-logout icons"
												style="color: red"></i></a>
										</div>
									</core:if>
									<div class="header__account">
										<a href="${pageContext.request.contextPath}/user/profile"
											title="Welcome ${USER_ENTITY.userFirstName}"><i
											class="icon-user icons"></i></a>
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
			<!-- Start Cart Panel -->
			<tiles:insertAttribute name="cart"></tiles:insertAttribute>
			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<tiles:insertAttribute name="body"></tiles:insertAttribute>
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