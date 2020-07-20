<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="row match-height">
	<div class="col-xl-12 col-lg-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Add Product</h4>
			</div>
			<div class="card-body">
				<div class="card-block">
					<div class="loader"></div>
					<div class="nav-vertical" id="mainDiv">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								id="baseVerticalLeft-tab1" data-toggle="tab"
								aria-controls="tabVerticalLeft1" href="#tabVerticalLeft1"
								aria-expanded="true">Basic Details</a></li>
							<li class="nav-item"><a class="nav-link"
								id="baseVerticalLeft-tab2" data-toggle="tab"
								aria-controls="tabVerticalLeft2" href="#tabVerticalLeft2"
								aria-expanded="false">Map Tags</a></li>
							<li class="nav-item"><a class="nav-link"
								id="baseVerticalLeft-tab3" data-toggle="tab"
								aria-controls="tabVerticalLeft3" href="#tabVerticalLeft3"
								aria-expanded="false">Add Photos</a></li>
						</ul>
						<div class="tab-content px-1">
							<div role="tabpanel" class="tab-pane active"
								id="tabVerticalLeft1" aria-expanded="true"
								aria-labelledby="baseVerticalLeft-tab1">
								<div class="card"
									style="border: 1px burlywood solid; margin-top: 10px;">
									<div class="card-header">
										<h4 class="card-title" id="basic-layout-form">Basic
											Product Deatils</h4>
										<a class="heading-elements-toggle"><i
											class="icon-ellipsis font-medium-3"></i></a>
										<div class="heading-elements">
											<ul class="list-inline mb-0">
												<li><a data-action="collapse"><i
														class="icon-minus4"></i></a></li>
												<li><a data-action="reload"><i class="icon-reload"></i></a></li>
												<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
												<li><a data-action="close"><i class="icon-cross2"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="card-body collapse in">
										<div class="card-block">
											<div class="form-body">
												<div
													class="alert alert-danger alert-dismissible fade in mb-2"
													role="alert" id="product-add-danger">
													<button type="button" class="close" data-dismiss="alert"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
													<strong>Oops!</strong> Product with this name already
													exist.
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label for="projectinput1">Product Name</label> <input
																type="text" id="productName" class="form-control"
																placeholder="Product Name" name="fname">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label for="projectinput2">Product Quantity</label> <input
																type="number" id="productQuantity" class="form-control"
																min="0" placeholder="Product Quantity" name="lname">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label for="projectinput3">Original Price</label> <input
																type="text" id="productOriginalPrice"
																class="form-control"
																placeholder="Product Original Price" name="email">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label for="projectinput4">Product Offer Price</label> <input
																type="text" id="productOfferPrice" class="form-control"
																placeholder="Product Offer Price" name="phone">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<div class="form-group">
															<label for="issueinput5">Gender</label> <select
																id="gender" name="productGender" class="form-control"
																data-toggle="tooltip" data-trigger="hover"
																data-placement="top" data-title="Priority">
																<core:if test="${not empty PRODUCT_ENTITY}">
																	<option value="${PRODUCT_ENTITY.productGender}"
																		selected="selected">${PRODUCT_ENTITY.productGender}</option>
																</core:if>
																<option value="Male">Male</option>
																<option value="Female">Female</option>
																<option value="Both">Both</option>
																<option value="None">None</option>
															</select>
														</div>
													</div>
													<div class="col-sm-4">
														<div class="form-group">
															<label for="issueinput5">Category</label> <select
																id="category" name="priority" class="form-control"
																data-toggle="tooltip" data-trigger="hover"
																data-placement="top" data-title="Priority">
															</select>
														</div>
													</div>
													<div class="col-sm-4">
														<div class="form-group">
															<label for="issueinput5">Active Status</label> <select
																id="isActive" name="productGender" class="form-control"
																data-toggle="tooltip" data-trigger="hover"
																data-placement="top" data-title="Priority">
																<core:if test="${not empty PRODUCT_ENTITY}">
																	<option value="${PRODUCT_ENTITY.productIsActive}"
																		selected="selected">${PRODUCT_ENTITY.productIsActive}</option>
																</core:if>
																<option value="1">Active</option>
																<option value="0">InActive</option>
															</select>
														</div>
													</div>
												</div>

												<div class="form-group">
													<label for="projectinput8">Product Description</label>
													<textarea id="productDescription" rows="5"
														class="form-control" name="comment"
														placeholder="About Product"></textarea>
												</div>
											</div>

											<div class="form-actions">
												<button type="button" class="btn btn-warning mr-1">
													<i class="icon-cross2"></i> Cancel
												</button>
												<button class="btn btn-primary" id="saveProductInfo"
													class="">
													<i class="icon-check2"></i> Save
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabVerticalLeft2"
								aria-labelledby="baseVerticalLeft-tab2">
								<div class="card"
									style="border: 1px burlywood solid; margin-top: 10px;">
									<div class="card-header">
										<h4 class="card-title" id="basic-layout-tooltip">Tag
											Mapper</h4>
										<a class="heading-elements-toggle"><i
											class="icon-ellipsis font-medium-3"></i></a>
										<div class="heading-elements">
											<ul class="list-inline mb-0">
												<li><a data-action="collapse"><i
														class="icon-minus4"></i></a></li>
												<li><a data-action="reload"><i class="icon-reload"></i></a></li>
												<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
												<li><a data-action="close"><i class="icon-cross2"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="card-body collapse in">
										<div class="card-block">
											<div
												class="alert alert-success alert-dismissible fade in mb-2"
												role="alert" id="product-add-success">
												<button type="button" class="close" data-dismiss="alert"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<strong>Well done!</strong> Product Details added
												successfully. Now please map Tags to the added product to
												make users job easy.
											</div>
											<div class="form-body">
												<div class="form-group">
													<label for="projectinput1">Product Name</label> <input
														type="text" id="savedProductName" class="form-control"
														placeholder="Product Name" name="fname"
														readonly="readonly"> <input type="hidden"
														id="productId">
												</div>
												<div class="form-group">
													<label for="issueinput5">Tags</label> <select
														id="issueinput5" name="tags" class="form-control"
														data-toggle="tooltip" data-trigger="hover"
														data-placement="top" data-title="tags" multiple="multiple">
													</select>
												</div>
											</div>

											<div class="form-actions">
												<button type="button" class="btn btn-warning mr-1">
													<i class="icon-cross2"></i> Cancel
												</button>
												<button class="btn btn-primary" id="saveProductTags">
													<i class="icon-check2"></i> Save
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane" id="tabVerticalLeft3"
								aria-labelledby="baseVerticalLeft-tab3">
								<div class="card"
									style="border: 1px burlywood solid; margin-top: 10px;">
									<div class="card-header">
										<h4 class="card-title" id="basic-layout-tooltip">Add
											Product Photo Here</h4>
										<a class="heading-elements-toggle"><i
											class="icon-ellipsis font-medium-3"></i></a>
										<div class="heading-elements">
											<ul class="list-inline mb-0">
												<li><a data-action="collapse"><i
														class="icon-minus4"></i></a></li>
												<li><a data-action="reload"><i class="icon-reload"></i></a></li>
												<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
												<li><a data-action="close"><i class="icon-cross2"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="card-body collapse in">
										<div class="card-block">
											<div
												class="alert alert-success alert-dismissible fade in mb-2"
												role="alert" id="product-map-success">
												<button type="button" class="close" data-dismiss="alert"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<strong>Well done!</strong> You have Successfully mapped
												Tags to the product. Now you are in the last step. Add 3
												photos related to the product
											</div>
											<div class="form-body">
												<form id="productPhotoForm" enctype="multipart/form-data">
													<div class="form-group">
														<input type="hidden" id="productIdPhoto" name="productId"
															value="1"> <label>Select Photo -1</label> <label
															id="projectinput7" class="file center-block"> <input
															type="file" onchange="viewPhoto1(event)"
															id="productPhoto1" accept="" name="productPhoto1">
															<span class="file-custom"></span>
															<button class="btn btn-success" data-toggle="modal"
																type="button" data-target="#default" id="view-photo-1">
																<i class="icon-check2"></i> View Photo-1
															</button>
														</label> <br> <label>Select Photo -2</label> <label
															id="projectinput7" class="file center-block"> <input
															name="productPhoto2" onchange="viewPhoto2(event)"
															type="file" id="productPhoto2"> <span
															class="file-custom"></span>
															<button class="btn btn-success" data-toggle="modal"
																type="button" data-target="#default2">
																<i class="icon-check2"></i> View Photo-2
															</button>
														</label><br> <label>Select Photo -3</label> <label
															id="projectinput7" class="file center-block"> <input
															name="productPhoto3" onchange="viewPhoto3(event)"
															type="file" id="productPhoto3"> <span
															class="file-custom"></span>
															<button class="btn btn-success" data-toggle="modal"
																type="button" data-target="#default3">
																<i class="icon-check2"></i> View Photo-3
															</button>
														</label>
													</div>
													<div class="form-actions">
														<button class="btn btn-warning mr-1">
															<i class="icon-cross2"></i> Cancel
														</button>
														<input type="button" class="btn btn-primary"
															id="mapProductPhoto" value="Save">
													</div>
												</form>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade text-xs-left" id="default" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">Basic Modal</h4>
			</div>
			<div class="modal-body">
				<center>
					<img alt="" id="view-img-1" src="" style="height: 300px;">
				</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn grey btn-outline-secondary"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade text-xs-left" id="default2" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">Basic Modal</h4>
			</div>
			<div class="modal-body">
				<center>
					<img alt="" id="view-img-2" src="" style="height: 300px;">
				</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn grey btn-outline-secondary"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade text-xs-left" id="default3" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">Basic Modal</h4>
			</div>
			<div class="modal-body">
				<center>
					<img alt="" id="view-img-3" src="" style="height: 300px;">
				</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn grey btn-outline-secondary"
					data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<spring:url
	value="/Resources/Admin/app-assets/js/core/libraries/jquery.min.js"
	var="JQUERY_JS" />
