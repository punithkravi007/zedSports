<div class="row">
	<div class="col-sm-4">
		<div class="card">
			<div class="card-body order-stats">
				<div class="card-block">
					<div class="media">
						<div class="media-body text-xs-left">
							<h3 class="pink" id="pending-orders-id"></h3>
							<span>Pending Orders</span>
						</div>
						<div class="media-right media-middle">
							<i class="icon-cart pink font-large-2 float-xs-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-body order-stats">
				<div class="card-block">
					<div class="media">
						<div class="media-body text-xs-left">
							<h3 class="pink" id="approved-orders-id"></h3>
							<span>Approved Orders</span>
						</div>
						<div class="media-right media-middle">
							<i class="icon-alert-circled pink font-large-2 float-xs-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-body order-stats">
				<div class="card-block">
					<div class="media">
						<div class="media-body text-xs-left">
							<h3 class="pink" id="shipped-orders-id"></h3>
							<span>Shipped Orders</span>
						</div>
						<div class="media-right media-middle">
							<i class="icon-model-s pink font-large-2 float-xs-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-body order-stats">
				<div class="card-block">
					<div class="media">
						<div class="media-body text-xs-left">
							<h3 class="pink" id="delivered-orders-id"></h3>
							<span>Delivered Orders</span>
						</div>
						<div class="media-right media-middle">
							<i class="icon-circle-check pink font-large-2 float-xs-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-8">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Orders Statistics</h4>
				<a class="heading-elements-toggle"><i
					class="icon-ellipsis font-medium-3"></i></a>
				<div class="heading-elements">
					<ul class="list-inline mb-0">
						<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
						<li><a data-action="reload"><i class="icon-reload"></i></a></li>
						<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
						<li><a data-action="close"><i class="icon-cross2"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="card-body collapse in">
				<div class="card-block chartjs">
					<canvas id="area-chart" height="500"></canvas>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-4">
		<div class="card">
			<div class="card-body">
				<div class="card-block">
					<h4 class="card-title">Number of Products in each Category</h4>
				</div>
				<ul class="list-group list-group-flush" id="categoryCount">
				</ul>
			</div>
		</div>
	</div>
	<div class="col-sm-8">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Products</h4>
				<a class="heading-elements-toggle"><i
					class="icon-ellipsis font-medium-3"></i></a>
				<div class="heading-elements">
					<ul class="list-inline mb-0">
						<li><a data-action="reload"><i class="icon-reload"></i></a></li>
						<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="card-body">
				<div class="card-block">
					<p>
						<b>Total Active Products :</b> <span id="activeProductCount"
							style="color: green; margin-right: 5px;"></span> || <b
							style="margin-left: 5px;">Total Inactive Products :</b> <span
							id="inActiveProductCount" style="color: red">150</span> <span
							class="float-xs-right"><a
							href="${pageContext.request.contextPath}/products/viewAllProducts">View
								All Products <i class="icon-arrow-right2"></i>
						</a></span>
					</p>
				</div>
				<div class="table-responsive"
					style="overflow-y: auto; height: 300px;">
					<table class="table table-hover mb-0">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Product Category</th>
								<th>Product Status</th>
								<th>Product Price</th>
								<th>Product Gender</th>
							</tr>
						</thead>
						<tbody id="productView">
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		getAllProducts();
		getAllOrders();
	});
	
	
	var getAllOrders = async function(){
		var param = "uqi="+'${UNIQUE_ID}';
		var orders = await serviceCall("${pageContext.request.contextPath}/orders/getAllOrders","POST",param);
		orders = JSON.parse(orders);
		
		if(orders != "null"){
			var pendingOrderCount = 0;
			var approvedOrderCount = 0;
			var shippedOrderCount = 0;
			var deliveredOrderCount = 0;
			
			for(key in orders){
				var order = orders[key];
				if(order.shippingStatus == 0)  pendingOrderCount   = pendingOrderCount+1;
				if(order.shippingStatus == 1)  approvedOrderCount  = approvedOrderCount+1;
				if(order.shippingStatus == 2)  shippedOrderCount   = shippedOrderCount+1;
				if(order.shippingStatus == 3)  deliveredOrderCount = deliveredOrderCount+1;
			}
			
			$("#pending-orders-id").html(pendingOrderCount);
			$("#approved-orders-id").html(approvedOrderCount);
			$('#shipped-orders-id').html(shippedOrderCount);
			$("#delivered-orders-id").html(deliveredOrderCount);
		}else{
			location.reload();
		}
	}
	
	var getAllProducts = async function(){
		 var param = "uqi="+"${UNIQUE_ID}";
		 var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts", "POST", param);
		 response = JSON.parse(response);
		
		var activeProducts = response.filter(e => e.productIsActive == 1);
		var inActiveProducts = response.filter(e => e.productIsActive == 0);
		$("#activeProductCount").html(activeProducts.length);
		$("#inActiveProductCount").html(inActiveProducts.length);
		
		var categories = {};
		
		for (var product = 0; product < response.length; product++) {
			var prodcategory = response[product].productCategory;
			categories[prodcategory] = categories[prodcategory]!=undefined ? categories[prodcategory]+1 : 1;
		}
		categoryCounter(categories);
		productsTable(response);
	}
	
	var productsTable = function(products){
		$("#productView").empty();
		var row;
		for (var product = 0; product < products.length; product++) {
			var status = products[product].productIsActive == '0' ? "<td class='text-truncate'><span class='tag tag-default tag-danger'>In Active</span></td>" : "<td class='text-truncate'><span class='tag tag-default tag-success'>Active</span></td>";
			row = row+"<tr>"+
			"<td class='text-truncate'>"+products[product].productName+"</td>"+
			"<td class='text-truncate'>"+products[product].productCategory+"</td>"+
			status
			+"<td class='text-truncate'>"+products[product].productOriginalPrice+"</td>"+
			"<td class='text-truncate'>"+products[product].productGender+"</td>"+
		"</tr>";
		}
		$("#productView").append(row);
	}
	
	
	var categoryCounter = function(categories){
		$("#categoryCount").empty();
		var categoryAppender ="";
		for (var category in categories) {
		    if (categories.hasOwnProperty(category)) {
		    	categoryAppender=categoryAppender+ "<li class='list-group-item'><span class='tag tag-default tag-pill  float-xs-right' style='border-radius:0px;background-color:#E91E63'>"+categories[category]+"</span>"+
				category+"</li>";
		    }
		}
		$("#categoryCount").append(categoryAppender);
	}
	
	
	
</script>