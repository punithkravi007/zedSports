<%@ taglib prefix="core" uri="coreTags"%>
<input type="hidden" value="${ACTIVE_PRODUCTS}" id="productsG">
<div class="slider__container slider--one bg__cat--3">
	<div class="slide__container slider__activation__wrap owl-carousel">
		<!-- Start Single Slide -->
		<div class="single__slide animation__style01 slider__fixed--height">
			<div class="container">
				<div class="row align-items__center">
					<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
						<div class="slide">
							<div class="slider__inner">
								<h2>collection 2020</h2>
								<h1>Sports Wear For Mens</h1>
								<div class="cr__btn">
									<a href="product-grid.html">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
						<div class="slide__thumb">
							<img
								src="https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/10913182/2019/12/5/dc169b41-2f12-49d4-bfd3-00e9bd8acb3b1575528263152-HRX-by-Hrithik-Roshan-Men-Track-Pants-4601575528257861-1.jpg"
								alt="slider images" height="600px">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Single Slide -->
		<!-- Start Single Slide -->
		<div class="single__slide animation__style01 slider__fixed--height"
			style="height: 650px;">
			<div class="container">
				<div class="row align-items__center">
					<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
						<div class="slide">
							<div class="slider__inner">
								<h2>collection 2020</h2>
								<h1>Sports Wear For Women</h1>
								<div class="cr__btn">
									<a href="cart.html">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
						<div class="slide__thumb">
							<img
								src="https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/11012098/2020/2/26/b1273914-c1c7-428f-81b2-22974f29e05f1582692375588-HRX-by-Hrithik-Roshan-Women-Tshirts-9721582692374043-1.jpg"
								alt="slider images" height="550px">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Single Slide -->
	</div>
</div>
<!-- Start Slider Area -->
<!-- Start Category Area -->
<section class="htc__category__area ptb--100">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="section__title--2 text-center">
					<h2 class="title__line">New Arrivals</h2>
					<p>But I must explain to you how all this mistaken idea</p>
				</div>
			</div>
		</div>
		<div class="htc__product__container">
			<div class="row" id="new-arrivals"></div>
		</div>
	</div>
</section>
<!-- End Category Area -->
<!-- Start Prize Good Area -->
<section class="htc__good__sale bg__cat--3">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
				<div class="fr__prize__inner">
					<h2>ZED Presents You - Absolutely. Positively. Perfect.</h2>
					<a class="fr__btn" href="#">Read More</a>
				</div>
			</div>
			<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
				<div class="prize__inner">
					<div class="prize__thumb">
						<img
							src="https://www.flipflopdesign.co.uk/wp-content/uploads/2018/06/zed_logo_design_black-1000px.jpg"
							alt="banner images" height="400px;" width="630px;"
							style="border-bottom-left-radius: 112px; border-top-right-radius: 112px;">
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Prize Good Area -->
<!-- Start Product Area -->
<section class="ftr__product__area ptb--100">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="section__title--2 text-center">
					<h2 class="title__line">Best Seller</h2>
					<p>But I must explain to you how all this mistaken idea</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="product__wrap clearfix" id="best-seller-div"></div>
		</div>
	</div>
</section>
<!-- End Product Area -->
<script>
$(document).ready(function() {
	getAllProducts();
});

var getAllProducts = async function() {
	 var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	 response = JSON.parse(response);
	 response = getAllActiveProducts(response);
	 appendBestSeller(response);
	 appendNewArrivals(response);
}

var getAllActiveProducts = function(products) {
	 return products.filter(e => e.productIsActive == '1');
}


