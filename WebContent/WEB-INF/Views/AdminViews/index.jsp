<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">


<!-- BEGIN VENDOR CSS-->
<spring:url value="/Resources/Admin/app-assets/css/bootstrap.css"
	var="BOOTSTRAP_MIN_CSS" />
<link rel="stylesheet" href="${BOOTSTRAP_MIN_CSS}">

<spring:url value="/Resources/Admin/app-assets/fonts/icomoon.css"
	var="icomoon" />
<link rel="stylesheet" href="${icomoon}">

<spring:url
	value="/Resources/Admin/app-assets/fonts/flag-icon-css/css/flag-icon.min.css"
	var="flag_icon" />
<link rel="stylesheet" href="${flag_icon}">

<spring:url
	value="/Resources/Admin/app-assets/vendors/css/extensions/pace.css"
	var="pace" />
<link rel="stylesheet" href="${pace}">
<!-- END VENDOR CSS-->

<spring:url
	value="/Resources/Admin/app-assets/css/bootstrap-extended.css"
	var="bootstrap_extended" />
<link rel="stylesheet" href="${bootstrap_extended}">

<spring:url value="/Resources/Admin/app-assets/css/app.css" var="app" />
<link rel="stylesheet" href="${app}">


<spring:url value="/Resources/Admin/app-assets/css/colors.css"
	var="colors" />
<link rel="stylesheet" href="${colors}">

<!-- END ROBUST CSS-->

<spring:url
	value="/Resources/Admin/app-assets/css/core/menu/menu-types/vertical-menu.css"
	var="vertical_menu" />
<link rel="stylesheet" href="${vertical_menu}">

<spring:url
	value="/Resources/Admin/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css"
	var="vertical_overlay_menu" />
<link rel="stylesheet" href="${vertical_overlay_menu}">

<spring:url
	value="/Resources/Admin/app-assets/css/core/colors/palette-gradient.css"
	var="palette_gradient" />
<link rel="stylesheet" href="${palette_gradient}">

<spring:url value="/Resources/Admin/assets/css/style.css" var="style" />
<link rel="stylesheet" href="${style}">


<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<link
	href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">

<link
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

<spring:url
	value="/Resources/Admin/app-assets/js/core/libraries/jquery.min.js"
	var="JQUERY_JS" />
<script src="${JQUERY_JS}"></script>

<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

