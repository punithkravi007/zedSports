<section class="htc__product__grid bg__white ptb--100"
	style="margin-top: -50px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="form-group">
					<label>Filter By</label> <select class="form-control"
						id="Order-filter">
						<option value="-1">--SELECT--</option>
						<option value="ID">ORDER ID</option>
						<option value="DATE">ORDER DATE</option>
					</select>
				</div>
			</div>
			<div class="col-sm-3" id="order-id-filter">
				<div class="form-group">
					<label>Enter Order ID :</label>
					<div class="input-group">
						<input type="text" class="form-control" name="id"
							id="filter-by-id" placeholder="Enter Order Id" required>
						<span class="input-group-addon danger"
							style="padding: 0px; border-radius: 0px"><button
								class="btn btn-info" id="filter-by-id-btn"
								style="width: 60px; border-radius: 0px; height: 33px;">Search</button></span>
					</div>
				</div>
			</div>
			<div class="col-sm-3" id="order-date-filter">
				<div class="form-group">
					<label>Enter Ordered Date :</label>
					<div class="input-group">
						<input type="text" class="form-control" name="date"
							id="filter-by-date" placeholder="Enter Order Date" required>
						<span class="input-group-addon danger"
							style="padding: 0px; border-radius: 0px"><button
								class="btn btn-success" id="filter-by-date-btn"
								style="width: 60px; border-radius: 0px; height: 33px;">Search</button></span>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-4">
				<h3
					style="text-align: center; text-transform: uppercase; margin: 5px; background-image: linear-gradient(to right, #E74C3C, #F9E79F, #F39C12); padding: 5px; color: white">Pending
					Order</h3>
				<div id="pending-invoice"></div>
			</div>
			<div class="col-sm-4">
				<h3
					style="text-align: center; text-transform: uppercase; margin: 5px; background-image: linear-gradient(to right, #F39C12, #E8F8F5, #ABEBC6); padding: 5px; color: white">Approved
					Orders</h3>
				<div id="approved-invoice"></div>
			</div>
			<div class="col-sm-4">
				<h3
					style="text-align: center; text-transform: uppercase; margin: 5px; background-image: linear-gradient(to right,#ABEBC6, #82E0AA, #1D8348); padding: 5px; color: white">Delivered
					Order</h3>
				<div id="delivered-invoice"></div>
			</div>
		</div>
	</div>
</section>
<script>
var allOrdersG = [];
var pendingOrdersG;
var approvedOrdersG;
var deliveredOrdersG;
$(document).ready(function(){
	$("#order-id-filter").hide();
	$("#order-date-filter").hide();
	
	getAllOrders();
	
	$("#Order-filter").on({
		"change" : function(){
			var selectedFilterOption = $(this).children("option:selected").val();
			
			if(selectedFilterOption == "ID"){ 
				$("#order-id-filter").show(); 
				$("#order-date-filter").hide(); 
			}
			if(selectedFilterOption == "DATE"){
				$("#order-id-filter").hide(); 
				$("#order-date-filter").show();
			}
			if(selectedFilterOption == "-1"){ 
				$("#order-id-filter").hide(); 
				$("#order-date-filter").hide();
				appendOrders("#pending-invoice",pendingOrdersG);
				appendOrders("#approved-invoice",approvedOrdersG);
				appendOrders("#delivered-invoice",deliveredOrdersG);
			}
		}
	});
	
	$("#filter-by-id-btn").on({
		"click" : function(){
			var enteredId = $("#filter-by-id").val();
			var status;
			
			var filteredresponse = allOrdersG.filter(o => o.orderId == enteredId);
			console.log(filteredresponse);
			if(filteredresponse[0].shippingStatus == "0") status = "#pending-invoice";
			if(filteredresponse[0].shippingStatus == "1") status = "#approved-invoice";
			if(filteredresponse[0].shippingStatus == "2") status = "#pending-invoice";
			if(filteredresponse[0].shippingStatus == "3") status = "#delivered-invoice";
			
			$("#pending-invoice").empty();
			$("#approved-invoice").empty();
			$("#delivered-invoice").empty();
			
			appendOrders(status,filteredresponse);
		}
	});
	
	$("#filter-by-date-btn").on({
		"click" : function(){
			var enteredDate = $("#filter-by-date").val();
			
			var filteredresponse = allOrdersG.filter(o => o.creationDate == enteredDate);
			
			var filteredPendingOrder = filteredresponse.filter(o => o.shippingStatus == '0');
			var filteredapprovedOrder = filteredresponse.filter(o => o.shippingStatus == '1');
			var filteredshippedOrder = filteredresponse.filter(o => o.shippingStatus == '2');
			var filtereddeliveredOrder = filteredresponse.filter(o => o.shippingStatus == '3');
			
			appendOrders("#pending-invoice",filteredPendingOrder);
			appendOrders("#approved-invoice",filteredapprovedOrder);
			appendOrders("#delivered-invoice",filtereddeliveredOrder);
		}
	});
	
});

