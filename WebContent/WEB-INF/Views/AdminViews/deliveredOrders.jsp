<div class="container">
	<h5>
		<a>Orders / <font color="green">Delivered Orders</font></a>
	</h5>
	<div class="row">
		<div class='col-md-12'>
			<div class='panel-group' id='accordion8' role='tablist'
				aria-multiselectable='true'></div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	getPendingOrders();
});

var getPendingOrders = async function(){
	var param = "uqi="+"${UNIQUE_ID}";
	 var response = await serviceCall("${pageContext.request.contextPath}/orders/getAllOrders", "POST", param);
	response = JSON.parse(response)[3];
	
	var map = new Map();
	
	for(key in response){
		var order = response[key];
		if(order.shippingStatus == 3) map[key] = order; 
	}
	appendPendingOrders(map);
}

var approvePendingOrder = async function(orderCode){
	var param = "orderCode="+orderCode+"&status="+"DELIVERED";
	var response = await serviceCall("${pageContext.request.contextPath}/orders/updateOrderStatus","POST",param);
	getPendingOrders();
}

var appendPendingOrders = function(orders){
	
	$("#accordion8").empty();
	var orderDiv = "<div class='row'>";
	
	for(key in orders){
		
		var order = orders[key];
		var bagTotal = order['bagTotal'];
		var creationDate = order['creationDate'];
		var offerTotal = order['offerTotal'];
		var orderTotal = order['orderTotal'];
		var total = order['total'];
		var products = order['entities'];
		var deliveryAddress = order['deliveryAddress'];
		var firstName = order['firstName'];
		var lastName = order['lastName'];
		var mobileNumber = order['mobileNumber'];
		
		
		var productsDiv = "";
		for(var product=0;product<products.length;product++){
			var savings = parseInt(products[product].originalAmount) - parseInt(products[product].offerAmount);
			productsDiv = productsDiv+
					"<div class='row' style='padding:10px;margin-right:10px;color:black;background-color:white'>"+
                        "<div class='col-sm-2'>"+
                            "<img alt='' height='100px' width='100px;' src='"+products[product].binaryPhoto1+"'>"+
                        "</div>"+
                        "<div class='col-sm-8'>"+
                            "<div class='row'>"+
                                "<div class='col-sm-3' style='text-align: left;font-weight:bold'>Product Name:</div>"+
                                "<div class='col-sm-6' style='text-align: left;'>"+products[product].productName+"</div>"+
                                "<div class='col-sm-2' style='text-align: left;font-weight:bold'>Product ID:</div>"+
                                "<div class='col-sm-1' style='text-align: left;'>"+products[product].productId+"</div>"+
                            "</div>"+
                            "<div class='row'>"+
                                "<div class='col-sm-3' style='text-align: left;font-weight:bold'>Size:</div>"+
                                "<div class='col-sm-6' style='text-align: left;'>"+products[product].size+"</div>"+
                                "<div class='col-sm-2' style='text-align: left;font-weight:bold'>Quantity:</div>"+
                                "<div class='col-sm-1' style='text-align: left;'>"+products[product].quantity+"</div>"+
                            "</div>"+
                            "<div class='row'>"+
                                "<div class='col-sm-3' style='text-align: left;font-weight:bold'>Original Price:</div>"+
                                "<div class='col-sm-6' style='text-align: left;'>"+products[product].originalAmount+"</div>"+
                                "<div class='col-sm-2' style='text-align: left;font-weight:bold'>Offer Price:</div>"+
                                "<div class='col-sm-1' style='text-align: left;'>"+products[product].offerAmount+"</div>"+
                            "</div>"+
                        "</div>"+
                    "</div><hr>";
		}
		
		orderDiv = orderDiv+"<div class='col-sm-12'><div class='panel panel-default'>"+
						            "<div class='panel-heading' role='tab' id='headingOne8"+key+"'>"+
						                "<h4 class='panel-title'>"+
						                    "<a style='border-radius: 0px;font-size:12px;' role='button' data-toggle='collapse' data-parent='#accordion8' href='#collapseOne8"+key+"' aria-expanded='true' aria-controls='collapseOne8"+key+"'>"+
						                        "<div class='row'>"+
						                            "<div class='col-sm-4'>"+
						                                "<div class='row' style='margin-top: 10px;'>"+
						                                    "<div class='col-sm-6' style='text-align: left; color: brown'>Order Id :</div>"+
						                                    "<div class='col-sm-6' style='text-align: left;'>"+key+"</div>"+
						                                "</div>"+
						                                "<div class='row' style='margin-top: 10px;'>"+
						                                    "<div class='col-sm-6' style='text-align: left; color: brown'>Full Name :</div>"+
						                                    "<div class='col-sm-6' style='text-align: left;'>"+firstName+" "+lastName+"</div>"+
						                                "</div>"+
						                                "<div class='row' style='margin-top: 10px;'>"+
						                                    "<div class='col-sm-6' style='text-align: left; color: brown'>Mobile Number :</div>"+
						                                    "<div class='col-sm-6' style='text-align: left;'>"+mobileNumber+"</div>"+
						                                "</div>"+
						                                "<div class='row' style='margin-top: 10px;'>"+
						                                    "<div class='col-sm-6' style='text-align: left; color: brown'>Creation Date :</div>"+
						                                    "<div class='col-sm-6' style='text-align: left;'>"+creationDate+"</div>"+
						                                "</div>"+
						                            "</div>"+
						                            "<div class='col-sm-4' style='margin-top: 10px;'>"+
						                                "<div class='row'>"+
						                                    "<div class='col-sm-12' style='text-align: left; color: brown'>"+
						                                        "<u>Delivery Address</u>"+
						                                    "</div>"+
						                                "</div>"+
						                                "<div class='row'>"+
						                                    "<div class='col-sm-12' style='text-align: left;'>"+
						                                        "<span>"+deliveryAddress+"</span>"+
						                                    "</div>"+
						                                "</div>"+
						                            "</div>"+
						                            "<div class='col-sm-4' style='margin-top: 10px;'>"+
					                                "<div class='row'>"+
					                                    "<div class='col-sm-12' style='text-align: left; color: brown'>"+
					                                        "<u>Billing Info</u>"+
					                                    "</div>"+
					                                "</div>"+
					                                "<div class='row' style='margin-top:10px;'><div class='col-sm-6' style='text-align: left;color:steelblue'>Bag Total  &nbsp;&nbsp;&nbsp;: </div>"+
					                                    "<div class='col-sm-6' style='text-align: left;'>"+
					                                        "<span>&#8377;"+bagTotal+"/-</span>"+
					                                    "</div>"+
					                                "</div>"+
					                                "<div class='row'><div class='col-sm-6' style='text-align: left;color:steelblue'>Offer Total &nbsp;:</div>"+
					                                    "<div class='col-sm-6' style='text-align: left;'>"+
					                                        "<span>&#8377;"+offerTotal+"/-</span>"+
					                                    "</div>"+
				                                	"</div>"+
					                                "<div class='row'><div class='col-sm-6' style='text-align: left;color:steelblue'>Order Total :</div>"+
						                                    "<div class='col-sm-6' style='text-align: left;'>"+
						                                        "<span>&#8377;"+orderTotal+"/-</span>"+
						                                    "</div>"+
				                                	"</div>"+
				                                	 "<div class='row'><div class='col-sm-6' style='text-align: left;color:saddlebrown'>Grand Total :</div>"+
					                                    "<div class='col-sm-6' style='text-align: left;'>"+
					                                        "<span style='color:saddlebrown'>&#8377;"+total+"/-</span>"+
					                                    "</div>"+
			                                		"</div>"+
					                            "</div>"+
						                        "</div>"+
						                    "</a>"+
						                "</h4>"+
						            "</div>"+
						            "<div id='collapseOne8"+key+"' class='panel-collapse collapse' role='tabpanel' aria-labelledby='headingOne8"+key+"'>"+
						                "<div class='panel-body'>"+productsDiv+"</div>"+
						            "</div>"+
						        "</div></div>";
	}
	$("#accordion8").append(orderDiv+"</div>");
}

</script>