<!-- END Custom CSS-->
<style type="text/css">
/* font Awesome http://fontawesome.io*/
@import
	url(//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css)
	;
/* Animation.css*/
@import
	url(https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css)
	;

.col-item {
	border: 1px solid #E1E1E1;
	background: #FFF;
	margin-bottom: 12px;
}

.col-item .options {
	position: absolute;
	top: 6px;
	right: 22px;
}

.col-item .photo {
	overflow: hidden;
}

.col-item .photo .options {
	display: none;
}

.col-item .photo img {
	margin: 0 auto;
	width: 100%;
}

.col-item .options-cart {
	position: absolute;
	left: 22px;
	top: 6px;
	display: none;
}

.col-item .photo:hover .options, .col-item .photo:hover .options-cart {
	display: block;
	-webkit-animation: fadeIn .5s ease;
	-moz-animation: fadeIn .5s ease;
	-ms-animation: fadeIn .5s ease;
	-o-animation: fadeIn .5s ease;
	animation: fadeIn .5s ease;
}

.col-item .options-cart-round {
	position: absolute;
	left: 42%;
	top: 22%;
	display: none;
}

.col-item .options-cart-round button {
	border-radius: 50%;
	padding: 14px 16px;
}

.col-item .options-cart-round button .fa {
	font-size: 22px;
}

.col-item .photo:hover .options-cart-round {
	display: block;
	-webkit-animation: fadeInDown .5s ease;
	-moz-animation: fadeInDown .5s ease;
	-ms-animation: fadeInDown .5s ease;
	-o-animation: fadeInDown .5s ease;
	animation: fadeInDown .5s ease;
}

.col-item .info {
	padding: 10px;
	margin-top: 1px;
}

.col-item .price-details {
	width: 100%;
	margin-top: 5px;
}

.col-item .price-details h1 {
	font-size: 14px;
	line-height: 20px;
	margin: 0;
	float: left;
}

.col-item .price-details .details {
	margin-bottom: 0px;
	font-size: 12px;
}

.col-item .price-details span {
	float: right;
}

.col-item .price-details .price-new {
	font-size: 16px;
}

.col-item .price-details .price-old {
	font-size: 18px;
	text-decoration: line-through;
}

.col-item .separator {
	border-top: 1px solid #E1E1E1;
}

.col-item .clear-left {
	clear: left;
}

.col-item .separator a {
	text-decoration: none;
}

.col-item .separator p {
	margin-bottom: 0;
	margin-top: 6px;
	text-align: center;
}

.col-item .separator p i {
	margin-right: 5px;
}

.col-item .btn-add {
	width: 60%;
	float: left;
}

.col-item .btn-add a {
	display: inline-block !important;
}

.col-item .btn-add {
	border-right: 1px solid #E1E1E1;
}

.col-item .btn-details {
	width: 40%;
	float: left;
	padding-left: 10px;
}

.col-item .btn-details a {
	display: inline-block !important;
}

.col-item .btn-details a:first-child {
	margin-right: 12px;
}
</style>
<style>
/*  */
.brand-logo {
	border-bottom-left-radius: 25px;
	border-top-right-radius: 25px;
	height: 40px;
}

#example_length, #example_filter {
	display: none;
}

#example_paginate {
	margin-left: 455px;
}

.data {
	border: 1px solid azure;
}

.img-fluid, .carousel-inner>.carousel-item>img, .carousel-inner>.carousel-item>a>img
	{
	height: 440px;
	width: 500px;
}
</style>
<style>
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 1000;
	background:
		url('https://i.pinimg.com/originals/65/ba/48/65ba488626025cff82f091336fbf94bb.gif')
		50% 50% no-repeat rgba(255, 255, 255, 0.5);;
}
</style>
<style type="text/css">
.order-stats {
	height: 117px;
}
</style>
<!-- OREDERS ACCORDINO -->
<style type="text/css">
body {
	background: #f1f1f2;
}

h4 {
	text-align: center;
	margin: 30px 0px;
	color: #444;
}

.mt-10 {
	margin-top: 20px;
}

a:hover, a:focus {
	text-decoration: none;
	outline: none;
}

#accordion .panel {
	border: none;
	border-radius: 3px;
	box-shadow: none;
	margin-bottom: 15px;
}

#accordion .panel-heading {
	padding: 0;
	border: none;
	border-radius: 3px;
}

#accordion .panel-title a {
	display: block;
	padding: 12px 15px;
	background: #fff;
	font-size: 18px;
	font-weight: 400;
	color: #f81ac1;
	/*border: 1px solid #ececec;*/
	box-shadow: 0 0 10px rgba(0, 0, 0, .05);
	position: relative;
	transition: all 0.5s ease 0s;
	box-shadow: 0 1px 2px rgba(43, 59, 93, 0.30);
}

#accordion .panel-title a.collapsed {
	box-shadow: none;
	color: #676767;
	box-shadow: 0 1px 2px rgba(43, 59, 93, 0.30);
}

#accordion .panel-title a:before, #accordion .panel-title a.collapsed:before
	{
	content: "\f067";
	font-family: "Font Awesome 5 Free";
	width: 25px;
	height: 25px;
	line-height: 28px;
	font-size: 15px;
	font-weight: 900;
	color: #f81ac1;
	text-align: center;
	position: absolute;
	top: 8px;
	right: 15px;
	transform: rotate(135deg);
	transition: all 0.3s ease 0s;
}

