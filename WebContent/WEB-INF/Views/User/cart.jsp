<%@ taglib prefix="core" uri="coreTags"%>
<section class="htc__product__grid bg__white ptb--100"
	style="margin-top: -50px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-9" id="cart-div">
				<div class="row" id="empty-cart-div">
					<div class="col-sm-5"></div>
					<div class="col-sm-5"
						style="border: 1px solid aquawhite; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin: 20px;">
						<img alt="" src="https://candleroses.com/images/Cart-empty.gif">
					</div>
					<div class="col-sm-2"></div>
				</div>
			</div>
			<div class="col-sm-9" id="user-details-div">
				<div class="row form-group product-chooser">
					<div class="row" style="margin: 10px">
						<div class="col-sm-12">
							<center>
								<p
									style="font-weight: bold; color: black; text-transform: uppercase;">Please
									Check the Added User Details are correct before proceeding /
									Enter The Valid Details and Proceed Further</p>
							</center>
							<hr>
						</div>
						<div class="col-sm-3"></div>
					</div>
					<div class="row" style="margin: 10px">
						<div class="col-sm-12">
							<div class="panel panel-default" style="border-radius: 0px;"
								id="user-basic-details">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="firstName">First Name</label> <input type="text"
													class="form-control" id="firstName"
													value="${USER_ENTITY.userFirstName}"
													placeholder="Enter Your First Name">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="lastName">Last Name</label> <input type="text"
													class="form-control" id="lastName"
													value="${USER_ENTITY.userLastName}"
													placeholder="Enter Your Last Name">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="email">Email <font
													style="font-size: 12px" color="red">(Order Details
														and Shipping Status will be sent to this Email)</font></label> <input
													type="text" class="form-control" id="email"
													value="${USER_ENTITY.userEmail }"
													placeholder="Enter Your Email">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label for="gender">Gender</label> <select
													class="form-control" id="gender">
													<core:if test="${not empty USER_ENTITY.userGender}">
														<option value="${USER_ENTITY.userGender}"
															selected="selected">${USER_ENTITY.userGender}</option>
													</core:if>
													<option>--SELECT--</option>
													<option value="Male">MALE</option>
													<option value="Female">Female</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<core:if test="${empty USER_ENTITY.addressEntity}">
								<div class="panel panel-default"
									style="margin-top: 5px; border-radius: 0px;"
									id="user-new-address-details">
									<div class="panel-heading">You don't have any Address to
										select, Add new Address below.</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label for="address1">Address Line-1 :</label> <input
														type="text" class="form-control"
														style="border-radius: 0px;"
														placeholder="Your Address Line-1" id="address1"
														name="address_1">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label for="address2">Address Line-2 :</label> <input
														type="text" class="form-control"
														style="border-radius: 0px;"
														placeholder="Your Address Line-2" id="address2"
														name="address_2">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label for="city">City :</label> <input type="text"
														class="form-control" style="border-radius: 0px;"
														placeholder="Your City" id="city" name="city">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label for="state">State :</label> <input type="text"
														class="form-control" style="border-radius: 0px;"
														placeholder="Your State" id="state" name="state">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label for="country">Country :</label> <input type="text"
														class="form-control" style="border-radius: 0px;"
														placeholder="Your Country" id="country" name="country">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label for="pincode">Pincode :</label> <input type="text"
														class="form-control" style="border-radius: 0px;"
														placeholder="Your Pincode" id="pincode" name="pincode">
												</div>
											</div>
										</div>
									</div>
								</div>
							</core:if>
						</div>
					</div>
					<div class="row" style="margin-left: 30px; margin-right: 30px;">
						<core:if test="${not empty USER_ENTITY.addressEntity}">
							<div class="panel panel-default" style="border-radius: 0px">
								<div class="panel-heading" style="text-transform: uppercase;">Select
									Delivery Address (Click on Address to Select)</div>
								<div class="panel-body">
									<core:forEach var="address"
										items="${USER_ENTITY.addressEntity}" varStatus="loop">
										<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4"
											style="margin-top: 5px;">
											<div class="product-chooser-item"
												onclick='selectAddress("${address.id}")'>
												<div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
													<span class="title">Address-${loop.count} </span> <span
														class="description">${address.addressOne}
														${address.addressTwo} ${address.city} ${address.state}
														${address.country}-${address.pincode}</span> <input
														id="address-id-${address.id}" type="radio" name="product"
														value="mobile_desktop">
												</div>
												<div class="clear"></div>
											</div>
										</div>
									</core:forEach>
								</div>
							</div>
						</core:if>
					</div>
				</div>
			</div>
			<div class="col-sm-3 cart-product-price">
				<p style="font-weight: bold; color: black">Price Details :</p>
				<hr>
				<div class="row">
					<div class="col-sm-8" style="float: left;">Bag Total</div>
					<div class="col-sm-4">
						<p style="float: right;">
							<svg width="8" height="10" viewBox="0 0 8 10"
								class="priceDetail-base-icon">
								<path fill-rule="nonzero"
									d="M1.951 5.845l3.91 3.602-.902.376L.7 5.845l.452-.711c.186-.005.392-.02.615-.048a5.2 5.2 0 0 0 1.347-.356c.218-.09.42-.201.604-.331.185-.13.345-.281.479-.455.134-.173.231-.371.29-.594H.865v-.841h3.644a1.759 1.759 0 0 0-.284-.667 1.826 1.826 0 0 0-.567-.512 2.964 2.964 0 0 0-.865-.332A5.22 5.22 0 0 0 1.63.882H.864V0h6.2v.882H4.18c.173.077.33.174.468.29a2.09 2.09 0 0 1 .612.848c.064.162.11.325.137.489h1.668v.84H5.383a2.38 2.38 0 0 1-.43 1.03 3.095 3.095 0 0 1-.8.748 4.076 4.076 0 0 1-1.043.482 6.15 6.15 0 0 1-1.159.236z"></path></svg>
							<span id="bag-total"></span>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8" style="float: left;">Offer Price</div>
					<div class="col-sm-4">
						<p style="float: right; color: green">
							-
							<svg width="8" height="10" viewBox="0 0 8 10"
								class="priceDetail-base-icon">
								<path fill-rule="nonzero"
									d="M1.951 5.845l3.91 3.602-.902.376L.7 5.845l.452-.711c.186-.005.392-.02.615-.048a5.2 5.2 0 0 0 1.347-.356c.218-.09.42-.201.604-.331.185-.13.345-.281.479-.455.134-.173.231-.371.29-.594H.865v-.841h3.644a1.759 1.759 0 0 0-.284-.667 1.826 1.826 0 0 0-.567-.512 2.964 2.964 0 0 0-.865-.332A5.22 5.22 0 0 0 1.63.882H.864V0h6.2v.882H4.18c.173.077.33.174.468.29a2.09 2.09 0 0 1 .612.848c.064.162.11.325.137.489h1.668v.84H5.383a2.38 2.38 0 0 1-.43 1.03 3.095 3.095 0 0 1-.8.748 4.076 4.076 0 0 1-1.043.482 6.15 6.15 0 0 1-1.159.236z"></path></svg>
							<span id="offer-total"></span>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8" style="float: left;">Order Total</div>
					<div class="col-sm-4">
						<p style="float: right;">
							<svg width="8" height="10" viewBox="0 0 8 10"
								class="priceDetail-base-icon">
								<path fill-rule="nonzero"
									d="M1.951 5.845l3.91 3.602-.902.376L.7 5.845l.452-.711c.186-.005.392-.02.615-.048a5.2 5.2 0 0 0 1.347-.356c.218-.09.42-.201.604-.331.185-.13.345-.281.479-.455.134-.173.231-.371.29-.594H.865v-.841h3.644a1.759 1.759 0 0 0-.284-.667 1.826 1.826 0 0 0-.567-.512 2.964 2.964 0 0 0-.865-.332A5.22 5.22 0 0 0 1.63.882H.864V0h6.2v.882H4.18c.173.077.33.174.468.29a2.09 2.09 0 0 1 .612.848c.064.162.11.325.137.489h1.668v.84H5.383a2.38 2.38 0 0 1-.43 1.03 3.095 3.095 0 0 1-.8.748 4.076 4.076 0 0 1-1.043.482 6.15 6.15 0 0 1-1.159.236z"></path></svg>
							<span id="order-total"></span>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8" style="float: left;">Delivery Charges</div>
					<div class="col-sm-4">
						<p style="float: right; color: green">
							<svg width="8" height="10" viewBox="0 0 8 10"
								class="priceDetail-base-icon">
								<path fill-rule="nonzero"
									d="M1.951 5.845l3.91 3.602-.902.376L.7 5.845l.452-.711c.186-.005.392-.02.615-.048a5.2 5.2 0 0 0 1.347-.356c.218-.09.42-.201.604-.331.185-.13.345-.281.479-.455.134-.173.231-.371.29-.594H.865v-.841h3.644a1.759 1.759 0 0 0-.284-.667 1.826 1.826 0 0 0-.567-.512 2.964 2.964 0 0 0-.865-.332A5.22 5.22 0 0 0 1.63.882H.864V0h6.2v.882H4.18c.173.077.33.174.468.29a2.09 2.09 0 0 1 .612.848c.064.162.11.325.137.489h1.668v.84H5.383a2.38 2.38 0 0 1-.43 1.03 3.095 3.095 0 0 1-.8.748 4.076 4.076 0 0 1-1.043.482 6.15 6.15 0 0 1-1.159.236z"></path></svg>
							<span id="delivery-charge-total"></span>
						</p>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-sm-8" style="float: left; font-weight: bold;">Total</div>
					<div class="col-sm-4">
						<p style="float: right; color:">
							<svg width="8" height="10" viewBox="0 0 8 10"
								class="priceDetail-base-icon">
								<path fill-rule="nonzero"
									d="M1.951 5.845l3.91 3.602-.902.376L.7 5.845l.452-.711c.186-.005.392-.02.615-.048a5.2 5.2 0 0 0 1.347-.356c.218-.09.42-.201.604-.331.185-.13.345-.281.479-.455.134-.173.231-.371.29-.594H.865v-.841h3.644a1.759 1.759 0 0 0-.284-.667 1.826 1.826 0 0 0-.567-.512 2.964 2.964 0 0 0-.865-.332A5.22 5.22 0 0 0 1.63.882H.864V0h6.2v.882H4.18c.173.077.33.174.468.29a2.09 2.09 0 0 1 .612.848c.064.162.11.325.137.489h1.668v.84H5.383a2.38 2.38 0 0 1-.43 1.03 3.095 3.095 0 0 1-.8.748 4.076 4.076 0 0 1-1.043.482 6.15 6.15 0 0 1-1.159.236z"></path></svg>
							<span id="cart-total"></span>
						</p>
					</div>
				</div>
				<div class="row" style="margin-top: 2px; padding: 20px;">
					<a id="step-2-forward-id" class="btn btn-default"
						style="background-color: lightgreen; width: 255px; border-radius: 0px; color: white">Select
						Delivery Details&nbsp;&nbsp;&nbsp;&nbsp; <i
						class="fa fa-arrow-right" aria-hidden="true"></i>
					</a> <a id="order-checkout" class="btn btn-default"
						style="background-color: #428bca; width: 255px; border-radius: 0px; color: white">Confirm
						& Proceed to Checkout <i class="fa fa-arrow-right"
						aria-hidden="true"></i>
					</a> <a id="step-2-backward-id" class="btn btn-default"
						style="background-color: orange; width: 255px; border-radius: 0px; color: white; margin-top: 5px;"><i
						class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;
						Go Back </a> <a id="cancel-checkout" class="btn btn-danger"
						href="${pageContext.request.contextPath}/"
						style="width: 255px; border-radius: 0px; color: white; margin-top: 5px;">Cancel<i
						class="fa fa-wrong" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</div>
