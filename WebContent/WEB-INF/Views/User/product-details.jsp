<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>

<!-- Start Product Details Area -->
<section class="htc__product__details bg__white ptb--100">
	<!-- Start Product Details Top -->
	<div class="htc__product__details__top">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
					<div class="htc__product__details__tab__content">
						<!-- Start Product Big Images -->
						<div class="product__big__images"
							style="box-shadow: 1rem 1rem 1rem rgba(0, 0, 0, .175) !important">
							<div class="portfolio-full-image tab-content">
								<div role="tabpanel" class="tab-pane fade in active"
									id="img-tab-1">
									<img src="${PRODUCT.photoEntity.binaryPhoto1}" alt="full-image">
								</div>
								<div role="tabpanel" class="tab-pane fade" id="img-tab-2">
									<img src="${PRODUCT.photoEntity.binaryPhoto2}" alt="full-image">
								</div>
								<div role="tabpanel" class="tab-pane fade" id="img-tab-3">
									<img src="${PRODUCT.photoEntity.binaryPhoto3}" alt="full-image">
								</div>
							</div>
						</div>
						<!-- End Product Big Images -->
						<!-- Start Small images -->
						<ul class="product__small__images" role="tablist">
							<li role="presentation" class="pot-small-img active"><a
								href="#img-tab-1" role="tab" data-toggle="tab"> <img
									src="${PRODUCT.photoEntity.binaryPhoto1}" alt="small-image">
							</a></li>
							<li role="presentation" class="pot-small-img"><a
								href="#img-tab-2" role="tab" data-toggle="tab"> <img
									src="${PRODUCT.photoEntity.binaryPhoto2}" alt="small-image">
							</a></li>
							<li role="presentation" class="pot-small-img"><a
								href="#img-tab-3" role="tab" data-toggle="tab"> <img
									src="${PRODUCT.photoEntity.binaryPhoto3}" alt="small-image">
							</a></li>
						</ul>
						<!-- End Small images -->
					</div>
				</div>
				<div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
					<div class="ht__product__dtl">
						<h3 style="font-size: 25px; font-weight: 520;">${PRODUCT.productName}</h3>
						<h6>
							Model ID : <span>PROD${PRODUCT.productId}</span>
						</h6>
						<ul class="pro__prize">
							<li class="old__prize" style="color: red"><s>Rs.${PRODUCT.productOriginalPrice}</s></li>
							<li style="color: green">Rs.${PRODUCT.productOfferPrice}</li>
							<li style="color: orange; margin-left: 5px;">( inclusive of
								all taxes )</li>
						</ul>
						<div class="ht__pro__desc">
							<div class="sin__desc">
								<p>
									<span>Availability:</span><font color="green"> In Stock</font>
								</p>
							</div>
							<div class="sin__desc align--left">
								<p>
									<span>color:</span>
								</p>
								<ul class="pro__color">
									<li class="red"><a href="#" style="background-color: red">red</a></li>
									<li class="green"><a href="#">green</a></li>
									<li class="balck"><a href="#">balck</a></li>
									<li class="white"><a href="#"
										style="background-color: blue">White</a></li>
									<li class="white"><a href="#"
										style="background-color: navy;">White</a></li>
								</ul>
							</div>
							<div class="sin__desc align--left">
								<p>
									<span>size : </span>
								</p>
								<ul class="pro__prize" style="margin-left: 10px;">
									<li><div
											style="padding-left: 6px; padding-right: 5px; border: 1px solid; border-radius: 100%; width: 25px; margin-right: 5px;">S</div>
									</li>
									<li
										style="padding-left: 5px; padding-right: 5px; border: 1px solid; border-radius: 100%; width: 25px; margin-right: 5px;">M</li>
									<li
										style="padding-left: 6px; padding-right: 5px; border: 1px solid; border-radius: 100%; width: 25px; margin-right: 5px;">L</li>
									<li
										style="padding-left: 5px; padding-right: 5px; border: 1px solid; border-radius: 100%; width: 30px; margin-right: 5px;">XL</li>
								</ul>
							</div>
							<div class="sin__desc align--left">
								<p>
									<span>Categories : </span>${PRODUCT.productCategory}
								</p>
							</div>
							<div class="sin__desc align--left">
								<p>
									<span>Product tags:</span>
								</p>
								<ul class="pro__cat__list">
									<core:forEach var="tag" items="${PRODUCT.tagEntities}">
										<li><a href="#">${tag.tag},</a></li>
									</core:forEach>
								</ul>
							</div>
							<hr>
							<p>100% Original Products</p>
							<p>Free Delivery on order above Rs. 799</p>
							<p>Pay on delivery</p>
							<p>Easy 30 days returns and exchanges</p>
							<p>Try & Buy might be available</p>
							<div class="sin__desc product__share__link">
								<a class="btn btn-primary"
									onclick="addProductToWishList(${PRODUCT.productId})"
									style="background-color: #ff3e6c; border: 1px #ff3e6c; border-radius: 0px; width: 100px; height: 40px; padding: 10px; font-size: 20px"><i
									class='fa fa-heart'></i></a> <a class="btn btn-primary"
									style="background-color: #ff3e6c; border: 1px #ff3e6c; border-radius: 0px; width: 100px; height: 40px; padding: 10px; font-size: 20px"><i
									class='fa fa-shopping-cart'
									onclick="addProductToCart(${PRODUCT.productId})"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Details Top -->