#accordion .panel-title a.collapsed:before {
	color: #676767;
	transform: rotate(0);
}

#accordion .panel-title a:after {
	content: "";
	width: 1px;
	height: 100%;
	background: #ececec;
	position: absolute;
	top: 0;
	right: 55px;
}

#accordion .panel-body {
	padding: 0px 15px;
	border: none;
	font-size: 15px;
	color: #615f5f;
	line-height: 27px;
}

/******************* Accordion Demo - 2 *****************/
#accordion2 .panel-title a {
	display: block;
	padding: 12px 15px 12px 50px;
	background: linear-gradient(to bottom, #fefefe, #cdcdcd);
	border: 1px solid #c3c3c3;
	border-radius: 3px;
	font-size: 18px;
	font-weight: 400;
	color: #676767;
	text-shadow: 1px 1px 1px #fff;
	position: relative;
}

#accordion2 .panel-title a:before {
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	width: 25px;
	height: 25px;
	line-height: 25px;
	border-radius: 50%;
	background: #929191;
	font-size: 12px;
	font-weight: 900;
	color: #fdfbfb;
	text-align: center;
	box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.5);
	text-shadow: none;
	position: absolute;
	top: 8px;
	left: 15px;
}

#accordion2 .panel-title a.collapsed:before {
	content: "\f067";
}

#accordion2 .panel-body {
	padding: 0px 15px;
	font-size: 15px;
	color: #222;
	line-height: 27px;
	border: none;
}

#accordion2 .panel-body p {
	margin-bottom: 0;
}

/******************* Accordion Demo - 3 *****************/
#accordion3 {
	padding-left: 80px;
	overflow: hidden;
	position: relative;
	z-index: 1;
}

#accordion3:before {
	content: "";
	width: 5px;
	height: 100%;
	background: #004e89;
	position: absolute;
	top: 0;
	left: 22px;
	z-index: -1;
}

#accordion3 .panel-title a {
	display: block;
	padding: 10px 30px 15px 0;
	background: #fff;
	font-size: 18px;
	font-weight: 500;
	color: #004e89;
	position: relative;
	transition: all 0.5s ease 0s;
	box-shadow: 0 1px 2px rgba(43, 59, 93, 0.30);
}

#accordion3 .panel-title a:before {
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 50px;
	height: 50px;
	line-height: 40px;
	border-radius: 50%;
	background: #cad5c2;
	text-align: center;
	font-size: 17px;
	color: #004e89;
	border: 6px solid #004e89;
	position: absolute;
	top: 0;
	left: -80px;
}

#accordion3 .panel-title a.collapsed:before {
	content: "\f067";
	background: #fff;
}

#accordion3 .panel-body {
	padding: 0px 15px;
	background: #eee;
	border: none;
	border-radius: 2px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5) inset, 0 1px 2px
		rgba(255, 255, 255, 0.9);
	font-size: 14px;
	color: #487677;
	line-height: 25px;
}

/******************* Accordion Demo - 4 *****************/
#accordion4 .panel {
	border: none;
	border-radius: 0;
	box-shadow: none;
	margin: 0 0 10px;
	overflow: hidden;
	position: relative;
}

#accordion4 .panel-heading {
	padding: 0;
	border: none;
	border-radius: 0;
	margin-bottom: 10px;
	z-index: 1;
	position: relative;
}

#accordion4 .panel-heading:before, #accordion4 .panel-heading:after {
	content: "";
	width: 50%;
	height: 20%;
	box-shadow: 0 15px 5px rgba(0, 0, 0, 0.4);
	position: absolute;
	bottom: 15px;
	left: 10px;
	transform: rotate(-3deg);
	z-index: -1;
}

#accordion4 .panel-heading:after {
	left: auto;
	right: 10px;
	transform: rotate(3deg);
}

h4.panel-title {
	margin: 10px 0px !important;
}

