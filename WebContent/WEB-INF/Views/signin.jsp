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

</head>
<body>
	<div class="container ">
		<div class="row cdvfdfd">
			<div class="col-lg-10 col-md-12 col-sm-8 login-box">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 box-de">
						<div class="inn-cover inn-cover-signin">
							<div class="ditk-inf"></div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 log-det">
						<div class="small-logo">
							<img alt="" height="60px" style="border-radius: 30px;"
								src="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif">
						</div>
						<p class="dfmn">Shop when you stop.</p>
						<p>
							<font color="darkpink">-- Login Here --</font>
						</p>
						<core:if test="${not empty LOGIN_ERROR}">
						<div class="alert alert-danger" role="alert" id="login-fail-err">${LOGIN_ERROR}</div>
						</core:if>
						<form action="${pageContext.request.contextPath}/user/login" method="post">
							<div class="text-box-cont">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1"><i
											class="fas fa-user"></i></span>
									</div>
									<input type="text" class="form-control"
										placeholder="Enter Mobile Number" id="mobileNumber" name="userMobileNumber"
										aria-label="mobileNumber" aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon2"><i
											class="fas fa-lock"></i></span>
									</div>
									<input type="text" class="form-control"
										placeholder="Enter Password" id="password" name="userPasword"
										aria-label="password" aria-describedby="basic-addon2">
								</div>

								<div class="input-group center">
									<button class="btn btn-info btn-round">SIGN IN</button>
								</div>
								<div class="input-group center">
									<a href="${pageContext.request.contextPath}/"
										class="btn btn-danger btn-round">Cancel</a>
								</div>
								<div class="row">
									<p class="forget-p">
										Don't have an account? <span><a
											href="${pageContext.request.contextPath}/signup">Sign Up
												Now</a></span>
									</p>
								</div>
							</div>
						</form>
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

</body>
</html>
