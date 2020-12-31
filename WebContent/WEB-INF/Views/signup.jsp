<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>

<spring:url value="/Resources/assets/css/bootstrap.min.css"
	var="BOOTSTRAP_MIN_CSS" />
<link rel="stylesheet" href="${BOOTSTRAP_MIN_CSS}">

<spring:url value="/Resources/assets/css/fontawsom-all.min.css"
	var="FONTAWSOM_MIN_CSS" />
<link rel="stylesheet" href="${FONTAWSOM_MIN_CSS}">

<spring:url value="/Resources/assets/css/style.css" var="STYLE_CSS" />
<link rel="stylesheet" href="${STYLE_CSS}">
<style type="text/css">
.input-group>.custom-file, .input-group>.custom-select, .input-group>.form-cntrl
	{
	position: relative;
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	width: 1%;
	margin-bottom: 0;
}

.form-cntrl {
	display: block;
	width: 100%;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-left-color: rgb(206, 212, 218);
	border-left-style: solid;
	border-left-width: 1px;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.form-cntrl:focus {
	border-color: green;
	border: 2px solid;
}
</style>
<style>
.err-msg {
	font-size: smaller;
	font-style: italic;
	color: red;
}
</style>

</head>
<body>
	<div class="container ">
		<div class="row cdvfdfd">
			<div class="col-lg-10 col-md-12 col-sm-8 login-box">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 log-det">
						<div class="small-logo">
							<img alt="" height="60px" style="border-radius: 30px;"
								src="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif">
						</div>
						<p class="dfmn">Shop when you stop.</p>
						<p>
							<font color="darkgreen">-- Register Here --</font>
						</p>
						<form action="" method="post" id="register-form">
							<p class="err-msg" id="reg-err-msg"
								style="padding: 5px; background-color: antiquewhite"></p>
							<div class="text-box-cont">
								<div class="input-group mb-3">
									<input type="text" class="form-cntrl" id="mobileNumber"
										name="userMobileNumber" placeholder="Enter Mobile Number"
										aria-label="mobileNumber" aria-describedby="basic-addon1">
									<div class="input-group-prepend">
										<span class="input-group-text mobile-num-validate"
											id="basic-addon1"><a href="#"><i
												class="fas fa-arrow-right"></i></a></span>
									</div>
								</div>
								<div class="input-group mb-3" id="input-otp-div">
									<input type="text" class="form-control" id="otp"
										placeholder="Enter OTP" aria-label="otp"
										aria-describedby="basic-addon2">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon2"><i
											class="fa fa-arrow-right"></i></span>
									</div>
								</div>
								<div class="input-group mb-3" id="input-password-div">
									<input type="password" class="form-cntrl"
										placeholder="Set Password" name="userPasword" id="password"
										aria-label="password" aria-describedby="basic-addon3">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon3"><i
											class="fa fa-eye"></i></span>
									</div>
								</div>
								<div class="input-group center">
									<div class="col-sm-6 col-md-6">
										<button class="btn btn-info"
											style="border-radius: 0px; width: 100%; float: right;"
											id="register-login-button">SIGN UP</button>
									</div>
									<div class="col-sm-6 col-md-6">
										<a href="${pageContext.request.contextPath}/"
											style="border-radius: 0px; float: right;"
											class="btn btn-danger">CANCEL</a>
									</div>
								</div>
								<div class="row">
									<p class="forget-p">
										Do you have an account? <span><a
											href="${pageContext.request.contextPath}/signin">Sign In
												Now</a></span>
									</p>
								</div>
							</div>
						</form>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 box-de">
						<div class="inn-cover">
							<div class="ditk-inf"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--===============================================================================================-->
	<spring:url value="/Resources/assets/js/jquery-3.2.1.min.js"
		var="JQUERY_MIN_JS" />
	<script type="text/javascript" src="${JQUERY_MIN_JS}"></script>

	<spring:url value="/Resources/assets/js/popper.min.js"
		var="POPPER_MIN_JS" />
	<script src="${POPPER_MIN_JS}"></script>

	<spring:url value="/Resources/assets/js/bootstrap.min.js"
		var="BOOTSTRAP_MIN_JS" />
	<script src="${BOOTSTRAP_MIN_JS}"></script>

	<spring:url value="/Resources/assets/js/script.js" var="SELECT_MIN_JS" />
	<script src="${SELECT_MIN_JS}"></script>

	<spring:url value="/Resources/zed/js/Validations/commonValidations.js"
		var="COMMON_VALIDATION_JS" />
	<script src="${COMMON_VALIDATION_JS}"></script>

	<spring:url value="/Resources/zed/js/Validations/signup.js"
		var="SIGN_UP_VALIDATION_JS" />
	<script src="${SIGN_UP_VALIDATION_JS}"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			
			$("#reg-err-msg").hide();
			
			$("#input-otp-div").hide();
			$("#input-password-div").hide();
			

			$(".mobile-num-validate").on({
				"click" : validateMobileNumber
			});

			$("#otp").on({
				"blur" : validateOTP
			});
		});

		var validateMobileNumber = async function() {
			
			var action;
			var enteredMobileNumber = $("#mobileNumber").val();
			
			var isValidMobileNumber = isMobileNumberValid(enteredMobileNumber);
			
			if(isValidMobileNumber){
				var isRegistered = await isUserRegistered(enteredMobileNumber);
				
				if(isRegistered == "true"){
					action = "${pageContext.request.contextPath}/user/login";
					$("#input-otp-div").hide();
					$("#reg-err-msg").html("This Number Is Already Registered With Us. Enter Password and Proceed to Login or Try Different Number to Register.");
					$("#reg-err-msg").show();
					$("#input-password-div").show();
					$("#register-login-button").text("SIGN IN");
				}else{
					action = "${pageContext.request.contextPath}/user/register";
					$("#input-otp-div").show();
					$("#mobileNumber-duplicate-err").hide();
					$("#input-password-div").hide();
					$("#register-login-button").text("SIGN UP");
				}
			}
			
			$("#register-form").attr("action",action);
		}

		var validateOTP = function() {
			$("#input-password-div").show();
		}

		var isUserRegistered = function(mobileNumber) {
			return new Promise(resolve => {
					var url = "${pageContext.request.contextPath}/validate/isUserRegistered";
					var params = "userMobileNumber="+mobileNumber;
					var xhr = new XMLHttpRequest();
					xhr.open("POST", url, true);
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
					xhr.send(params);
					xhr.onreadystatechange = function() {
					    if (xhr.readyState == 4) {
					        if (xhr.status == 200) {
					        	resolve(xhr.response);
					        }
					    }
					}
			});
		}
	</script>

</body>
</html>