#accordion4 .panel-title a {
	display: block;
	padding: 15px 70px 15px 70px;
	margin: 0;
	background: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #d11149;
	border-radius: 0;
	box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1), 0 0 40px rgba(0, 0, 0, 0.1)
		inset;
	position: relative;
}

#accordion4 .panel-title a:before, #accordion4 .panel-title a.collapsed:before
	{
	content: "\f106";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 55px;
	height: 100%;
	text-align: center;
	line-height: 50px;
	border-left: 2px solid #D11149;
	position: absolute;
	top: 0;
	right: 0;
}

#accordion4 .panel-title a.collapsed:before {
	content: "\f107";
}

#accordion4 .panel-title a .icon {
	display: inline-block;
	width: 55px;
	height: 100%;
	border-right: 2px solid #d11149;
	font-size: 20px;
	color: rgba(0, 0, 0, 0.7);
	line-height: 50px;
	text-align: center;
	position: absolute;
	top: 0;
	left: 0;
}

#accordion4 .panel-body {
	padding: 10px 15px;
	margin: 0 0 20px;
	border-bottom: 3px solid #d11149;
	border-top: none;
	background: #fff;
	font-size: 15px;
	color: #333;
	line-height: 27px;
}

/******************* Accordion Demo - 5 *****************/
#accordion5 .panel {
	border: none;
	border-radius: 0;
	box-shadow: none;
	margin: 0 0 15px 50px;
}

#accordion5 .panel-title a {
	display: block;
	padding: 10px 20px 10px 60px;
	background: #fe5f55;
	border-radius: 30px;
	border: 2px solid #fe5f55;
	font-size: 20px;
	font-weight: 400;
	color: #fff;
	position: relative;
}

#accordion5 .panel-title a.collapsed {
	border: 2px solid #bbb;
	background: #fff;
	color: #bbb;
}

#accordion5 .panel-title a:before, #accordion5 .panel-title a.collapsed:before
	{
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 60px;
	height: 60px;
	line-height: 60px;
	border-radius: 50%;
	background: #fe5f55;
	font-size: 18px;
	color: #fff;
	text-align: center;
	border-right: 3px solid #fff;
	position: absolute;
	top: -10px;
	left: -30px;
	z-index: 1;
	transition: all 0.3s ease 0s;
}

#accordion5 .panel-title a.collapsed:before {
	content: "\f067";
	background: #bbb;
	border: none;
}

#accordion5 .panel-body {
	padding: 10px 15px 0;
	margin: 0 0 0 30px;
	border: none;
	font-size: 14px;
	color: #333;
	line-height: 28px;
	position: relative;
}

#accordion5 .panel-body:before {
	content: "";
	display: block;
	width: 5px;
	height: 90%;
	background: #fe5f55;
	position: absolute;
	top: 0;
	left: -30px;
}

#accordion5 .panel-body:after {
	content: "";
	border-top: 20px solid #fe5f55;
	border-left: 20px solid transparent;
	border-right: 20px solid transparent;
	position: absolute;
	bottom: 0;
	left: -48px;
}
/******************* Accordion Demo - 6 *****************/
#accordion6 .panel {
	border: 1px solid #bf6026;
	border-radius: 0;
	box-shadow: none;
	margin-left: 50px;
	margin-bottom: 12px;
}

#accordion6 .panel-heading {
	padding: 0;
	background: #fff;
	position: relative;
}

#accordion6 .panel-heading:before, #accordion6 .panel-heading:after {
	content: "";
	border-right: 8px solid #bf6026;
	border-bottom: 8px solid transparent;
	border-top: 8px solid transparent;
	position: absolute;
	top: 12px;
	left: -9px;
}

#accordion6 .panel-heading:after {
	border-right: 7px solid #fff;
	border-bottom: 7px solid transparent;
	border-top: 7px solid transparent;
	position: absolute;
	top: 13px;
	left: -6px;
}

