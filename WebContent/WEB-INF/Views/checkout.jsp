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

<style type="text/css">
.accordion__body__form, .bilinfo, .shipinfo, .shipmethod, .paymentinfo {
	padding: 40px;
	background-color: antiquewhite;
}

.order-details {
	background-color: white;
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
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a href="${pageContext.request.contextPath}/products/">Volly Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Cricket</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Basket
																Ball</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Foot Ball</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a href="#">Tract Suits</a></li>
														<li><a href="#">Tract Pants</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
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
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a href="${pageContext.request.contextPath}/products/">Volly Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Cricket</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">Basket
																Ball</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Foot Ball</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a href="#">Tract Suits</a></li>
														<li><a href="#">Tract Pants</a></li>
														<li><a href="${pageContext.request.contextPath}/checkout/wishlist">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/checkout/cart">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
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
													<li><a href="${pageContext.request.contextPath}/products/">product grid</a></li>
													<li><a href="${pageContext.request.contextPath}/products/product">product details</a></li>
													<li><a href="${pageContext.request.contextPath}/checkout/wishlist">wishlist</a></li>
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
									<a href="${pageContext.request.contextPath}/products/product">BO&Play Wireless Speaker</a>
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
									<a href="${pageContext.request.contextPath}/products/product">Brone Candle</a>
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
						<li><a href="${pageContext.request.contextPath}/checkout/cart">View Cart</a></li>
						<li class="shp__checkout"><a href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
					</ul>
				</div>
			</div>
			<!-- End Cart Panel -->
		</div>
		<div class="checkout-wrap ptb--100" style="background-color: #F4F6F6">
			<div class="container">
				<div class="row">
					<div class="col-md-8" style="background-color: white">
						<div class="checkout__inner" style="padding: 10px;">
							<div class="accordion-list">
								<div class="accordion">
									<div class="accordion__title">Checkout Method</div>
									<div class="accordion__body">
										<div class="accordion__body__form">
											<div class="row">
												<div class="col-md-7">
													<div class="checkout-method">
														<form action="#">
															<div class="checkout-method__single">
																<h5 class="checkout-method__title">
																	<i class="zmdi zmdi-caret-right"></i>CHECKOUT AS A
																	GUEST OR REGISTER
																</h5>
																<p class="checkout-method__subtitle">Register with
																	us for future convenience:</p>
																<div class="single-input">
																	<input type="radio" id="checkout-method-1"
																		name="checkout-method" checked="checked"> <label
																		for="checkout-method-1">Checkout as guest</label>
																</div>
																<div class="single-input">
																	<input type="radio" id="checkout-method-2"
																		name="checkout-method"> <label
																		for="checkout-method-2">Register</label>
																</div>
															</div>
															<div class="checkout-method__single">
																<h5 class="checkout-method__title">
																	<i class="zmdi zmdi-caret-right"></i>REGISTER AND SAVE
																	TIME
																</h5>
																<p class="checkout-method__subtitle">Register with
																	us for future convenience:</p>
																<div class="single-input">
																	<input type="radio" id="register-method-1"
																		name="register-method" checked="checked"> <label
																		for="register-method-1">Fast and easy check
																		out</label>
																</div>
																<div class="single-input">
																	<input type="radio" id="register-method-2"
																		name="register-method"> <label
																		for="register-method-2">Easy access to your
																		order history and status</label>
																</div>
															</div>
														</form>
													</div>
												</div>
												<div class="col-md-5">
													<div class="checkout-method__login">
														<form action="#">
															<h5 class="checkout-method__title">Login</h5>
															<h5 class="checkout-method__title">Already
																Registered?</h5>
															<p class="checkout-method__subtitle">Please login
																below:</p>
															<div class="single-input">
																<label for="user-email">Email Address</label> <input
																	type="email" id="user-email">
															</div>
															<div class="single-input">
																<label for="user-pass">Password</label> <input
																	type="password" id="user-pass">
															</div>
															<p class="require">* Required fields</p>
															<a href="#">Forgot Passwords?</a>
															<div class="dark-btn">
																<a href="#">LogIn</a>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="accordion__title">Billing Information</div>
									<div class="accordion__body">
										<div class="bilinfo">
											<form action="#">
												<div class="row">
													<div class="col-md-12">
														<div class="single-input mt-0">
															<select name="bil-country" id="bil-country">
																<option value="select">Select your country</option>
																<option value="arb">Arab Emirates</option>
																<option value="ban">Bangladesh</option>
																<option value="ind">India</option>
																<option value="uk">United Kingdom</option>
																<option value="usa">United States</option>
															</select>
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="text" placeholder="First name">
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="text" placeholder="Last name">
														</div>
													</div>
													<div class="col-md-12">
														<div class="single-input">
															<input type="text" placeholder="Company name">
														</div>
													</div>
													<div class="col-md-12">
														<div class="single-input">
															<input type="text" placeholder="Street Address">
														</div>
													</div>
													<div class="col-md-12">
														<div class="single-input">
															<input type="text"
																placeholder="Apartment/Block/House (optional)">
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="text" placeholder="City/State">
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="text" placeholder="Post code/ zip">
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="email" placeholder="Email address">
														</div>
													</div>
													<div class="col-md-6">
														<div class="single-input">
															<input type="text" placeholder="Phone number">
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="accordion__title">shipping information</div>
									<div class="accordion__body">
										<div class="shipinfo">
											<h3 class="shipinfo__title">Shipping Address</h3>
											<p>
												<b>Address:</b> Bootexperts, Banasree D-Block, Dhaka 1219,
												Bangladesh
											</p>
											<a href="#" class="ship-to-another-trigger"><i
												class="zmdi zmdi-long-arrow-right"></i>Ship to another
												address</a>
											<div class="ship-to-another-content">
												<form action="#">
													<div class="row">
														<div class="col-md-12">
															<div class="single-input mt-0">
																<select name="bil-country" id="another-bil-country">
																	<option value="select">Select your country</option>
																	<option value="arb">Arab Emirates</option>
																	<option value="ban">Bangladesh</option>
																	<option value="ind">India</option>
																	<option value="uk">United Kingdom</option>
																	<option value="usa">United States</option>
																</select>
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="text" placeholder="First name">
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="text" placeholder="Last name">
															</div>
														</div>
														<div class="col-md-12">
															<div class="single-input">
																<input type="text" placeholder="Company name">
															</div>
														</div>
														<div class="col-md-12">
															<div class="single-input">
																<input type="text" placeholder="Street Address">
															</div>
														</div>
														<div class="col-md-12">
															<div class="single-input">
																<input type="text"
																	placeholder="Apartment/Block/House (optional)">
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="text" placeholder="City/State">
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="text" placeholder="Post code/ zip">
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="email" placeholder="Email address">
															</div>
														</div>
														<div class="col-md-6">
															<div class="single-input">
																<input type="text" placeholder="Phone number">
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<div class="accordion__title">shipping method</div>
									<div class="accordion__body">
										<div class="shipmethod">
											<form action="#">
												<div class="single-input">
													<p>
														<input type="radio" name="ship-method" id="ship-fast">
														<label for="ship-fast">First shipping</label>
													</p>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Aliquid voluptatum quaerat totam hic suscipit quam
														repellat debitis ad sed aperiam quisquam quibusdam enim
														labore, ipsa illo, natus ipsam temporibus officia.</p>
												</div>
												<div class="single-input">
													<p>
														<input type="radio" name="ship-method" id="ship-normal">
														<label for="ship-normal">Normal shipping</label>
													</p>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Magnam maxime, eaque eos! Quidem officia similique,
														fuga consequatur vero? Quis autem dicta voluptatibus
														veniam temporibus rem reprehenderit placeat quaerat sunt
														ducimus.</p>
												</div>
											</form>
										</div>
									</div>
									<div class="accordion__title">payment information</div>
									<div class="accordion__body">
										<div class="paymentinfo">
											<div class="single-method">
												<div class="row">
													<center>
														<div class="col-sm-4">
															<input type="checkbox" name="payment-option"><b>&nbsp;Cash
																On Delivery</b>
														</div>
													</center>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="order-details">
							<h5 class="order-details__title">Your Order</h5>
							<div class="order-details__item">
								<div class="single-item">
									<div class="single-item__thumb">
										<img src="${IMAGE_RELATIVE_PATH}/images/cart/1.jpg"
											alt="ordered item">
									</div>
									<div class="single-item__content">
										<a href="#">Santa fe jacket for men</a> <span class="price">$128</span>
									</div>
									<div class="single-item__remove">
										<a href="#"><i class="zmdi zmdi-delete"></i></a>
									</div>
								</div>
								<div class="single-item">
									<div class="single-item__thumb">
										<img src="${IMAGE_RELATIVE_PATH}/images/cart/2.png"
											alt="ordered item">
									</div>
									<div class="single-item__content">
										<a href="#">Santa fe jacket for men</a> <span class="price">$128</span>
									</div>
									<div class="single-item__remove">
										<a href="#"><i class="zmdi zmdi-delete"></i></a>
									</div>
								</div>
							</div>
							<div class="order-details__count">
								<div class="order-details__count__single">
									<h5>sub total</h5>
									<span class="price">$909.00</span>
								</div>
								<div class="order-details__count__single">
									<h5>Tax</h5>
									<span class="price">$9.00</span>
								</div>
								<div class="order-details__count__single">
									<h5>Shipping</h5>
									<span class="price">0</span>
								</div>
							</div>
							<div class="ordre-details__total">
								<h5>Order total</h5>
								<span class="price">$918.00</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- cart-main-area end -->
		<!-- Start Brand Area -->
		<!-- End Brand Area -->
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
										<li><a href="${pageContext.request.contextPath}/checkout/cart">My Cart</a></li>
										<li><a href="#">Login</a></li>
										<li><a href="${pageContext.request.contextPath}/checkout/wishlist">Wishlist</a></li>
										<li><a href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
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