</section>
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="fa fa-check" aria-hidden="true"></i>
				</div>
				<h4 class="modal-title w-100">Awesome!</h4>
			</div>
			<div class="modal-body">
				<p class="text-center">
					Your booking has been confirmed with Booking Id : <b id="bookingId"></b>
					Check your email for detials.
				</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal"
					id="success-checkout" style="width: 250px; border-radius: 0px;">OK</button>
			</div>
		</div>
	</div>
</div>
<script>
var addressIdG;
var isDeliveryAddressExistG;
$(document).ready(function(){
	
	$('div.product-chooser').not('.disabled').find('div.product-chooser-item').on('click', function(){
		$(this).parent().parent().find('div.product-chooser-item').removeClass('selected');
		$(this).addClass('selected');
		$(this).find('input[type="radio"]').prop("checked", true);
	});

	isDeliveryAddressExistG = '${USER_ENTITY.addressEntity}'.length > 3 ? true : false;
	getCartProducts();
	
	$("#step-2-backward-id").hide();
	$("#user-details-div").hide();
	$("#address-div").hide();
	$("#cart-div").show();
	$("#order-checkout").hide();
	$(".cart-product-price").hide();
	$("#empty-cart-div").hide();
	
	$("#step-2-forward-id").on({
		"click" : deliveryDetailScreeHandler
	});
	
	$("#order-checkout").on({
		"click" : checkoutCart
	});
	
	$("#success-checkout").on({
		"click" : redirectToHome
	});
	
	$("#userAddressUpdate").on({
        "click": addUserAddress
    });
	
	$("#step-2-backward-id").on({
		"click" : function(){
			location.reload();
		}
	});
	
});


