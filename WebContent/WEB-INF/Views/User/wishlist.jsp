<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<div class="cart-main-area ptb--100 bg__white"
	style="background-color: white">
	<div class="container" style="margin-top: -70px">
		<span id="count"
			style="font-size: 18px; padding-bottom: 15px; font-weight: 500; color: #282c3f;">My
			Wishlist : <font color="green" id="wishlist_size"></font>
		</span>
	</div>
	<div class="container" style="margin-top: 20px;">
		<div class="row" id="empty-cart-div">
			<div class="col-sm-3"></div>
			<div class="col-sm-5"
				style="border: 1px solid aquawhite; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin: 20px;">
				<img alt=""
					src="https://www.capitalpowerbackup.com/resources/assets/imgs/no_result.gif">
			</div>
			<div class="col-sm-2"></div>
		</div>
		<div class="row" id="products-wishlist"></div>
	</div>
</div>
<script>
$(document).ready(function(){
	$("#empty-cart-div").hide();
	$("#count").hide();
	getWishlist();
});

var getWishlist = async function(){
	var param = "userId="+$("#userIdG").val();
	var wishlist = await serviceCall("${pageContext.request.contextPath}/wishlist/getAllWishlistedProducts","POST",param);
	console.log(JSON.parse(wishlist));
	wishlist = JSON.parse(wishlist);
	if(wishlist.length == 0){
		$("#products-wishlist").hide();
		$("#empty-cart-div").show();
		$("#count").hide();
	}else{
		$("#wishlist_size").html(wishlist.length);
		$("#count").show();
		$("#empty-cart-div").hide();
		appendWishlist(wishlist);
	}
}

var removeFromWishlist = async function(productId){
	var param = "productId="+productId+"&userId="+$("#userIdG").val();
	var response = await serviceCall("${pageContext.request.contextPath}/wishlist/removeProduct","POST",param);
	getWishlist();
}

var appendWishlist = function(soretdProducts){
	$("#products-wishlist").empty();
	var productDiv = "";
	for (var prod = 0; prod < soretdProducts.length; prod++) {
		 productDiv = productDiv+"<div class='col-md-3 col-sm-4' style='margin-top:5px;'>"+
		    "<div class='product-grid'>"+
	        "<div class='product-image'>"+
	            "<a href='${pageContext.request.contextPath}/product?prodId="+soretdProducts[prod].productId+"'>"+
	                "<img class='pic-1' src='"+soretdProducts[prod].binaryPhoto1+"'>"+
	                "<img class='pic-2' src='"+soretdProducts[prod].binaryPhoto2+"'>"+
	            "</a>"+
	            "<ul class='social'>"+
	                "<li><a onclick='removeFromWishlist("+soretdProducts[prod].productId+")' data-tip='Remove to Wishlist'><i class='fa fa-trash'></i></a></li>"+
	                "<li><a href='#' data-tip='Add to Cart'><i class='fa fa-shopping-cart'></i></a></li>"+
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
	$("#products-wishlist").append(productDiv);
}



</script>