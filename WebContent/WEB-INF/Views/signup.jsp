<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
.box-de {
	border-top-left-radius: 0px;
	border-bottom-left-radius: 0px;
	border-top-right-radius: 25px;
	border-bottom-right-radius: 25px;
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
							<font color="darkpink">-- Register Here --</font>
						</p>
						<div class="alert alert-warning" role="alert" id="mobileNumber-duplicate-err">This Number is Already Registered with us. Continue to Login or Change Number to Register.</div>
						<form action="" method="post" id="register-form">
							<div class="text-box-cont">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1"><i
											class="fas fa-phone"></i></span>
									</div>
									<input type="text" class="form-control" id="mobileNumber"
										name="userMobileNumber" placeholder="Enter Mobile Number"
										aria-label="mobileNumber" aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3" id="input-otp-div">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon2"><i
											class="fa fa-circle-thin"></i></span>
									</div>
									<input type="text" class="form-control" id="otp"
										placeholder="Enter OTP" aria-label="otp"
										aria-describedby="basic-addon2">
								</div>
								<div class="input-group mb-3" id="input-password-div">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon3"><i
											class="fas fa-lock"></i></span>
									</div>
									<input type="text" class="form-control"
										placeholder="Set Password" name="userPasword" id="password"
										aria-label="password" aria-describedby="basic-addon3">
								</div>

								<div class="input-group center">
									<button class="btn btn-info btn-round" id="register-login-button">SIGN UP</button>
								</div>
								<div class="input-group center">
									<a href="${pageContext.request.contextPath}/"
										class="btn btn-danger btn-round">Cancel</a>
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
						<div class="inn-cover"
							style="border-bottom-left-radius: 25px; border-top-left-radius: 25px; border-bottom-right-radius: 0px; border-top-right-radius: 0px;">
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
	<script type="text/javascript">
		$(document).ready(function() {
			$("#input-otp-div").hide();
			$("#input-password-div").hide();
			$("#mobileNumber-duplicate-err").hide();

			$("#mobileNumber").on({
				"blur" : validateMobileNumber
			});

			$("#otp").on({
				"blur" : validateOTP
			});
		});

		var validateMobileNumber = async function() {

			var action;
			var enteredMobileNumber = $("#mobileNumber").val();
			var isRegistered = await isUserRegistered(enteredMobileNumber);
			
			if(isRegistered == "true"){
				action = "${pageContext.request.contextPath}/user/login";
				$("#input-otp-div").hide();
				$("#mobileNumber-duplicate-err").show();
				$("#input-password-div").show();
				$("#register-login-button").text("SIGN IN");
			}else{
				action = "${pageContext.request.contextPath}/user/register";
				$("#input-otp-div").show();
				$("#mobileNumber-duplicate-err").hide();
				$("#input-password-div").hide();
				$("#register-login-button").text("SIGN UP");
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
