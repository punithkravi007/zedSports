<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<input type="hidden" value="${SELECTED_GENDER}" id="selGen">
<input type="hidden" value="${SELECTED_CATEGORY}" id="selCat">
<section class="htc__product__grid bg__white ptb--100"
	style="margin-top: -70px">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="htc-grid-range">
					<h4 class="title__line--4">Sort</h4>
					<div class="content-shopby">
						<div class="price_filter s-filter clear">
							<form action="#" method="GET">
								<div id="slider-range"></div>
								<div class="slider__range--output">
									<div class="price__output--wrap">
										<div class="price--output">
											<span>Price :</span><input type="text" id="amount" readonly>
										</div>
										<div class="price--filter">
											<a id="price-range-filter">Filter</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-12">
						<select class="ht__select"
							style="margin-top: 10px; padding-left: 65px" id="sort-by-price">
							<option>-- Sort by Price --</option>
							<option value="HL">High to Low</option>
							<option value="LH">Low to High</option>
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-12">
						<select class="ht__select"
							style="margin-top: 10px; padding-left: 65px"
							id="product-grid-sort-tag">
						</select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-12">
						<select class="ht__select"
							style="margin-top: 10px; padding-left: 65px" id="filter-by-offer">
							<option value="-1">-- Sort by Offer --</option>
							<option value="10">10% and above</option>
							<option value="20">20% and above</option>
							<option value="30">30% and above</option>
							<option value="40">40% and above</option>
							<option value="50">50% and above</option>
							<option value="60">60% and above</option>
							<option value="70">70% and above</option>
							<option value="80">80% and above</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="row" id="products-grid">
					<core:forEach var="product" items="${PRODUCT_ENTITY}">
						<div class='col-md-3 col-sm-4' style='margin-top: 5px;'>
							<div class='product-grid'>
								<div class='product-image'>
									<a
										href='${pageContext.request.contextPath}/product?prodId=${product.productId}'>
										<img class='pic-1' src='${product.photoEntity.binaryPhoto1}'>
										<img class='pic-2' src='${product.photoEntity.binaryPhoto2}'>
									</a>
									<ul class='social'>
										<li><a
											onclick='addProductToWishList(${product.productId})'
											data-tip='Add to Wishlist'><i class='fa fa-heart'></i></a></li>
										<li><a onclick='addProductToCart(${product.productId})'
											data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>
									</ul>
								</div>
								<div class='product-content' style='margin-bottom: 15px'>
									<h3 class='title'>
										<a href='#'>${product.productName}</a>
									</h3>
									<div class='price'>
										${product.productOfferPrice}<span>${product.productOriginalPrice}</span>
									</div>
								</div>
							</div>
						</div>
					</core:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
$(document).ready(function() {
	var param = "uqi="+"${UNIQUE_ID}";
	dropdownService("#product-grid-sort-tag","${pageContext.request.contextPath}/products/getTags", "POST", param, "TAGS");

	 $("#sort-by-price").on({
	  "change": sortOnPrice
	 });

	 $("#product-grid-sort-tag").on({
	  "change": sortOnTag
	 });

	 $("#filter-by-offer").on({
	  "change": filterByOffer
	 });

	 $("#price-range-filter").on({
	  "click": filterByPriceRange
	 });
	 
	});

	var sortOnPrice = async function() {
	 var selectedOption = $("#sort-by-price").children("option:selected").val();
	 var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	 response = JSON.parse(response);
	 
	 var selectedCategory = "${SELECTED_CATEGORY}";
	 if(selectedCategory.length > 0){
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val() && e.productCategory == $("#selCat").val());
	 }else{
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val());
	 }
	 response = selectedOption == 'HL' ? response.sort((a, b) => b.productOfferPrice - a.productOfferPrice) : response.sort((a, b) => a.productOfferPrice - b.productOfferPrice);
	 appendProductsToGrid(response);
	}

	var sortOnTag = async function() {
	 var selectedOption = $("#product-grid-sort-tag").children("option:selected").val();
	 var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	 response = JSON.parse(response);
	 
	 var selectedCategory = "${SELECTED_CATEGORY}";
	 if(selectedCategory.length > 0){
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val() && e.productCategory == $("#selCat").val());
	 }else{
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val());
	 }
	 var products = [];
	 for (var product = 0; product < response.length; product++) {
	  for (var tag = 0; tag < response[product].tagEntities.length; tag++) {
	   if (response[product].tagEntities[tag].tagId == selectedOption) {
	    products.push(response[product]);
	   }
	  }
	 }
	 appendProductsToGrid(products);
	}


	var filterByOffer = async function() {
	 var selectedOption = $("#filter-by-offer").children("option:selected").val();
	 var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	 response = JSON.parse(response);
	 for (var product = 0; product < response.length; product++)
	  response[product].offerPercentage = 100 - Math.round((response[product].productOfferPrice / response[product].productOriginalPrice) * 100);
	 var selectedCategory = "${SELECTED_CATEGORY}";
	 if(selectedCategory.length > 0){
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val() && e.productCategory == $("#selCat").val() && e.offerPercentage >= selectedOption);
	 }else{
		 response = response.filter(e => e.productIsActive == '1' && e.productGender.toLowerCase().charAt(0) == $("#selGen").val() && e.offerPercentage >= selectedOption);
	 }
	 appendProductsToGrid(response);
	}

	var filterByPriceRange = async function() {
	 var amount = $("#amount").val();
	 var startAmount = amount.split("-")[0].split(".")[1];
	 var endAmount = amount.split("-")[1].split(".")[1];
	 var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
	 response = JSON.parse(response);
	 
	 var selectedCategory = "${SELECTED_CATEGORY}";
	 if(selectedCategory.length > 0){
		 response = response.filter(e => e.productIsActive == '1' && parseInt(e.productOfferPrice, 10) >= parseInt(startAmount, 10) && parseInt(e.productOfferPrice, 10) <= parseInt(endAmount, 10) && e.productGender.toLowerCase().charAt(0) == $("#selGen").val() && e.productCategory == $("#selCat").val());
	 }else{
		 response = response.filter(e => e.productIsActive == '1' && parseInt(e.productOfferPrice, 10) >= parseInt(startAmount, 10) && parseInt(e.productOfferPrice, 10) <= parseInt(endAmount, 10) && e.productGender.toLowerCase().charAt(0) == $("#selGen").val());
	 }
	 
	 appendProductsToGrid(response);
	}

	var appendProductsToGrid = function(soretdProducts) {
	 $("#products-grid").empty();
	 var productDiv = "";
	 for (var prod = 0; prod < soretdProducts.length; prod++) {
		 productDiv = productDiv+"<div class='col-md-3 col-sm-4' style='margin-top:5px;'>"+
		    "<div class='product-grid'>"+
	        "<div class='product-image'>"+
	            "<a href='${pageContext.request.contextPath}/product?prodId="+soretdProducts[prod].productId+"'>"+
	                "<img class='pic-1' src='"+soretdProducts[prod].photoEntity.binaryPhoto1+"'>"+
	                "<img class='pic-2' src='"+soretdProducts[prod].photoEntity.binaryPhoto2+"'>"+
	            "</a>"+
	            "<ul class='social'>"+
		            "<li><a onclick='addProductToWishList("+soretdProducts[prod].productId+")' data-tip='Add to Wishlist'><i class='fa fa-heart'></i></a></li>"+
	                "<li><a onclick='addProductToCart("+soretdProducts[prod].productId+")' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>"+
	            "</ul>"+
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

	 $("#products-grid").append(productDiv);
	}
   
   
</script>