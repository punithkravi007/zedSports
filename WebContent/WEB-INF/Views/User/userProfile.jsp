<%@ taglib prefix="core" uri="coreTags"%>

<core:if test="${USER_ENTITY.userGender == 'Male'}">
	<core:set var="PROFILE_IMAGE"
		value="https://i.dlpng.com/static/png/4296950-avatar-business-face-people-icon-people-icon-png-512_512_preview.webp"></core:set>
</core:if>
<core:if test="${USER_ENTITY.userGender == 'Female'}">
	<core:set var="PROFILE_IMAGE"
		value="https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/11_avatar-512.png"></core:set>
</core:if>
<core:if test="${empty USER_ENTITY.userGender}">
	<core:set var="PROFILE_IMAGE"
		value="https://www.kindpng.com/picc/m/3-39853_add-user-group-woman-man-icon-user-add.png"></core:set>
</core:if>
<div class="container" style="margin: 50px;">
	<div class="container bootstrap snippets">
		<div class="row" id="user-profile">
			<div class="col-lg-3 col-md-4 col-sm-4">
				<div class="main-box clearfix">
					<h3><b>${USER_ENTITY.userFirstName}&nbsp;${USER_ENTITY.userLastName}&nbsp;&nbsp; <i class="fa fa-check-circle" aria-hidden="true" style="color: green"></i></b></h3>
					<span><small>Active Since : <span id="activeStatus" style="color: green"></span></small></span>
					<img src="${PROFILE_IMAGE}" alt=""
						class="profile-img img-responsive center-block">
					<div class="profile-details">
						<div class="profile-user-details clearfix">
							<div class="profile-user-details-label">
								<b>Email</b>
							</div>
							<div class="profile-user-details-value">${USER_ENTITY.userEmail}</div>
						</div>
						<div class="profile-user-details clearfix">
							<div class="profile-user-details-label">
								<b>Phone number</b>
							</div>
							<div class="profile-user-details-value">${USER_ENTITY.userMobileNumber}
							</div>
						</div>
						<div class="profile-user-details clearfix">
							<div class="profile-user-details-label">
								<b>Gender</b>
							</div>
							<div class="profile-user-details-value">${USER_ENTITY.userGender}
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-9 col-md-8 col-sm-8">
				<div class="main-box clearfix">
					<div class="tabs-wrapper profile-tabs">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab-activity" data-toggle="tab">Edit
									Profile</a></li>
							<li><a href="#tab-friends" data-toggle="tab">View
									Address</a></li>
							<li><a href="#tab-chat" data-toggle="tab">Add Address</a></li>
							<li><a href="#tab-queries" data-toggle="tab">Queries</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade in active" id="tab-activity">
								<div class="panel panel-warning" style="margin-top: 10px;">
									<div class="panel-heading"></div>
									<div class="panel-body">
										<div class="row">
											<div class="col-sm-3">
												<div class="form-group">
													<label for="firstName">First Name :</label> <input
														type="text" id="firstName" name="firstName"
														class="form-control" value="${USER_ENTITY.userFirstName}"
														placeholder="Your First Name" style="border-radius: 0px">
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<label for="lastName">Last Name :</label> <input
														type="text" placeholder="Your Last Name" id="lastName"
														name="lastName" value="${USER_ENTITY.userLastName}"
														class="form-control" style="border-radius: 0px">
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<label for="email">Email :</label> <input type="text"
														value="${USER_ENTITY.userEmail}"
														placeholder="Your Email Name" name="email" id="email"
														class="form-control" style="border-radius: 0px">
												</div>
											</div>
											<div class="col-sm-3">
												<div class="form-group">
													<label for="gender">Gender</label><select id="gender"
														style="border-radius: 0px;" class="form-control"
														name="gender">
														<core:if test="${not empty USER_ENTITY.userGender}">
															<option value="${USER_ENTITY.userGender}">${USER_ENTITY.userGender}</option>
														</core:if>
														<option value="Male">Male</option>
														<option value="Female">Female</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="panel-footer">
										<button class="btn btn-primary" id="basicInfoUpdate"
											style="border-radius: 0px; width: 100px">Update</button>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-friends">
								<div class="row" style="padding: 10px;">
									<core:if test="${empty USER_ENTITY.addressEntity}">
										<span>No Address were added yet.</span>
									</core:if>
									<core:forEach var="address"
										items="${USER_ENTITY.addressEntity}" varStatus="loop">
										<div class="col-sm-4"
											style="box-shadow: 1rem 1rem 1rem rgba(0, 0, 0, .175) !important; padding: 10px; margin-top: 10px;">
											<div class="box-part text-center">
												<div class="title">
													<h4 style="color: green">Address-${loop.count}</h4>
												</div>
												<div class="text" style="margin-top: 5px;">
													<span>${address.addressOne} ${address.addressTwo}
														${address.city}, ${address.state}, ${address.country}-
														${address.pincode} </span>
												</div>
											</div>
										</div>
									</core:forEach>
								</div>

							</div>

							<div class="tab-pane fade" id="tab-chat">
								<div class="panel panel-default" style="margin-top: 10px;">
									<div class="panel-heading"></div>
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
									<div class="panel-footer">
										<button class="btn btn-success" id="userAddressUpdate"
											style="border-radius: 0px; width: 100px">Update</button>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="tab-queries">
								<div class="row">
									<div class="col-md-12" style="margin-top: 5px;">
										<div class="panel-group" id="accordion" role="tablist"
											aria-multiselectable="true">
											<core:if test="${empty USER_ENTITY.queriesEntities}">
												<span>No Queries were added yet.</span>
											</core:if>
											<core:forEach var="query"
												items="${USER_ENTITY.queriesEntities}" varStatus="loop">
												<div class="panel panel-default">
													<div class="panel-heading" role="tab"
														id="heading-${loop.count}">
														<p class="panel-title">
															<a role="button" data-toggle="collapse"
																data-parent="#accordion" href="#collapse-${loop.count}"
																aria-expanded="false"
																aria-controls="collapse-${loop.count}">
																Query-${loop.count} : ${query.subject}</a>
														</p>
													</div>
													<div id="collapse-${loop.count}"
														class="panel-collapse collapse " role="tabpanel"
														aria-labelledby="heading-${loop.count}">
														<div class="panel-body" style="padding-top: 5px;">
															<div class="mesgs" style="width: 100%">
																<div class="msg_history" style="height: auto;">
																	<div class="incoming_msg">
																		<div class="incoming_msg_img">
																			<img src="${PROFILE_IMAGE}" alt="User">
																		</div>
																		<div class="received_msg">
																			<div class="received_withd_msg" style="width: 100%">
																				<p>${query.message}</p>
																				<span class="time_date" style="color: black">${query.queryCreatedDate}</span>
																			</div>
																		</div>
																	</div>
																	<core:if test="${not empty query.response}">
																		<div class="outgoing_msg">
																			<div class="sent_msg">
																				<div class="row">
																					<div class="col-sm-10">
																						<p>${query.response}</p>
																						<span class="time_date" style="color: black">${query.respondedTime}</span>
																					</div>
																					<div class="col-sm-2">
																						<div class="incoming_msg_img" style="width: 100%">
																							<img style="max-width: 50%"
																								src="https://ptetutorials.com/images/user-profile.png"
																								alt="sunil">
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</core:if>
																</div>
															</div>
														</div>
													</div>
												</div>
											</core:forEach>
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
<script>
    $(document).ready(function() {
    	
    	var userJoinedDate = "${USER_ENTITY.userDateOfJoined}".split("/");
    	userJoinedDate = new Date(userJoinedDate[1]+"/"+userJoinedDate[0]+"/"+userJoinedDate[2]);
    	var today = new Date();
    	today = new Date(parseInt(today.getMonth())+1+"/"+today.getDate()+"/"+today.getFullYear());
    	var Difference_In_Time = today.getTime() - userJoinedDate.getTime(); 
    	var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
    	$("#activeStatus").html(Difference_In_Days+" Days");
    	
    	console.log(Difference_In_Days);

        $("#basicInfoUpdate").on({
            "click": addUserBasicInfo
        });

        $("#userAddressUpdate").on({
            "click": addUserAddress
        });
    });

    var addUserBasicInfo = async function() {
        
    	var userFirstName = $("#firstName").val();
        var userLastName = $("#lastName").val();
        var email = $("#email").val();
        var gender = $("#gender").children("option:selected").val();
        
        var param ="userFirstName=" + userFirstName + "&" + "userLastName=" +userLastName + "&" + "userEmail=" + email + "&" +"userGender=" + gender+"&"+"uqi="+"${UNIQUE_ID}";

        var status = await serviceCall("${pageContext.request.contextPath}/user/addInfo", "POST", param);
        if (status == "true") {
            location.reload();
        }

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
</script>