#accordion6 .panel-title a {
	display: block;
	padding: 3px 20px 3px 20px;
	border: none;
	font-size: 20px;
	font-weight: 400;
	color: #bf6026;
	position: relative;
	background: #f1f1f2;
}

#accordion6 .panel-title a:before, #accordion6 .panel-title a.collapsed:before
	{
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 35px;
	height: 35px;
	line-height: 35px;
	font-size: 15px;
	color: #bf6026;
	text-align: center;
	border: 1px solid #bf6026;
	position: absolute;
	top: 0;
	left: -50px;
	transition: all 0.5s ease 0s;
}

#accordion6 .panel-title a.collapsed:before {
	content: "\f067";
}

#accordion6 .panel-body {
	padding: 0 15px 15px;
	border: none;
	font-size: 14px;
	color: #807e7e;
	line-height: 28px;
}

#accordion6 .panel-body p {
	margin-bottom: 0;
}

/******************* Accordion Demo - 7 *****************/
#accordion7 {
	padding-right: 24px;
	padding-left: 24px;
	z-index: 1;
}

#accordion7 .panel {
	border: none;
	box-shadow: none;
}

#accordion7 .panel-heading {
	padding: 0;
	border-radius: 0;
	border: none;
}

#accordion7 .panel-title {
	padding: 0;
}

#accordion7 .panel-title a {
	display: block;
	font-size: 16px;
	font-weight: 500;
	background: #e16b47;
	color: #f7c59f;
	padding: 15px 25px;
	position: relative;
	margin-left: -24px;
	transition: all 0.3s ease 0s;
}

#accordion7 .panel-title a.collapsed {
	background: #f7c59f;
	color: #e16b47;
	margin-left: 0;
	transition: all 0.3s ease 0s;
}

#accordion7 .panel-title a:before {
	content: "";
	border-left: 24px solid #e16b47;
	border-top: 24px solid transparent;
	border-bottom: 24px solid transparent;
	position: absolute;
	top: 0;
	right: -24px;
	transition: all 0.3s ease 0s;
}

#accordion7 .panel-title a.collapsed:before {
	border-left-color: #f7c59f;
}

#accordion7 .panel-title a:after {
	content: "\f106";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	position: absolute;
	top: 30%;
	right: 15px;
	font-size: 18px;
	color: #f7c59f;
}

#accordion7 .panel-title a.collapsed:after {
	content: "\f107";
	color: #e16b47;
}

#accordion7 .panel-collapse {
	position: relative;
}

#accordion7 .panel-collapse.in:before {
	content: "";
	border-right: 24px solid #f7c59f;
	border-bottom: 18px solid transparent;
	position: absolute;
	top: 0;
	left: -24px;
}

#accordion7 .panel-body {
	font-size: 14px;
	color: #333;
	background: #e4e4e4;
	border-top: none;
	z-index: 1;
}

/******************* Accordion Demo - 8 *****************/
#accordion8 .panel {
	border: none;
	box-shadow: none;
	border-radius: 0;
	margin-bottom: 15px;
}

#accordion8 .panel-heading {
	padding: 0;
	border-radius: 0;
	border: none;
}

#accordion8 .panel-title a {
	display: block;
	padding: 20px 30px 20px 50px;
	background: #ffffff;
	font-size: 16px;
	font-weight: 500;
	color: #20457c;
	position: relative;
	transition: all 0.5s ease 0s;
	border: 1px solid #20457c;
	border-radius: 5px;
}

#accordion8 .panel-title a.collapsed {
	background: #fff;
	color: #696969;
	border: 1px solid #20457c;
	border-radius: 5px;
}

#accordion8 .panel-title a:after, #accordion8 .panel-title a.collapsed:after
	{
	content: "\f106";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 30px;
	height: 30px;
	line-height: 30px;
	border-radius: 5px;
	font-size: 16px;
	color: #fff;
	text-align: center;
	position: absolute;
	top: 25%;
	left: -13px;
	background: #a91739;
}

