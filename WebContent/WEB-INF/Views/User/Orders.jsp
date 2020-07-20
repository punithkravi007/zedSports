<section class="htc__product__grid bg__white ptb--100"
	style="margin-top: -50px;">
	<div class="container">
		<div class="row" id="invoices"></div>
	</div>
</section>
<script>
$(document).ready(function(){
	getAllOrders();
});

var getAllOrders = async function(){
	var response = await serviceCall("${pageContext.request.contextPath}/orders/getOrders","GET","");
	console.log(JSON.parse(response));
	appendOrders(JSON.parse(response));
}

var appendOrders = function(orders){
	
	$("#invoices").empty();
	
	var invoiceDiv = "";
	
	for(key in orders){
		
		var order = orders[key];
		var bagTotal = order['bagTotal'];
		var creationDate = order['creationDate'];
		var offerTotal = order['offerTotal'];
		var orderTotal = order['orderTotal'];
		var total = order['total'];
		var products = order['entities'];
		var deliveryAddress = order['deliveryAddress'];
		var shippingStatus = order['shippingStatus'];
		var shippingStatusColor;
		var id = order["id"];
		
		if(shippingStatus == '3'){
			shippingStatusColor = "green";
			shippingStatus = "Order Delivered";
		}else if(shippingStatus == '2'){
			shippingStatusColor = "blue";
			shippingStatus = "Order Shipped"
		}else if(shippingStatus == '1'){
			shippingStatusColor = "orange";
			shippingStatus = "Order Approved"
		}else{
			shippingStatusColor = "red";
			shippingStatus = "Order Pending"
		}
		
		
		var productsDiv = "";
		for(var product=0;product<products.length;product++){
			var savings = parseInt(products[product].originalAmount) - parseInt(products[product].offerAmount);
			productsDiv = productsDiv+
					"<div class='col-sm-12' style='border: 1px solid burlywood;margin-top:3px;box-shadow: 0px 0px 5px grey'>"+
			            "<div class='row'>"+
			                "<div class='col-sm-12' style='color:black'><b>"+products[product].productName+"</b></div>"+
			            "</div><div class='row'><div class='col-sm-12' style='color:crimson'>"+products[product].productId+"</div></div>"+
			            "<div class='row'>"+
			                "<div class='col-sm-1'>Size: "+products[product].size+"</div>"+
			                "<div class='col-sm-1'>Qty: "+products[product].quantity+"</div>"+
			            "</div>"+
			            "<div class='row'>"+
			                "<div class='col-sm-12'>"+
			                    "<b style='color:orange'>&#x20b9;"+products[product].offerAmount+"</b><span style='padding-left: 20px'><s><b style='color:red'>&#x20b9;"+products[product].originalAmount+"</b></s></span><span style='padding-left: 20px; color: #20BD99'><b>Saved"+
			                            "&#x20b9;"+savings+"</b></span>"+
			                "</div>"+
			            "</div>"+
			        "</div>";
		}
		
		invoiceDiv = invoiceDiv+"<div class='col-sm-6'>"+
				    "<div class='panel panel-default' style='border-radius:0px'>"+
				        "<div class='panel-heading' data-toggle='collapse' style='background-color: white;' data-target='#demo-"+key+"'>"+
				            "<div class='row'>"+
				                "<div class='col-sm-5'>Order Id:</div> <div class='col-sm-6'><span style='color:crimson;font-weight:bold'>"+key+"</span></div>"+
				            "</div>"+
				            "<div class='row'>"+
				                "<div class='col-sm-5'>Ordered Date:</div> <div class='col-sm-6'><span style='color:seagreen;font-weight:bold'>"+creationDate+"</span></div>"+
				            "</div>"+
				            "<div class='row'>"+
			                  "<div class='col-sm-5'>Status :</div> <div class='col-sm-6'><span style='color:"+shippingStatusColor+";font-weight:bold'>"+shippingStatus+"</span></div>"+
			           	    "</div>"+
				            "<div class='row'>"+
				                "<div class='col-sm-12'>Delivery Address :</div>"+
				            "</div>"+
				            "<div class='row'>"+
				                "<div class='col-sm-12'><span style='color:cadetblue;font-weight:bold'>"+deliveryAddress+"</span></div>"+
				            "</div>"+
				        "</div>"+
				        "<div class='panel-body collapse' id='demo-"+key+"' style='background-color: white'>"+
				            "<div class='row' style='; margin-left: 0px; margin-right: 0px;padding:5px;'>"+productsDiv+
				            "</div>"+
				        "</div>"+
				        "<div class='panel-footer' style='background-color: white'>"+
				            "<div style='margin: 10px;'>"+
				                "<div class='row'>"+
				                    "<div class='col-sm-6'>Bag Total :</div>"+
				                    "<div class='col-sm-6'>"+
				                        "<span style='float: right'>&#x20b9;"+bagTotal+"</span>"+
				                    "</div>"+
				               "</div>"+
				                "<div class='row'>"+
				                    "<div class='col-sm-6'>Offer Price</div>"+
				                    "<div class='col-sm-6'>"+
				                        "<span style='float: right'>&#x20b9;"+offerTotal+"</span>"+
				                    "</div>"+
				                "</div>"+
				                "<div class='row'>"+
				                    "<div class='col-sm-6'>Billed Amount</div>"+
				                    "<div class='col-sm-6'>"+
				                        "<span style='float: right'>&#x20b9;"+orderTotal+"</span>"+
				                    "</div>"+
				                "</div>"+
				                "<div class='row' style='border-top: 1px solid;background-color:darkturquoise'>"+
				                    "<div class='col-sm-6'><b style='color:black'>Total</b></div>"+
				                    "<div class='col-sm-6'>"+
				                        "<span style='float: right'><b style='color:black;'>&#x20b9;"+total+"</b></span>"+
				                    "</div>"+
				                "</div>"+
				            "</div>"+
				        "</div>"+
				    "</div>"+
				"</div>";
	}
	
	$("#invoices").append(invoiceDiv);
}


</script>