var appendNewArrivals = function(soretdProducts) {
	$("#new-arrivals").empty();

	var productDiv = "<div class='product__list clearfix mt--30'>";
		for (var prod = 0, count = 8; prod < soretdProducts.length && count > 0; prod++, count--) {
			productDiv = productDiv + "<div class='col-md-3 col-sm-4' style='margin-top:5px;'>" +
					"<div class='product-grid'>" +
				    "<div class='product-image'>" +
				        "<a href='${pageContext.request.contextPath}/product?prodId=" + soretdProducts[prod].productId + "'>" +
				            "<img class='pic-1' src='" + soretdProducts[prod].photoEntity.binaryPhoto1 + "'>" +
				            "<img class='pic-2' src='" + soretdProducts[prod].photoEntity.binaryPhoto2 + "'>" +
				            "</div>" +
				    "<div class='product-content' style='margin-bottom:15px'>" +
				        "<h3 class='title'><a href='#'>" + soretdProducts[prod].productName + "</a></h3>" +
				        "<div class='price'>" + soretdProducts[prod].productOfferPrice +
				            "<span>" + soretdProducts[prod].productOriginalPrice + "</span>" +
				            "<div class='row'>"+
				                "<div class='col-sm-6'><a class='btn btn-success' style='border-radius:0px;width:40px;' onclick='addProductToWishList("+soretdProducts[prod].productId+")' data-tip='Add to Wishlist'><i class='fa fa-heart'></i></a></div>"+
				                "<div class='col-sm-6'><a class='btn btn-default' style='border-radius:0px;width:40px;background-color:#ef5777;color:white;font-size:16px;' onclick='addProductToCart("+soretdProducts[prod].productId+")' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></div>"+
				                "</div>"+
				            "</div>" +
				        "</div>" +
				    "</div>" +
				"</div>";
		 }
	
		 $("#new-arrivals").append(productDiv + "</div>");
	}

	var appendBestSeller = function(products) {
		 $('#best-seller-div').empty();
		 for (var product = 0; product < products.length; product++)
		  products[product].offerPercentage = 100 - Math.round((products[product].productOfferPrice / products[product].productOriginalPrice) * 100);
	
		 var soretdProducts = products.sort((a, b) => b.offerPercentage - a.offerPercentage);
	
		 var productDiv = "";
		 for (var prod = 0, count = 8; prod < soretdProducts.length && count > 0; prod++, count--) {
			  productDiv = productDiv + "<div class='col-md-3 col-sm-4' style='margin-top:5px;'>" +
				  "<div class='product-grid'>" +
				    "<div class='product-image'>" +
				        "<a href='${pageContext.request.contextPath}/product?prodId=" + soretdProducts[prod].productId + "'>" +
				            "<img class='pic-1' src='" + soretdProducts[prod].photoEntity.binaryPhoto1 + "'>" +
				            "<img class='pic-2' src='" + soretdProducts[prod].photoEntity.binaryPhoto2 + "'>" +
				            "</a>" +
				        "<span class='product-new-label'>Sale</span>" +
				        "<span class='product-discount-label'>" + soretdProducts[prod].offerPercentage + "%</span>" +
				        "</div>" +
				    "<div class='product-content' style='margin-bottom:15px'>" +
				        "<h3 class='title'><a href='#'>" + soretdProducts[prod].productName + "</a></h3>" +
				        "<div class='price'>" + soretdProducts[prod].productOfferPrice +
				            "<span>" + soretdProducts[prod].productOriginalPrice + "</span>" +
				            "<div class='row'>"+
				                "<div class='col-sm-6'><a class='btn btn-success' style='border-radius:0px;width:40px;' onclick='addProductToWishList("+soretdProducts[prod].productId+")' data-tip='Add to Wishlist'><i class='fa fa-heart'></i></a></div>"+
				                "<div class='col-sm-6'><a class='btn btn-default' style='border-radius:0px;width:40px;background-color:#ef5777;color:white;font-size:16px;' onclick='addProductToCart("+soretdProducts[prod].productId+")' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></div>"+
				                "</div>"+
				            "</div>" +
				        "</div>" +
				    "</div>" +
				"</div>";
		 }
	
		 $('#best-seller-div').append(productDiv);
	}

</script>