#accordion8 .panel-title a.collapsed:after {
	content: "\f107";
	background: #e94c6f;
}

#accordion8 .panel-title a.collapsed:hover {
	background: #f1f1f1;
	color: #20457c;
}

#accordion8 .panel-body {
	font-size: 14px;
	color: #fff;
	line-height: 25px;
	background: #E94C6F;
	padding: 15px 15px 15px 50px;
	border: none;
	transition: all 0.5s ease 0s;
}

/******************* Accordion Demo - 9 *****************/
#accordion9 .panel {
	border-radius: 0;
	margin-bottom: 15px;
}

#accordion9 .panel-heading {
	padding: 0;
}

#accordion9 .panel-title {
	position: relative;
}

#accordion9 .panel-title:before {
	content: "";
	border-bottom: 25px solid rgba(0, 0, 0, 0);
	border-left: 15px solid #ccc;
	border-top: 23px solid rgba(0, 0, 0, 0);
	width: 0;
	height: 0;
	position: absolute;
	top: 0;
	left: 34px;
}

#accordion9 .panel-title a {
	color: #fff;
	background: #e63c22;
	display: block;
	font-size: 16px;
	line-height: 21px;
	font-weight: 500;
	text-transform: uppercase;
	padding: 13px 10px 13px 65px;
}

#accordion9 .panel-title a.collapsed {
	color: #5b5656;
	background: #fff;
}

#accordion9 .panel-title a:before, #accordion9 .panel-title a.collapsed:before
	{
	content: "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	position: absolute;
	top: 0;
	left: 0px;
	padding: 14px 10px;
	color: #e63c22;
	background: #ccc;
}

#accordion9 .panel-title a.collapsed:before {
	content: "\f067";
}

#accordion9 .panel-body {
	color: #828282;
	font-size: 14px;
	line-height: 26px;
}

/******************* Accordion Demo - 10 *****************/
a:hover, a:focus {
	text-decoration: none;
	outline: none;
}

#accordion10 .panel {
	border: none;
	border-radius: 0;
	box-shadow: none;
	margin: 0 30px 10px 30px;
	overflow: hidden;
	position: relative;
}

#accordion10 .panel-heading {
	padding: 0;
	border: none;
	border-radius: 0;
	position: relative;
}

#accordion10 .panel-title a {
	display: block;
	padding: 15px 20px;
	margin: 0;
	background: #fe7725;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
	border-radius: 0;
	position: relative;
}

#accordion10 .panel-title a.collapsed {
	background: #1c2336; # accordion10 .panel-title a : before, #accordion10
	.panel-title a.collapsed : before {
    content : "\f068";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	width: 30px;
	height: 30px;
	line-height: 25px;
	border-radius: 50%;
	background: #fe7725;
	font-size: 14px;
	font-weight: normal;
	color: #fff;
	text-align: center;
	border: 3px solid #fff;
	position: absolute;
	top: 10px;
	right: 14px;
}

#accordion10 .panel-title a.collapsed:before {
	content: "\f067";
	background: #ababab;
	border: 4px solid #626262;
}

#accordion10 .panel-title a:after, #accordion10 .panel-title a.collapsed:after
	{
	content: "";
	width: 17px;
	height: 7px;
	background: #fff;
	position: absolute;
	top: 22px;
	right: 0;
}

#accordion10 .panel-title a.collapsed:after {
	width: 19px;
	background: #ababab;
}

#accordion10 .panel-body {
	border-left: 3px solid #fe7725;
	border-top: none;
	background: #fff;
	font-size: 15px;
	color: #1c2336;
	line-height: 27px;
	position: relative;
}

#accordion10 .panel-body:before {
	content: "";
	height: 3px;
	width: 50%;
	background: #fe7725;
	position: absolute;
	bottom: 0;
	left: 0;
}
</style>
</head>

