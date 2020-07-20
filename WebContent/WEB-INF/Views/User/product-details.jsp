<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
						<h2>${PRODUCT.productName}</h2>
						<h6>
							Model: <span>PROD${PRODUCT.productId}</span>
						</h6>
						<ul class="pro__prize">
							<li class="old__prize"><s>Rs.${PRODUCT.productOriginalPrice}</s></li>
							<li>Rs.${PRODUCT.productOfferPrice}</li>
						</ul>
						<p><b style="color: black">Description :</b></p>
						<p class="pro__info"><pre style="background-color: white;border: 0px;font-family: 'Old Standard TT', serif;padding: 0px" >${PRODUCT.productDescription}</pre></p>
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
									<span>size</span>
								</p>
								<select class="select__size" style="color: black;width: 50px">
									<option>S</option>
									<option>M</option>
									<option>L</option>
									<option>XL</option>
								</select>
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

							<div class="sin__desc product__share__link">
								<a class="btn btn-primary"
									style="background-color: #ff3e6c; border: 1px #ff3e6c; border-radius: 0px; width: 100px; height: 40px; padding: 10px;font-size: 20px"><i
									class='fa fa-shopping-bag'></i></a> <a class="btn btn-primary"
									style="background-color: #ff3e6c; border: 1px #ff3e6c; border-radius: 0px; width: 100px; height: 40px; padding: 10px;font-size: 20px"><i
									class='fa fa-shopping-cart'></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Details Top -->
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
$(document).ready(function(){
	getAllProducts();
});

var getAllProducts = async function(){
	var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts","GET","");
	response = JSON.parse(response);
	response = response.filter(e => e.productIsActive == '1');
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
		                "<li><a href='#' data-tip='Add to Wishlist'><i class='fa fa-shopping-bag'></i></a></li>"+
		                "<li><a href='#' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>"+
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