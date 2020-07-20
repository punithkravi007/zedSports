<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="card">
	<div class="card-header">
		<h4 class="card-title" id="basic-layout-form">Add Product
			Tag</h4>
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
					role="alert" id="tag-add-success">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong>Well done!</strong> You successfully added New Tag
				</div>
				<div class="alert alert-danger alert-dismissible fade in mb-2"
					role="alert" id="tag-add-failure">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong>Oops!</strong> This is a duplicate Tag
				</div>
				<p>
					Here you can add
					<code>Product Tag</code>
					. Users often search products based on tag.
				</p>
			</div>
			<div class="form-body">
				<h4 class="form-section"></h4>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="projectinput5">Existing Tag</label> <select
								id="projectinput5" name="interested" class="form-control">

							</select>
						</div>
					</div>

					<div class="col-md-4">
						<div class="form-group">
							<label for="projectinput6">Add New Tag</label> <input
								type="text" id="projectinput6" class="form-control"
								placeholder="Enter Tag Name" name="lname">
						</div>
					</div>
					<div class="col-md-4">
						<button class="btn btn-primary" id="addTag"
							onclick="javascript:addProductTag()"
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
		$("#tag-add-success").hide();
		$("#tag-add-failure").hide();
		dropdownService("#projectinput5","${pageContext.request.contextPath}/products/getTags", "POST", "", "TAGS");
	});
	
	async function addProductTag(){
		var enteredTag = $("#projectinput6").val();
		if(enteredTag!=null && enteredTag != "undefined" && enteredTag.length > 0){
			var param = "tag="+enteredTag;
			var status = await serviceCall("${pageContext.request.contextPath}/products/addNewTag","POST",param);
			if(status == "true"){
				$("#tag-add-success").show();
				$("#tag-add-failure").hide();
			}else{
				$("#tag-add-success").hide();
				$("#tag-add-failure").show();
			}
		}
		dropdownService("#projectinput5","${pageContext.request.contextPath}/products/getTags", "POST", "", "TAGS");
		$("#projectinput6").val("");
	}
	
</script>