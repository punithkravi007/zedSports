<div class="card" style="border: 1px burlywood solid; margin-top: 10px;">
	<div class="card-header">
		<div class="form-group card-tile">
			<div class="row">
				<div class="col-sm-3">
					<label for="issueinput5">Filter Based On</label> <select
						style="height: 30px;" id="filter" name="priority"
						class="form-control" data-toggle="tooltip" data-trigger="hover"
						data-placement="top" data-title="Priority">
						<option value="-1">-- SELECT --</option>
						<option value="Name">Product Name</option>
						<option value="Gender">Gender</option>
						<option value="Date">Creation Date Range</option>
						<option value="Price">Product Price Range</option>
						<option value="Quantity">Product Quantity Range</option>
						<option value="active">Active Products</option>
						<option value="inactive">Inactive Products</option>
					</select>
				</div>
				<div class="col-sm-3" id="productNameFilter">
					<input type="text" id="productName" class="form-control"
						style="margin-top: 28px; height: 30px"
						placeholder="Type Product Name..">
				</div>
				<div class="col-sm-4" id="productDateFilter">
					<div class="row">
						<div class="col-sm-6">
							<label for="timesheetinput3">From Date</label>
							<div class="position-relative has-icon-left">
								<input type="date" id="fromDateFilter" class="form-control"
									style="height: 30px;" name="date">
								<div class="form-control-position">
									<i class="icon-calendar5"></i>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="timesheetinput3">To Date</label>
							<div class="position-relative has-icon-left">
								<input type="date" id="toDateFilter" class="form-control"
									style="height: 30px;" name="date">
								<div class="form-control-position">
									<i class="icon-calendar5"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3" id="productGenderFilter">
					<label for="issueinput5">Gender</label> <select id="gender"
						style="height: 30px;" name="priority" class="form-control"
						data-toggle="tooltip" data-trigger="hover" data-placement="top"
						data-title="Priority">
						<option value="-1">-- SELECT --</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Both">Both</option>
						<option value="None">None</option>
					</select>
				</div>
				<div class="col-sm-4" id="productPriceFilter">
					<div class="row">
						<div class="col-sm-6">
							<label for="priceStart">Starting Price</label> <input type="text"
								style="height: 30px;" id="priceStart" class="form-control"
								name="StartingPrice">
						</div>
						<div class="col-sm-6">
							<label for="priceEnd">Ending Price</label> <input type="text"
								style="height: 30px;" id="priceEnd" class="form-control"
								name="EndingPrice">
						</div>
					</div>
				</div>
				<div class="col-sm-4" id="productQuantityFilter">
					<div class="row">
						<div class="col-sm-6">
							<label for="priceStart">Starting Quantity</label> <input
								style="height: 30px;" type="text" id="quantityStart"
								class="form-control" name="StartingQuantity">
						</div>
						<div class="col-sm-6">
							<label for="priceEnd">Ending Quantity</label> <input type="text"
								style="height: 30px;" id="quantityEnd" class="form-control"
								name="EndingQuantity">
						</div>
					</div>
				</div>
				<div class="col-sm-2" id="filter-btn-id">
					<button class="btn btn-success" id="filter-btn"
						style="margin-top: 28px; height: 30px; width: 130px">Filter</button>
				</div>
				<div class="col-sm-2">
					<button class="btn btn-warning" id="all-products-btn"
						style="margin-top: 28px; height: 30px">ALL Products</button>
				</div>
			</div>
		</div>

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
		<div class="card-block">
			<div class="row" id="products"></div>
		</div>
	</div>
