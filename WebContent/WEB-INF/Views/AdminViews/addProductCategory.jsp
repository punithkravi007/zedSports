<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="card">
	<div class="card-header">
		<h4 class="card-title" id="basic-layout-form">Add Product
			Category</h4>
		<a class="heading-elements-toggle"><i
			class="icon-ellipsis font-medium-3"></i></a>
		<div class="heading-elements">
			<ul class="list-inline mb-0">
				<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
				<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
				<li><a data-action="close"><i class="icon-cross2"></i></a></li>
			</ul>
		</div>
	</div>
	<div class="card-body collapse in">
		<div class="card-block">
			<div class="card-text">
				<div class="alert alert-success alert-dismissible fade in mb-2"
					role="alert" id="category-add-success">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong>Well done!</strong> You successfully added New Category
				</div>
				<div class="alert alert-danger alert-dismissible fade in mb-2"
					role="alert" id="category-add-failure">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong>Oops!</strong> This is a duplicate Category
				</div>
				<p>
					Here you can add
					<code>Product Category</code>
					. Users often search products based on Category.
				</p>
			</div>
			<div class="form-body">
				<h4 class="form-section"></h4>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="projectinput5">Existing Category</label> <select
								id="existingProductCategory" name="interested"
								class="form-control">

							</select>
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label for="projectinput6">Add New Category</label> <input
								type="text" id="newCategory" class="form-control"
								placeholder="Enter Category Name" name="lname">
						</div>
					</div>
					<div class="col-md-4">
						<button class="btn btn-primary" id="addTag"
							onclick="javascript:addProductCategory()"
							style="margin-top: 26px;">
							<i class="icon-check2"></i> Add
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<spring:url value="/Resources/js/vendor/jquery-3.2.1.min.js"
		var="JQUERY_JS" />
	<script src="${JQUERY_JS}"></script>
	<script>
	$(document).ready(function() {
		 $("#category-add-success").hide();
		 $("#category-add-failure").hide();
		 $("#category-specification-add-success").hide();
		 $("#category-specification-add-failure").hide();

		 dropdownService(
		  "#categoryForSpecification",
		  "${pageContext.request.contextPath}/products/getCategories",
		  "GET", "", "CATEGORY");
		 dropdownService(
		  "#existingProductCategory",
		  "${pageContext.request.contextPath}/products/getCategories",
		  "GET", "", "CATEGORY");
		});

		async function addProductCategory() {
		 var enteredCategory = $("#newCategory").val();
		 if (enteredCategory != null && enteredCategory != "undefined" &&
		  enteredCategory.length > 0) {
		  var param = "category=" + enteredCategory;
		  var status = await
		  serviceCall(
		   "${pageContext.request.contextPath}/products/addNewCategory",
		   "POST", param);
		  if (status == "true") {
		   $("#category-add-success").show();
		   $("#category-add-failure").hide();
		  } else {
		   $("#category-add-success").hide();
		   $("#category-add-failure").show();
		  }
		 }
		 dropdownService(
		  "#existingProductCategory",
		  "${pageContext.request.contextPath}/products/getCategories",
		  "GET", "", "CATEGORY");
		 $("#newCategory").val("");
		}	</script>