var redirectToHome = function(){
	location.replace("${pageContext.request.contextPath}/")
}


var addUserAddress = async function() {
    var addressOne = $("#address1").val();
    var addressTwo = $("#address2").val();
    var city = $("#city").val();
    var state = $("#state").val();
    var country = $("#country").val();
    var pincode = $("#pincode").val();
    var userId = "${USER_ENTITY.userId}";

    var param = "addressOne=" + addressOne + "&" + "addressTwo=" + addressTwo + "&" + "city=" + city + "&" + "state=" + state + "&" + "country=" + country + "&" + "pincode=" + pincode + "&" + "userId=" + userId+"&"+"uqi="+"${UNIQUE_ID}";

    var status = await serviceCall("${pageContext.request.contextPath}/user/addUserAddress", "POST", param);
    if (status == "true") {
        location.reload();
    }
}

var selectAddress = function(addressId){
	addressIdG = addressId;
}

var quantityChange = function(productId){
	
	var quantity = parseInt($("#prod-quantity-"+productId).val());
	var constantOfferPrice = parseInt($("#prod-const-offer-price-"+productId).val());
	var constantOriginalPrice = parseInt($("#prod-const-original-price-"+productId).val());
	
	var productOfferPrice = constantOfferPrice*quantity;
	var productOriginalPrice = constantOriginalPrice *quantity;
	
	$("#prod-offer-price-"+productId).html("Rs."+productOfferPrice);
	$("#prod-bag-price-"+productId).html("Rs."+productOriginalPrice);
	
	var totalBagPrice = 0;
	var totalOfferPrice = 0;
	
	var bagPriceElements = $(".bag-price-cls");
	var offerPriceElements = $(".offer-price-cls");
	
	for (var i = 0; i < bagPriceElements.length; i++) {
		var rawPrice = parseInt((bagPriceElements[i].childNodes[0].data).split(".")[1]);
		var offerPrice = parseInt((offerPriceElements[i].childNodes[0].data).split(".")[1]);
		totalBagPrice = totalBagPrice+rawPrice;
		totalOfferPrice = totalOfferPrice + offerPrice;
	}
	$("#bag-total").html(totalBagPrice);
	$("#offer-total").html(totalOfferPrice);
	$("#order-total").html(totalOfferPrice);
	$("#delivery-charge-total").html(totalOfferPrice >1000 ? 0 : 120);
	$("#cart-total").html(totalOfferPrice > 1000 ? 0+totalOfferPrice : 120+totalOfferPrice);
}