</div>
<script>
	var productsG;
	var previousFilterId;
	$(document).ready(function() {
		
		$("#productNameFilter").hide();
		$("#productDateFilter").hide();
		$("#productGenderFilter").hide();
		$("#productPriceFilter").hide();
		$("#productQuantityFilter").hide();
		$("#filter-btn-id").hide();
		
		$('#example').DataTable();
		getAllProducts();
		
		$("#filter").on({
			"change" : selectFilter
		});
		
		$("#filter-btn").on({
			"click" : filterProducts
		});
		
		$("#all-products-btn").on({
			"click" : getAllProducts
		});
		
	});
	
	var getAllProducts = async function(){
		var response = await serviceCall("${pageContext.request.contextPath}/products/getAllProducts","GET","");
		productsG = JSON.parse(response);
		appendProductsToTable(JSON.parse(response));
	}
	
	var appendProductsToTable = function(products){
		$("#products").empty();
		var productDiv = "";
		for (var product = 0; product < products.length; product++) {
			var activeStatusButton;
			var isActive = "<a style='background-color:white;color:black' onclick='deleteProduct("+products[product].productId+")' class='btn btn-default' type='submit' data-toggle='tooltip' data-placement='top' title='View Product'>"+
						    	"<i class='fa fa-trash'></i>"+
		                   "</a>";
		    if(products[product].productIsActive == 1){
		    	activeStatusButton = isActive;
		    }else{
		    	activeStatusButton = "";
		    }
			
			productDiv = productDiv+"<div class='col-sm-3'>"+
		        	"<article class='col-item'>"+
		    		"<div class='options'>"+
		    		activeStatusButton
		    		+"<a style='background-color:white;color:black;margin-left:2px;' href='${pageContext.request.contextPath}/products/editProduct?productCode="+products[product].productCode+"' class='btn btn-default' style='margin-left:2px;' type='submit' data-toggle='tooltip' data-placement='top' title='Edit Product'>"+
		    				"<i class='fa fa-pencil'></i>"+
		    		"</a>"+
		    		"</div>"+
		    		"<div class='photo'>"+
		    			"<a href='${pageContext.request.contextPath}/products/viewProduct?productCode="+products[product].productCode+"'> <img src='"+products[product].photoEntity.binaryPhoto1+"' class='img-responsive' alt='Product Image not found' /> </a>"+
		    		"</div>"+
		    		"<div class='info'>"+
		    			"<div class='row'>"+
		    				"<div class='price-details col-md-6'>"+
		    					"<p class='details'>"+products[product].productName+
		    					"</p>"+
		    					"<h1></h1>"+
		    					"<span class='price-new'>"+products[product].productOriginalPrice+"</span>"+
		    				"</div>"+
		    			"</div>"+
		    		"</div>"+
		    	"</article>"+
		    "</div>";
		}
		
		$("#products").append(productDiv);
	}
	
	var selectFilter = function(){
		
		var selectedFilter = $("#filter").children("option:selected"). val();
		var currentId;
		switch(selectedFilter){
			case "Name" : 
				currentId = "#productNameFilter" ;
				break;
			case "Gender" : 
				currentId = "#productGenderFilter" ;
				break;
			case "Date" : 
				currentId = "#productDateFilter" ;
				break;
			case "Price" : 
				currentId = "#productPriceFilter" ;
				break;
			case "Quantity" : 
				currentId = "#productQuantityFilter" ;
				break;
			case "active" :
				activeFilter(1);
				break;
			case "inactive" :
				activeFilter(0);
				break
			case "-1" :
				$("#filter-btn-id").hide();
			   break;
		}
		
		if(previousFilterId !="undefined"){
			$(previousFilterId).hide();
			previousFilterId = currentId;
			$(currentId).show();
			if(selectedFilter!="-1"){
				$("#filter-btn-id").show();
			}else{
				$("#filter-btn-id").hide();
			}
			
		}else{
			previousFilterId = currentId;
		}
	}
	
	
	
	var filterProducts = function(){
		var selectedFilter = $("#filter").children("option:selected").val();
		switch(selectedFilter){
		case "Name" : 
			filterBasedOnName($("#productName").val());
			break;
		case "Gender" : 
			filterBasedOnGender($("#gender").children("option:selected").val());
			break;
		case "Date" : 
			dateRangeFilter($("#fromDateFilter").val(),$("#toDateFilter").val());
			break;
		case "Price" : 
			priceRangeFilter($("#priceStart").val(),$("#priceEnd").val());
			break;
		case "Quantity" : 
			quantityRangeFilter($("#quantityStart").val(),$("#quantityEnd").val());
			break;
		case "-1" :
			appendProductsToTable(productsG);
			break;
		
		}
	}
	
	var filterBasedOnName = function(productName){
		var filteredResponse = productsG.filter(e => e.productName.toUpperCase().includes(productName.toUpperCase()));
		appendProductsToTable(filteredResponse);
	}
	
	var filterBasedOnGender = function(productGender){
		var filteredResponse = productsG.filter(e => e.productGender.toUpperCase() == productGender.toUpperCase());
		appendProductsToTable(filteredResponse);
	}
	
	var dateRangeFilter = function(fromDate,toDate){
		var filteredResponse = productsG.filter(e => e.productCreationDate >= fromDate.split("-").reverse().join("-") && e.productCreationDate <= toDate.split("-").reverse().join("-"));
		appendProductsToTable(filteredResponse);
	}
	
	var priceRangeFilter = function(startPrice,endPrice){
		var filteredResponse = productsG.filter(e => e.productOriginalPrice >= startPrice && e.productOriginalPrice <= endPrice);
		appendProductsToTable(filteredResponse);
	}
	
	var quantityRangeFilter = function(startQuantity,endQuantity){
		var filteredResponse = productsG.filter(e => e.productQuantity >= startQuantity && e.productQuantity <= endQuantity);
		appendProductsToTable(filteredResponse);
	}
	
	var activeFilter = function(isActive){
		var filteredResponse = productsG.filter(e => e.productIsActive == isActive);
		appendProductsToTable(filteredResponse);
	}
	
	
	async function deleteProduct(productId){
		var filteredResponse = productsG.filter(e => e.productId == productId);
		var isConfirmed = confirm("Do You Want to Delete '"+filteredResponse[0].productName+"''");
		if(isConfirmed){
			var param = "productId="+filteredResponse[0].productId;
			var response = await serviceCall("${pageContext.request.contextPath}/products/deleteProduct","POST",param);
			if(response == "true"){
				getAllProducts();
				alert(filteredResponse[0].productName+" - Deleted Successfully");
			}
		} else{
			alert("Delete Cancelled");
		}
	}
	
</script>