<body data-open="click" data-menu="vertical-menu" data-col="2-columns"
	class="vertical-layout vertical-menu 2-columns  fixed-navbar">

	<!-- navbar-fixed-top-->
	<nav
		class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
		<div class="navbar-wrapper">
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li class="nav-item mobile-menu hidden-md-up float-xs-left"><a
						class="nav-link nav-menu-main menu-toggle hidden-xs"><i
							class="icon-menu5 font-large-1"></i></a></li>
					<li class="nav-item"><a href="index.html"
						class="navbar-brand nav-link"><img alt="branding logo"
							src="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif"
							data-expand="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif"
							data-collapse="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif"
							class="brand-logo"></a></li>
					<li class="nav-item hidden-md-up float-xs-right"><a
						data-toggle="collapse" data-target="#navbar-mobile"
						class="nav-link open-navbar-container"><i
							class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
				</ul>
			</div>
			<div class="navbar-container content container-fluid">
				<div id="navbar-mobile" class="collapse navbar-toggleable-sm">
					<ul class="nav navbar-nav">
						<li class="nav-item hidden-sm-down"><a
							class="nav-link nav-menu-main menu-toggle hidden-xs"><i
								class="icon-menu5"> </i></a></li>
						<li class="nav-item hidden-sm-down"><a href="#"
							class="nav-link nav-link-expand"><i
								class="ficon icon-expand2"></i></a></li>
					</ul>
					<ul class="nav navbar-nav float-xs-right">
						<li class="dropdown dropdown-user nav-item"><a href="#"
							data-toggle="dropdown"
							class="dropdown-toggle nav-link dropdown-user-link"><span
								class="avatar avatar-online"><img
									src="https://png.pngtree.com/element_our/20190604/ourmid/pngtree-user-avatar-boy-image_1482937.jpg"
									alt="avatar"><i></i></span><span class="user-name">${USER_ENTITY.userFirstName}
									${USER_ENTITY.userLastName}</span></a>
							<div class="dropdown-menu dropdown-menu-right">
								<!-- <a href="#" class="dropdown-item"><i class="icon-head"></i>
									Edit Profile</a> -->
								<!-- <div class="dropdown-divider"></div> -->
								<a href="${pageContext.request.contextPath}/logout"
									class="dropdown-item"><i class="icon-power3"></i> Logout</a>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<!-- ////////////////////////////////////////////////////////////////////////////-->


	<!-- main menu-->
	<div data-scroll-to-active="true"
		class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
		<!-- main menu header-->
		<div class="main-menu-header">
			<input type="text" placeholder="Search"
				class="menu-search form-control round" />
		</div>
		<!-- / main menu header-->
		<!-- main menu content-->
		<div class="main-menu-content">
			<ul id="main-menu-navigation" data-menu="menu-navigation"
				class="navigation navigation-main">
				<li class=" nav-item"><a
					href="${pageContext.request.contextPath}/"><i
						class="icon-home3"></i><span data-i18n="nav.dash.main"
						class="menu-title">Dashboard</span></li>
				<li class=" nav-item"><i class="icon-stack-2"></i><span
					data-i18n="nav.page_layouts.main" class="menu-title">Product</span>
					<ul class="menu-content">
						<li><a href="${pageContext.request.contextPath}/addTag"
							data-i18n="nav.page_layouts.1_column" class="menu-item">Add
								Tag</a></li>
						<li><a href="${pageContext.request.contextPath}/addCategory"
							data-i18n="nav.page_layouts.1_column" class="menu-item">Add
								Category</a></li>
						<li><a href="${pageContext.request.contextPath}/addProduct"
							data-i18n="nav.page_layouts.1_column" class="menu-item">Add
								Product</a></li>
						<li><a
							href="${pageContext.request.contextPath}/products/viewAllProducts"
							data-i18n="nav.page_layouts.2_columns" class="menu-item">View
								Products </a></li>
					</ul></li>
				<li class=" nav-item"><a href="#"><i
						class="icon-briefcase4"></i><span data-i18n="nav.project.main"
						class="menu-title">Orders</span></a>
					<ul class="menu-content">
						<li><a
							href="${pageContext.request.contextPath}/orders/pendingOrders"
							data-i18n="nav.invoice.invoice_template" class="menu-item">Pending</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/orders/approvedOrders"
							data-i18n="nav.gallery_pages.gallery_grid" class="menu-item">Approved</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/orders/shippedOrders"
							data-i18n="nav.search_pages.search_page" class="menu-item">Shipped</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/orders/deliveredOrders"
							data-i18n="nav.search_pages.search_page" class="menu-item">Delivered</a>
						</li>
					</ul></li>
				<li class=" nav-item"><a href="#"><i
						class="icon-ios-albums-outline"></i><span
						data-i18n="nav.cards.main" class="menu-title">Users</span></a>
					<ul class="menu-content">
						<li><a href="card-bootstrap.html"
							data-i18n="nav.cards.card_bootstrap" class="menu-item">Active
								Users</a></li>
						<li><a href="card-actions.html"
							data-i18n="nav.cards.card_actions" class="menu-item">Inactive
								Users</a></li>
						<li><a href="card-actions.html"
							data-i18n="nav.cards.card_actions" class="menu-item">Online
								Users</a></li>
						<li><a href="card-actions.html"
							data-i18n="nav.cards.card_actions" class="menu-item">Subscribers</a>
						</li>
					</ul></li>
				<li class=" nav-item"><a href="#"><i
						class="icon-briefcase4"></i><span data-i18n="nav.project.main"
						class="menu-title">Queries</span></a>
					<ul class="menu-content">
						<li><a
							href="${pageContext.request.contextPath}/admin/pendinguserQueries"
							data-i18n="nav.invoice.invoice_template" class="menu-item">Pending
								Queries</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/respondeduserQueries"
							data-i18n="nav.gallery_pages.gallery_grid" class="menu-item">Responded
								Queries</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /main menu content-->
		<!-- main menu footer-->
		<!-- include includes/menu-footer-->
		<!-- main menu footer-->
	</div>
	<!-- / main menu-->

	<div class="app-content content container-fluid">
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<tiles:insertAttribute name="body"></tiles:insertAttribute>
			</div>
		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->



	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/tether.min.js"
		var="tether" />
	<script src="${tether}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/js/core/libraries/bootstrap.min.js"
		var="bootstrap" />
	<script src="${bootstrap}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js"
		var="perfect_scrollbar_jquery" />
	<script src="${perfect_scrollbar_jquery}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/unison.min.js"
		var="unison" />
	<script src="${unison}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/blockUI.min.js"
		var="blockUI" />
	<script src="${blockUI}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/jquery.matchHeight-min.js"
		var="jquery_matchHeight_min" />
	<script src="${jquery_matchHeight_min}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/ui/screenfull.min.js"
		var="screenfull" />
	<script src="${screenfull}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/extensions/pace.min.js"
		var="pace_JS" />
	<script src="${pace_JS}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/vendors/js/charts/chart.min.js"
		var="chart" />
	<script src="${chart}"></script>

	<spring:url value="/Resources/Admin/app-assets/js/core/app-menu.js"
		var="app_menu" />
	<script src="${app_menu}"></script>

	<spring:url value="/Resources/Admin/app-assets/js/core/app.js"
		var="app_JS" />
	<script src="${app_JS}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/js/scripts/pages/dashboard-lite.js"
		var="dashboard_lite_JS" />
	<script src="${dashboard_lite_JS}"></script>

	<spring:url
		value="/Resources/Admin/app-assets/js/scripts/charts/chartjs/line/line-area.js"
		var="LINE_AREA_JS" />
	<script src="${LINE_AREA_JS}"></script>

	<spring:url value="/Resources/zed/js/zed.js" var="ZED_JS" />
	<script src="${ZED_JS}"></script>
</body>

</html>