</section>
<section class="htc__produc__decription bg__white">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<!-- Start List And Grid View -->
				<ul class="pro__details__tab" role="tablist">
					<li role="presentation" class="description active"><a
						href="#description" role="tab" data-toggle="tab">Description</a></li>
					<li role="presentation" class="userreview"><a
						href="#userreview" role="tab" data-toggle="tab">User Review</a></li>
					<li role="presentation" class="writereview"><a
						href="#writereview" role="tab" data-toggle="tab">Write a
							Review</a></li>
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
						<div class="pro__tab__content__inner" style="box-shadow: 1rem 1rem 1rem rgba(0, 0, 0, .175) !important;padding: 10px;">
							${PRODUCT.productDescription}</div>
					</div>
					<!-- End Single Content -->
					<!-- Start Single Content -->
					<div role="tabpanel" id="userreview"
						style="max-height: 500px; height: 500px; overflow-y: auto"
						class="pro__single__content tab-pane fade">
						<div class="pro__tab__content__inner">
							<div class="row-fluid">
								<core:forEach var="review" items="${PRODUCT.reviewEntities}">
									<div class="col-sm-12">
										<div class="panel panel-default"
											style="background-color: white; color: white; border: 1px solid black; border-radius: 0px; box-shadow: 1rem 1rem 1rem rgba(0, 0, 0, .175) !important">
											<!--/panel-heading-->
											<div class="panel-body" itemprop="reviewBody"
												style="color: black">
												<p style="color: black">${review.review}</p>
												<hr>
												<span itemprop="author" itemscope
													itemtype="http://schema.org/Person"> <span
													itemprop="name"><b>-- ${review.fullName}</b></span></span>
												<!--/author schema -->
												&nbsp;&nbsp;&nbsp; <span
													class="glyphicon glyphicon-calendar" aria-hidden="true"></span>

												<meta itemprop="datePublished" content="01-01-2016">
												${review.reviewCreationDate} <span class="pull-right">
													<span class="reviewRating" itemscope
													itemtype="http://schema.org/Rating">
														<meta itemprop="worstRating" content="1"> <span
														itemprop="ratingValue">5</span> / <span
														itemprop="bestRating"> stars</span>
												</span> <core:if test="${review.rating eq '1'}">
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													</core:if> <core:if test="${review.rating eq '2'}">
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													</core:if> <core:if test="${review.rating eq '3'}">
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													</core:if> <core:if test="${review.rating eq '4'}">
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													</core:if> <core:if test="${review.rating eq '5'}">
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
														<span class="glyphicon glyphicon-star" style="color: gold"
															aria-hidden="true"></span>
													</core:if>
											</div>
											<!--/panel-body-->
											<!--/panel-footer-->
										</div>
										<!--/panel-->
									</div>
								</core:forEach>
							</div>
						</div>
					</div>
					<!-- End Single Content -->
					<!-- Start Single Content -->
					<div role="tabpanel" id="writereview"
						class="pro__single__content tab-pane fade">
						<div class="pro__tab__content__inner">
							<div class="panel panel-default" style="box-shadow: 1rem 1rem 1rem rgba(0, 0, 0, .175) !important">
								<div class="panel-heading">Write a review here :</div>
								<div class="panel-body">
									<div class="form-group">
										<input type="text" class="form-control" name="fullName"
											id="fullname" placeholder="Your Full Name"
											value="${USER_ENTITY.userFirstName}">
									</div>
									<div class="form-group">
										<textarea class="form-control" id="userReview"
											placeholder="Write Review Here.."></textarea>
									</div>
									<div class="form-group">
										<span>Rate here on a scale of 5 : </span> <span><i
											onclick="rating(1)" class="fa fa-star-o rating"
											aria-hidden="true" style="font-size: 20px; color: gold"></i></span>
										<span><i onclick="rating(2)"
											class="fa fa-star-o rating" aria-hidden="true"
											style="font-size: 20px; color: gold"></i></span> <span><i
											onclick="rating(3)" class="fa fa-star-o rating"
											aria-hidden="true" style="font-size: 20px; color: gold"></i></span>
										<span><i onclick="rating(4)"
											class="fa fa-star-o rating" aria-hidden="true"
											style="font-size: 20px; color: gold"></i></i></span> <span><i
											onclick="rating(5)" class="fa fa-star-o rating"
											aria-hidden="true" style="font-size: 20px; color: gold"></i></span>
									</div>
									<button class="btn btn-primary"
										style="width: 120px; border-radius: 0px; float: right;"
										id="reveiw-sbmt">Submit</button>
								</div>
							</div>

						</div>
					</div>
					<!-- End Single Content -->
				</div>
			</div>
		</div>
	</div>
