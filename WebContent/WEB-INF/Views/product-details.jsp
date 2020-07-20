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
															href="${pageContext.request.contextPath}/products/">Hand Ball</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a href="${pageContext.request.contextPath}/products/">Tract Suits</a></li>
														<li><a href="${pageContext.request.contextPath}/products/">Tract Pants</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a href="${pageContext.request.contextPath}/products/">Cap</a></li>
														<li><a href="${pageContext.request.contextPath}/products/">Shoes</a></li>
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
												<li><a class="mega__title" href="${pageContext.request.contextPath}/products/"
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
								<a href="#"> <img
									src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-smg/2.jpg"
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
		<!-- Start Product Details Area -->
		<section class="htc__product__details bg__white ptb--100">
			<!-- Start Product Details Top -->
			<div class="htc__product__details__top">
				<div class="container">
					<div class="row">
						<div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
							<div class="htc__product__details__tab__content">
								<!-- Start Product Big Images -->
								<div class="product__big__images">
									<div class="portfolio-full-image tab-content">
										<div role="tabpanel" class="tab-pane fade in active"
											id="img-tab-1">
											<img
												src="${IMAGE_RELATIVE_PATH}/images/product-2/big-img/1.jpg"
												alt="full-image">
										</div>
										<div role="tabpanel" class="tab-pane fade" id="img-tab-2">
											<img
												src="${IMAGE_RELATIVE_PATH}/images/product-2/big-img/2.jpg"
												alt="full-image">
										</div>
										<div role="tabpanel" class="tab-pane fade" id="img-tab-3">
											<img
												src="${IMAGE_RELATIVE_PATH}/images/product-2/big-img/3.jpg"
												alt="full-image">
										</div>
									</div>
								</div>
								<!-- End Product Big Images -->
								<!-- Start Small images -->
								<ul class="product__small__images" role="tablist">
									<li role="presentation" class="pot-small-img active"><a
										href="#img-tab-1" role="tab" data-toggle="tab"> <img
											src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-img-3/3.jpg"
											alt="small-image">
									</a></li>
									<li role="presentation" class="pot-small-img"><a
										href="#img-tab-2" role="tab" data-toggle="tab"> <img
											src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-img-3/1.jpg"
											alt="small-image">
									</a></li>
									<li role="presentation" class="pot-small-img"><a
										href="#img-tab-3" role="tab" data-toggle="tab"> <img
											src="${IMAGE_RELATIVE_PATH}/images/product-2/sm-img-3/2.jpg"
											alt="small-image">
									</a></li>
								</ul>
								<!-- End Small images -->
							</div>
						</div>
						<div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
							<div class="ht__product__dtl">
								<h2>jean shirt to sassy girl</h2>
								<h6>
									Model: <span>MNG001</span>
								</h6>
								<ul class="rating">
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
								</ul>
								<ul class="pro__prize">
									<li class="old__prize">$82.5</li>
									<li>$75.2</li>
								</ul>
								<p class="pro__info">Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit, sed diam nonummy nibh euismod
									tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut
									wisi enim ad minim veniam, quis nostrud exerci tation
									ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
									consequat. Duis autem vel eum iriure dolor in hendrerit in
									vulputate velit esse molestie consequat, vel illum dolore eu
									feugiat nulla facilisis at vero eros et accumsan</p>
								<div class="ht__pro__desc">
									<div class="sin__desc">
										<p>
											<span>Availability:</span> In Stock
										</p>
									</div>
									<div class="sin__desc align--left">
										<p>
											<span>color:</span>
										</p>
										<ul class="pro__color">
											<li class="red"><a href="#">red</a></li>
											<li class="green"><a href="#">green</a></li>
											<li class="balck"><a href="#">balck</a></li>
										</ul>
										<div class="pro__more__btn">
											<a href="#">more</a>
										</div>
									</div>
									<div class="sin__desc align--left">
										<p>
											<span>size</span>
										</p>
										<select class="select__size">
											<option>s</option>
											<option>l</option>
											<option>xs</option>
											<option>xl</option>
											<option>m</option>
											<option>s</option>
										</select>
									</div>
									<div class="sin__desc align--left">
										<p>
											<span>Categories:</span>
										</p>
										<ul class="pro__cat__list">
											<li><a href="#">Fashion,</a></li>
											<li><a href="#">Accessories,</a></li>
											<li><a href="#">Women,</a></li>
											<li><a href="#">Men,</a></li>
											<li><a href="#">Kid,</a></li>
											<li><a href="#">Mobile,</a></li>
											<li><a href="#">Computer,</a></li>
											<li><a href="#">Hair,</a></li>
											<li><a href="#">Clothing,</a></li>
										</ul>
									</div>
									<div class="sin__desc align--left">
										<p>
											<span>Product tags:</span>
										</p>
										<ul class="pro__cat__list">
											<li><a href="#">Fashion,</a></li>
											<li><a href="#">Accessories,</a></li>
											<li><a href="#">Women,</a></li>
											<li><a href="#">Men,</a></li>
											<li><a href="#">Kid,</a></li>
										</ul>
									</div>

									<div class="sin__desc product__share__link">
										<p>
											<span>Share this:</span>
										</p>
										<ul class="pro__share">
											<li><a href="#" target="_blank"><i
													class="icon-social-twitter icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-instagram icons"></i></a></li>

											<li><a
												href="https://www.facebook.com/Furny/?ref=bookmarks"
												target="_blank"><i class="icon-social-facebook icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-google icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-linkedin icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-pinterest icons"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Product Details Top -->
		</section>
		<!-- End Product Details Area -->
		<!-- Start Product Description -->
		<section class="htc__produc__decription bg__white">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<!-- Start List And Grid View -->
						<ul class="pro__details__tab" role="tablist">
							<li role="presentation" class="description active"><a
								href="#description" role="tab" data-toggle="tab">description</a></li>
							<li role="presentation" class="review"><a href="#review"
								role="tab" data-toggle="tab">review</a></li>
							<li role="presentation" class="shipping"><a href="#shipping"
								role="tab" data-toggle="tab">shipping</a></li>
						</ul>
						<!-- End List And Grid View -->
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="ht__pro__details__content">
							<!-- Start Single Content -->
							<div role="tabpanel" id="description"
								class="pro__single__content tab-pane fade in active">
								<div class="pro__tab__content__inner">
									<p>Formfitting clothing is all about a sweet spot. That
										elusive place where an item is tight but not clingy, sexy but
										not cloying, cool but not over the top. Alexandra Alvarez’s
										label, Alix, hits that mark with its range of comfortable,
										minimal, and neutral-hued bodysuits.</p>
									<h4 class="ht__pro__title">Description</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum claritatem</p>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Duis autem vel eum iriure
										dolor in hendrerit in vulputate velit esse molestie consequat,
										vel illum dolore eu feugiat nulla facilisis at vero eros et
										accumsan et iusto odio dignissim qui blandit praesent luptatum
										zzril delenit augue duis dolore te feugait nulla facilisi.</p>
									<h4 class="ht__pro__title">Standard Featured</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in</p>
								</div>
							</div>
							<!-- End Single Content -->
							<!-- Start Single Content -->
							<div role="tabpanel" id="review"
								class="pro__single__content tab-pane fade">
								<div class="pro__tab__content__inner">
									<p>Formfitting clothing is all about a sweet spot. That
										elusive place where an item is tight but not clingy, sexy but
										not cloying, cool but not over the top. Alexandra Alvarez’s
										label, Alix, hits that mark with its range of comfortable,
										minimal, and neutral-hued bodysuits.</p>
									<h4 class="ht__pro__title">Description</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum claritatem</p>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Duis autem vel eum iriure
										dolor in hendrerit in vulputate velit esse molestie consequat,
										vel illum dolore eu feugiat nulla facilisis at vero eros et
										accumsan et iusto odio dignissim qui blandit praesent luptatum
										zzril delenit augue duis dolore te feugait nulla facilisi.</p>
									<h4 class="ht__pro__title">Standard Featured</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum claritatem</p>
								</div>
							</div>
							<!-- End Single Content -->
							<!-- Start Single Content -->
							<div role="tabpanel" id="shipping"
								class="pro__single__content tab-pane fade">
								<div class="pro__tab__content__inner">
									<p>Formfitting clothing is all about a sweet spot. That
										elusive place where an item is tight but not clingy, sexy but
										not cloying, cool but not over the top. Alexandra Alvarez’s
										label, Alix, hits that mark with its range of comfortable,
										minimal, and neutral-hued bodysuits.</p>
									<h4 class="ht__pro__title">Description</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum claritatem</p>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Duis autem vel eum iriure
										dolor in hendrerit in vulputate velit esse molestie consequat,
										vel illum dolore eu feugiat nulla facilisis at vero eros et
										accumsan et iusto odio dignissim qui blandit praesent luptatum
										zzril delenit augue duis dolore te feugait nulla facilisi.</p>
									<h4 class="ht__pro__title">Standard Featured</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh euismod tincidunt ut laoreet
										dolore magna aliquam erat volutpat. Ut wisi enim ad minim
										veniam, quis nostrud exerci tation ullamcorper suscipit
										lobortis nisl ut aliquip ex ea commodo consequat. Duis autem
										vel eum iriure dolor in hendrerit in vulputate velit esse
										molestie consequat, vel illum dolore eu feugiat nulla
										facilisis at vero eros et accumsan et iusto odio dignissim qui
										blandit praesent luptatum zzril delenit augue duis dolore te
										feugait nulla facilisi. Nam liber tempor cum soluta nobis
										eleifend option congue nihil imperdiet doming id quod mazim
										placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum claritatem</p>
								</div>
							</div>
							<!-- End Single Content -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Product Description -->
		<!-- Start Product Area -->
		<section class="htc__product__area--2 pb--100 product-details-res">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">New Arrivals</h2>
							<p>But I must explain to you how all this mistaken idea</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="product__wrap clearfix">
						<!-- Start Single Product -->
						<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<div class="category">
								<div class="ht__cat__thumb">
									<a href="${pageContext.request.contextPath}/products/product">
										<img src="${IMAGE_RELATIVE_PATH}/images/product/1.jpg"
										alt="product images">
									</a>
								</div>
								<div class="fr__hover__info">
									<ul class="product__action">
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist"><i
												class="icon-heart icons"></i></a></li>

										<li><a
											href="${pageContext.request.contextPath}/checkout/cart"><i
												class="icon-handbag icons"></i></a></li>

										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
								<div class="fr__product__inner">
									<h4>
										<a href="${pageContext.request.contextPath}/products/product">Product
											Title Here </a>
									</h4>
									<ul class="fr__pro__prize">
										<li class="old__prize">$30.3</li>
										<li>$25.9</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Product -->
						<!-- Start Single Product -->
						<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<div class="category">
								<div class="ht__cat__thumb">
									<a href="${pageContext.request.contextPath}/products/product">
										<img src="${IMAGE_RELATIVE_PATH}/images/product/2.jpg"
										alt="product images">
									</a>
								</div>
								<div class="fr__hover__info">
									<ul class="product__action">
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist"><i
												class="icon-heart icons"></i></a></li>

										<li><a
											href="${pageContext.request.contextPath}/checkout/cart"><i
												class="icon-handbag icons"></i></a></li>

										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
								<div class="fr__product__inner">
									<h4>
										<a href="${pageContext.request.contextPath}/products/product">Product
											Title Here </a>
									</h4>
									<ul class="fr__pro__prize">
										<li class="old__prize">$30.3</li>
										<li>$25.9</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Product -->
						<!-- Start Single Product -->
						<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<div class="category">
								<div class="ht__cat__thumb">
									<a href="${pageContext.request.contextPath}/products/product">
										<img src="${IMAGE_RELATIVE_PATH}/images/product/3.jpg"
										alt="product images">
									</a>
								</div>
								<div class="fr__hover__info">
									<ul class="product__action">
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist"><i
												class="icon-heart icons"></i></a></li>

										<li><a
											href="${pageContext.request.contextPath}/checkout/cart"><i
												class="icon-handbag icons"></i></a></li>

										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
								<div class="fr__product__inner">
									<h4>
										<a href="${pageContext.request.contextPath}/products/product">Product
											Title Here </a>
									</h4>
									<ul class="fr__pro__prize">
										<li class="old__prize">$30.3</li>
										<li>$25.9</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Product -->
						<!-- Start Single Product -->
						<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<div class="category">
								<div class="ht__cat__thumb">
									<a href="${pageContext.request.contextPath}/products/product">
										<img src="${IMAGE_RELATIVE_PATH}/images/product/4.jpg"
										alt="product images">
									</a>
								</div>
								<div class="fr__hover__info">
									<ul class="product__action">
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist"><i
												class="icon-heart icons"></i></a></li>

										<li><a
											href="${pageContext.request.contextPath}/checkout/cart"><i
												class="icon-handbag icons"></i></a></li>

										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
								<div class="fr__product__inner">
									<h4>
										<a href="${pageContext.request.contextPath}/products/product">Product
											Title Here </a>
									</h4>
									<ul class="fr__pro__prize">
										<li class="old__prize">$30.3</li>
										<li>$25.9</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Product -->
					</div>
				</div>
			</div>
		</section>
		<!-- End Product Area -->
		<!-- Start Banner Area -->
		<div class="htc__brand__area bg__cat--4">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="ht__brand__inner">
							<ul class="brand__list owl-carousel clearfix">
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/1.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/2.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/3.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/4.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/5.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/5.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/1.png"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="${IMAGE_RELATIVE_PATH}/images/brand/2.png"
										alt="brand images"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Banner Area -->
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
								<h2 class="title__line--2">ABOUT US</h2>
								<div class="ft__details">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim</p>
									<div class="ft__social__link">
										<ul class="social__link">
											<li><a href="#"><i class="icon-social-twitter icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-instagram icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-facebook icons"></i></a></li>

											<li><a href="#"><i class="icon-social-google icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-linkedin icons"></i></a></li>
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
						<div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">Our service</h2>
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
								<h2 class="title__line--2">NEWSLETTER</h2>
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
			<!-- End Footer Widget -->
			<!-- Start Copyright Area -->
			<div class="htc__copyright bg__cat--5">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="copyright__inner">
								<p>
									Copyright© <a href="https://freethemescloud.com/">Free
										themes Cloud</a> 2018. All right reserved.
								</p>
								<a href="#"><img
									src="${IMAGE_RELATIVE_PATH}/images/others/shape/paypol.png"
									alt="payment images"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Copyright Area -->
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



</body>

</html>