<script src="${JQUERY_JS}"></script>
<script>
$(document).ready(function() {

	 $("#saveProductInfo").show();
	 $("#product-add-success").hide();
	 $("#product-add-danger").hide();
	 $("#product-map-success").hide();
	 $("#saveProductTags").hide();
	 $("#mapProductPhoto").hide();
	 $("#mainDiv").show();
	 $(".loader").hide();
	 
	 dropdownService("#category","${pageContext.request.contextPath}/products/getCategories","GET", "", "ADD_PRODUCT_CATEGORY");

	 $("#productName").on({
	  "blur": validateProductName
	 });

	 $("#saveProductInfo").on({
	  "click": addBasicProductInfo
	 });

	 $("#saveProductTags").on({
	  "click": mapTagToProduct
	 });
	 
	 $("#mapProductPhoto").on({
		 "click" : mapProductPhotos
	 });
	 
	});
	
	var mapProductPhotos = async function(){
		var formData = new FormData($("#productPhotoForm")[0]);
		$(".loader").show();
		var response = await mapProductPhotoService("${pageContext.request.contextPath}/products/mapProductPhoto","POST",formData);
		if(response == "true"){
			$('.loader').fadeOut();
			location.replace("${pageContext.request.contextPath}/products/viewAllProducts")
		}
	}
	
	
	async function mapProductPhotoService(targetURL,targetType,data){
		
		var requestBody = {
				"targetURL":targetURL,
				"requestType" :targetType,
				"data":data,
		};
		
		var promise = new Promise((resolve, reject) => {
			$.ajax({
				url : requestBody.targetURL,
				type : requestBody.requestType,
				data : requestBody.data,
				processData : false,
				contentType : false,
				beforeSend : function(xhr) {
					xhr.setRequestHeader('X-CSRF-Token', $("meta[name='_csrf']").attr("content"));
				},
				success : function(response) {
					resolve(response);
				}
			});
		});
		
		var result = await promise;
		return result; 
	}
	
	

	var validateProductName = async function() {
	 var productName = $("#productName").val();
	 var status = await serviceCall("${pageContext.request.contextPath}/products/validateDuplicateProduct", "POST", "productName=" + productName);
	 if (status == 'true') {
	  $("#saveProductInfo").hide();
	  $("#product-add-danger").show();
	 } else {
	  $("#saveProductInfo").show();
	  $("#product-add-danger").hide();
	 }
	}


	async function addBasicProductInfo() {

	 var productName = $("#productName").val();
	 var productQuantity = $("#productQuantity").val();
	 var productOriginalPrice = $("#productOriginalPrice").val();
	 var productOfferPrice = $("#productOfferPrice").val();
	 var productDescription = $("#productDescription").val();
	 var productGender = $("#gender").children("option:selected").val();
	 var productCategory = $("#category").children("option:selected").val();
	 var productIsActive = $("#isActive").children("option:selected").val();

	 var isValidProduct = await serviceCall("${pageContext.request.contextPath}/products/validateDuplicateProduct", "POST", "productName=" + productName);
	 if (isValidProduct == "true") {
	  $("#saveProductInfo").hide();
	  $("#product-add-danger").show();
	 } else {
	  var param = "productName=" + productName + "&" + "productQuantity=" + productQuantity + "&" + "productOriginalPrice=" + productOriginalPrice + "&" + "productOfferPrice=" + productOfferPrice + "&" + "productDescription=" + productDescription + "&" + "productGender=" + productGender+"&"+"productCategory="+productCategory+"&"+"productIsActive="+productIsActive;
	  var status = await serviceCall("${pageContext.request.contextPath}/products/addNewProductBasicInfo", "POST", param);
	  status = JSON.parse(status);
	  if (status != "false") {
	   $("#product-add-success").show();
	   $("#product-add-danger").hide();
	   $("#saveProductInfo").hide();
	   $("#saveProductTags").show();
	   dropdownService("#issueinput5","${pageContext.request.contextPath}/products/getTags", "POST", "", "TAGS");
	   $("#baseVerticalLeft-tab1").removeClass('active');
	   $("#tabVerticalLeft1").removeClass('active');
	   $("#baseVerticalLeft-tab2").addClass('active');
	   $("#tabVerticalLeft2").addClass('active');

	   $("#savedProductName").val(status.productName);
	   $("#productId").val(status.productId);
	   $("#productIdPhoto").val(status.productId);

	  } else {
	   $("#product-add-success").hide();
	   $("#product-add-danger").show();
	  }
	 }
	}

	var mapTagToProduct = async function() {
	 var selectedTag = $("#issueinput5 :selected").map((_, e) => e.value).get();
	 var param = "tags=" + selectedTag + "&" + "productId=" + $("#productId").val();
	 var status = await serviceCall("${pageContext.request.contextPath}/products/mapTag", "POST", param);
	 if (status != "false") {
	  $("#baseVerticalLeft-tab2").removeClass('active');
	  $("#tabVerticalLeft2").removeClass('active');
	  $("#baseVerticalLeft-tab3").addClass('active');
	  $("#tabVerticalLeft3").addClass('active');
	  $("#product-map-success").show();
	  $("#saveProductTags").hide();
	  $("#mapProductPhoto").show();
	 }
	}

	var viewPhoto1 = function(input) {
	 var reader = new FileReader();
	 reader.onload = function() {
	  var output = document.getElementById('view-img-1');
	  output.src = reader.result;
	 };
	 reader.readAsDataURL(event.target.files[0]);
	}

	var viewPhoto2 = function(input) {
	 var reader = new FileReader();
	 reader.onload = function() {
	  var output = document.getElementById('view-img-2');
	  output.src = reader.result;
	 };
	 reader.readAsDataURL(event.target.files[0]);
	}

	var viewPhoto3 = function(input) {
	 var reader = new FileReader();
	 reader.onload = function() {
	  var output = document.getElementById('view-img-3');
	  output.src = reader.result;
	 };
	 reader.readAsDataURL(event.target.files[0]);
	}
</script>