var getAllOrders = async function(){
	var param = "uqi="+'${UNIQUE_ID}';
	var response = await serviceCall("${pageContext.request.contextPath}/orders/getOrders","POST",param);
	response = JSON.parse(response);
	
	pendingOrdersG = response[0]!="" && response[0]!=null && response[0]!="undefined" ? response[0] :"[]" ;
	approvedOrdersG = response[1];
	shippedOrder = response[2];
	deliveredOrdersG = response[3];
	
	allOrdersG.push(pendingOrdersG)
	allOrdersG.push(approvedOrdersG)
	allOrdersG.push(deliveredOrdersG)
	allOrdersG.push(shippedOrder)
	
	console.log(allOrdersG)
	//allOrdersG = pendingOrdersG.concat(approvedOrdersG).concat(deliveredOrdersG).concat(shippedOrder);
	
	appendOrders("#pending-invoice",pendingOrdersG);
	appendOrders("#approved-invoice",approvedOrdersG);
	appendOrders("#delivered-invoice",deliveredOrdersG);
}

var appendOrders = function(elementId,orders){
	
	$(elementId).empty();
	
	var invoiceDiv = "";
	
	
	for(key in orders) {
		var bagTotal = orders[key]["bagTotal"];
		var creationDate = orders[key]['creationDate'];
		var creationDate = orders[key]['creationDate'];
		var offerTotal = orders[key]['offerTotal'];
		var orderTotal = orders[key]['orderTotal'];
		var total = orders[key]['total'];
		var products = orders[key]['entities'];
		var deliveryAddress = orders[key]['deliveryAddress'];
		var shippingStatus = orders[key]['shippingStatus'];
		var shippingStatusColor;
		var id = orders[key]["id"];
		var key;
		
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
			key = products[product].orderId;
			var savings = parseInt(products[product].originalAmount) - parseInt(products[product].offerAmount);
			productsDiv = productsDiv+
					"<div class='row' style='border: 1px solid burlywood;margin:5px;box-shadow: 0px 0px 5px grey;padding:5px;'><div style='display:inline-block'><img src='"+products[product].binaryPhoto1+"' height='120px' width='100px'></div><div style='display:inline-block'>"+
			            "<div class='row'>"+
			                "<div class='col-sm-12' style='color:black'><b>"+products[product].productName+"</b></div>"+
			            "</div><div class='row'><div class='col-sm-12' style='color:crimson'>"+products[product].productId+"</div></div>"+
			            "<div class='row'>"+
			                "<div class='col-sm-1'>Size: "+products[product].size+"</div>"+
			                "<div class='col-sm-1'>Qty: "+products[product].quantity+"</div>"+
			            "</div>"+
			            "<div class='row'>"+
			                "<div class='col-sm-12'>"+
			                    "<b style='color:orange'>&#x20b9;"+products[product].offerAmount+"</b><span style='padding-left: 5px'><s><b style='color:red'>&#x20b9;"+products[product].originalAmount+"</b></s></span><span style='padding-left: 5px; color: #20BD99'><b>Saved"+
			                            "&#x20b9;"+savings+"</b></span>"+
			                "</div>"+
			            "</div>"+
			        "</div></div>";
		}
		
		invoiceDiv = invoiceDiv+"<div class='col-sm-12'>"+
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
	            "<div class='row' style='; margin-left: 0px; margin-right: 0px;padding:0px;'>"+productsDiv+
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
	
	$(elementId).append(invoiceDiv);
}


</script>