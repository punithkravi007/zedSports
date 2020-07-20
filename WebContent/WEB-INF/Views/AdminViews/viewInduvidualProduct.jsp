<%@ taglib prefix="core" uri="coreTags"%>
<div class="card border-grey border-lighten-2">
	<div class="card-header">
		<h4 class="card-title" style="padding-bottom: 10px;">Product
			Details</h4>
		<a class="heading-elements-toggle"><i
			class="icon-ellipsis font-medium-3"></i></a>
		<div class="heading-elements">
			<ul class="list-inline pt-1">
				<li><a
					href="${pageContext.request.contextPath}/products/viewAllProducts"><i
						class="icon-arrow-left4" title="back"></i></a></li>
				<li><a data-action="reload"><i class="icon-repeat2"></i></a></li>
				<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
			</ul>
		</div>
	</div>
	<div class="card-body collapse in">
		<div class="card-block">
			<div class="row">
				<div class="col-lg-6 col-xs-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox" style="height: 440px">
							<div class="carousel-item active">
								<img src="${PRODUCT_ENTITY.photoEntity.binaryPhoto1}"
									height="400px" alt="First slide">
							</div>
							<div class="carousel-item">
								<img src="${PRODUCT_ENTITY.photoEntity.binaryPhoto2}"
									height="400px" alt="Second slide">
							</div>
							<div class="carousel-item">
								<img src="${PRODUCT_ENTITY.photoEntity.binaryPhoto3}"
									height="400px" alt="Third slide">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span class="icon-prev"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="icon-next" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="col-lg-6 col-xs-12">
					<h3 class="my-1">${PRODUCT_ENTITY.productName}</h3>
					<p>
						<b>Price : </b>&#8377; ${PRODUCT_ENTITY.productOriginalPrice}
					</p>
					<p>
						<b>Offer Price : </b>&#8377; ${PRODUCT_ENTITY.productOfferPrice}
					</p>
					<p>
						<core:if test="${PRODUCT_ENTITY.productQuantity gt '0'}">
							<p>
								<b>Availability: </b> <font color="green">In Stock</font>
							</p>
							<p>
								<b>Quantity : </b> ${PRODUCT_ENTITY.productQuantity}
							</p>
						</core:if>
						<core:if test="${PRODUCT_ENTITY.productQuantity eq '0'}">
							<p>
								<b>Availability: </b> <font color="red">Out Of stock</font>
							</p>
						</core:if>
					<div class="row">
						<div class="col-sm-2" style="width: 73px">
							<p style="margin-top: 4px;">
								<b>Color :</b>
							</p>
						</div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: red;padding: 4px;margin-right: 2px;padding-left: 10px"></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: green;padding: 4px;padding-left: 9px"></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: white;padding: 4px;margin-left: 2px;padding-left: 9px"></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: yellow;padding: 4px;margin-left: 2px;padding-left: 8px"></div>
					</div>
					<div class="row">
						<div class="col-sm-1" style="width: 73px">
							<p style="margin-top: 4px;">
								<b>Size :</b>
							</p>
						</div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: mintcream;padding: 4px;margin-right: 2px;padding-left: 10px"><a>S</a></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: mintcream;padding: 4px;padding-left: 9px"><a>M</a></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: mintcream;padding: 4px;margin-left: 2px;padding-left: 9px"><a>L</a></div>
						<div class="col-sm-1" style="border-radius:100%;border:1px solid black;width: 30px;height: 30px;background-color: mintcream;padding: 4px;margin-left: 2px;padding-left: 8px"><a>XL</a></div>
					</div>
					<p>
						<b>Category : </b> ${PRODUCT_ENTITY.productCategory}
					</p>
					<p>
						<b>Tags : </b>
						<core:forEach var="tag" items="${PRODUCT_ENTITY.tagEntities}">
						${tag.tag}&nbsp;&nbsp;&nbsp;
						</core:forEach>
					</p>
					<hr>
					<h4><b>Description : </b></h4>
					<p style="font-family: fantasy;font-style: italic;">${PRODUCT_ENTITY.productDescription}</p>
				</div>
			</div>
		</div>
	</div>
</div>