var checkoutCart = async function(){

	var isValidDeliveryDetails = validateDeliveryDetails();
	
}


const validateDeliveryDetails = () => {
	
	var firstName  = $("#firstName").val();
	var lastName  = $("#lastName").val();
	var emailName  = $("#email").val();
	var gender  = $("#gender").val();
	
	console.log(firstName,lastName, email,gender);
}


var deliveryDetailScreeHandler = function(){
	$("#user-details-div").show();
	$("#step-2-backward-id").show();
	$("#step-2-forward-id").hide();
	$("#address-div").hide();
	$("#cart-div").hide();
	$("#cart-checkout").hide();
	$("#order-checkout").show();
}

var getCartProducts = async function (){
	var param = "userId="+'${USER_ENTITY.userId}'+"&"+"uqi="+"${UNIQUE_ID}";
	var cart = await serviceCall("${pageContext.request.contextPath}/cart/getAllProductsFromCart","POST",param);
	cart = JSON.parse(cart);
	if(cart.length>0){
		appendProductsToCart(cart);
		$(".cart-product-price").show();
	}else{
		$("#empty-cart-div").show();
	}
}


var removeProductFromCart = async function(productId){
	var param = "productId="+productId+"&"+"userId="+'${USER_ENTITY.userId}'+"&"+"uqi="+"${UNIQUE_ID}";
	var response = await serviceCall("${pageContext.request.contextPath}/cart/removeProduct","POST",param);
	if(response == "true"){
		$("#cart-div").empty();
		alert("Product has been successfully removed from cart");
	}else{
		alert("Removing product from the cart failed. Please try again.");
	}
	location.reload();
}