</section>
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
			<div class="product__wrap clearfix" id="new-arraival-product">
				<!-- Start Single Product -->
			</div>
		</div>
	</div>
</section>
<script>
starSelected = 0;
$(document).ready(function(){
	getAllProducts();
	
	$("#reveiw-sbmt").on({
		"click": addUserReview
	});
});

var addUserReview = async function(){
		var param = "productId="+'${PRODUCT.productId}'+"&"+"review="+$("#userReview").val()+"&"+"uqi="+"${UNIQUE_ID}"+"&"+"rating="+starSelected+"&"+"fullName="+$("#fullname").val();
		var response = await serviceCall("${pageContext.request.contextPath}/product/review/addReview", "POST", param);
		if(response == "true"){
			location.reload();
		}	
}

var rating = function(starNumber){
	starSelected = starNumber;
	var allStarElements = document.getElementsByClassName("rating");
	
	for(var i =0; i<allStarElements.length; i++){
		var element = allStarElements[i];
		element.classList.remove("fa-star");
		element.classList.add("fa-star-o");
	}
	
	for(var i =0; i<starNumber; i++){
		var element = allStarElements[i];
		element.classList.remove("fa-star-o");
		element.classList.add("fa-star");
	}
	
	console.log(starSelected);
}


var getAllProducts = async function(){
	var param = "uqi="+"${UNIQUE_ID}";
	var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	response = JSON.parse(response);
	response = response.filter(e => e.productIsActive == '1' && e.productId != '${PRODUCT.productId}');
	appendNewArrivals(response);
}

var appendNewArrivals = function(products){
	$('#new-arraival-product').empty();
	for (var product = 0; product < products.length; product++)
		products[product].offerPercentage = 100-Math.round((products[product].productOfferPrice/products[product].productOriginalPrice)*100);
	
	var soretdProducts = products.sort((a, b) => b.offerPercentage - a.offerPercentage);
	
	
	var productDiv = "";
	for(var prod = 0,count=4; prod < soretdProducts.length && count>0; prod++,count-- ){
		productDiv = productDiv+"<div class='col-md-3 col-sm-4' style='margin-top:5px;'>"+
			    "<div class='product-grid'>"+
		        "<div class='product-image'>"+
		            "<a href='${pageContext.request.contextPath}/product?prodId="+soretdProducts[prod].productId+"'>"+
		                "<img class='pic-1' src='"+soretdProducts[prod].photoEntity.binaryPhoto1+"'>"+
		                "<img class='pic-2' src='"+soretdProducts[prod].photoEntity.binaryPhoto2+"'>"+
		            "</a>"+
		            "<ul class='social'>"+
		                "<li><a onclick='addProductToWishList("+soretdProducts[prod].productId+")' data-tip='Add to Wishlist'><i class='fa fa-shopping-bag'></i></a></li>"+
		                "<li><a onclick='addProductToCart("+soretdProducts[prod].productId+")' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>"+
		            "</ul>"+
		            "<span class='product-new-label'>Sale</span>"+
		            "<span class='product-discount-label'>"+soretdProducts[prod].offerPercentage+"%</span>"+
		        "</div>"+
		        "<div class='product-content' style='margin-bottom:15px'>"+
		            "<h3 class='title'><a href='#'>"+soretdProducts[prod].productName+"</a></h3>"+
		            "<div class='price'>"+soretdProducts[prod].productOfferPrice+
		                "<span>"+soretdProducts[prod].productOriginalPrice+"</span>"+
		            "</div>"+
		        "</div>"+
		    "</div>"+
		"</div>";
	}
	
	$('#new-arraival-product').append(productDiv);
}

</script>