var moveProductToWishlist = function(productId){
	addProductToWishList(productId);
	removeProductFromCart(productId);
}

var appendProductsToCart = function(products){
	$("#cart-div").empty();
	var productDiv = "";
	var originalPriceTotal = 0;
	var offerPriceTotal = 0;
	var orderTotal;
	var deliveryCharge;
	var grandTotal;
	
	for(var product=0;product<products.length;product++){
		originalPriceTotal = originalPriceTotal + parseInt(products[product].productOriginalPrice);
		offerPriceTotal = offerPriceTotal+parseInt(products[product].productOfferPrice);
		
		productDiv = productDiv+"<div class='col-sm-12' style=''>"+
				"<div class='row cart-product'>"+
				"<div class='col-sm-3'>"+
					"<article class='col-item'>"+
						"<div class='photo'>"+
							"<a href=''> <img src='"+products[product].binaryPhoto1+"'"+
								"class='img-responsive' alt='Product Image' />"+
							"</a>"+
						"</div>"+
					"</article>"+
				"</div>"+
				"<div class='col-sm-9'>"+
					"<div class='row'>"+
						"<div class='col-sm-9'>"+
							"<p style='font-weight: 600;color:black'>"+products[product].productName+"</p><p style='font-size: 13px;'>Product Code : PROD"+products[product].productId+"</p><p style='font-size: 13px;'>Product Gender : "+products[product].productGender+"</p>"+
						"</div>"+
						"<div class='col-sm-3'><input type='hidden' id='prod-const-original-price-"+products[product].productId+"' value='"+products[product].productOriginalPrice+"'><input type='hidden' id='prod-const-offer-price-"+products[product].productId+"' value='"+products[product].productOfferPrice+"'>"+
							"<p style='font-weight: 600;color:green' class='offer-price-cls' id='prod-offer-price-"+products[product].productId+"'>Rs. "+products[product].productOfferPrice+"</p><s><p style='font-weight: 600;color:red' class='bag-price-cls' id='prod-bag-price-"+products[product].productId+"'>Rs. "+products[product].productOriginalPrice+"</p></s>"+
						"</div>"+
					"</div>"+
					"<div class='row' style='margin-top: 10px;'>"+
						"<div class='col-sm-3'>"+
							"<p style='font-weight: 300;'>"+
							"<div class='form-group'>"+
								"<label for='size' style='font-weight: normal;'>Size</label><select class='form-control product-size-cls' id='prod-size-"+products[product].productId+"' "+
									"id='size' style='border-radius: 0px'>"+
									"<option>S</option>"+
									"<option>M</option>"+
									"<option>L</option>"+
									"<option>XL</option>"+
								"</select>"+
							"</div>"+
							"</p>"+
						"</div>"+
						"<div class='col-sm-3'>"+
							"<p style='font-weight: 300;'>"+
							"<div class='form-group'>"+
								"<label for='size' style='font-weight: normal;'>Quantity</label><input class='form-control product-quantity-cls' id='prod-quantity-"+products[product].productId+"' "+
									"value='1' type='number' style='border-radius: 0px'"+
									" min='0' onchange='quantityChange("+products[product].productId+")'>"+
							"</div>"+
							"</p>"+
						"</div>"+
					"</div>"+
					"<div class='row'"+
						"style='border-top: 1px solid #eaeaec; padding: 5px;'>"+
						"<center>"+
							"<a onclick='removeProductFromCart("+products[product].productId+")' class='btn btn-danger'"+
								"style='width: 150px; border-radius: 0px; margin-top: 2px;margin-right:1px;'>Remove</a>"+
							"<a class='btn btn-info'"+
								"style='width: 150px; border-radius: 0px; margin-top: 2px;' onclick='moveProductToWishlist("+products[product].productId+")'>Move"+
								"To Wishlist</a>"+
						"</center>"+
					"</div>"+
				"</div>"+
			"</div>"+
		"</div>";
	}
	
	
	$("#bag-total").html(originalPriceTotal);
	$("#offer-total").html(offerPriceTotal);
	$("#order-total").html(offerPriceTotal);
	deliveryCharge = offerPriceTotal > 1000 ? 0 : 120 ;
	$("#delivery-charge-total").html(deliveryCharge);
	grandTotal = offerPriceTotal+deliveryCharge;
	$("#cart-total").html(grandTotal);
	
	$("#cart-div").append(productDiv);
}


</script>