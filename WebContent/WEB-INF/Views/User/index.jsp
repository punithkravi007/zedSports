
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="coreTags"%>
<%@ taglib prefix="tiles" uri="springTiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<core:set var="IMAGE_RELATIVE_PATH"
	value="${pageContext.request.contextPath}/Resources/"></core:set>

<spring:url value="/Resources/css/bootstrap.min.css"
	var="BOOTSTRAP_MIN_CSS" />
<link rel="stylesheet" href="${BOOTSTRAP_MIN_CSS}">

<spring:url value="/Resources/css/owl.carousel.min.css"
	var="CAROUSEL_MIN_CSS" />
<link rel="stylesheet" href="${CAROUSEL_MIN_CSS}">

<spring:url value="/Resources/css/owl.theme.default.min.css"
	var="OWL_THEME_MIN_CSS" />
<link rel="stylesheet" href="${OWL_THEME_MIN_CSS}">


<spring:url value="/Resources/css/core.css" var="CORE_CSS" />
<link rel="stylesheet" href="${CORE_CSS}">

<spring:url value="/Resources/css/shortcode/shortcodes.css"
	var="SHORTCODES_CSS" />
<link rel="stylesheet" href="${SHORTCODES_CSS}">

<spring:url value="/Resources/css/style.css" var="STYLE_CSS" />
<link rel="stylesheet" href="${STYLE_CSS}">

<spring:url value="/Resources/css/responsive.css" var="RESPONSIVE_CSS" />
<link rel="stylesheet" href="${RESPONSIVE_CSS}">

<spring:url value="/Resources/css/custom.css" var="CUSTOM_CSS" />
<link rel="stylesheet" href="${CUSTOM_CSS}">

<spring:url value="/Resources/js/vendor/modernizr-3.5.0.min.js"
	var="MODERNIZR_JS" />
<script src="${MODERNIZR_JS}"></script>

<spring:url value="/Resources/js/vendor/jquery-3.2.1.min.js"
	var="JQUERY_JS" />
<script src="${JQUERY_JS}"></script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">


<style>
.product__action li a, .owl-next, .owl-prev, .product__action--dft li a
	{
	padding: 15px;
}
</style>
<style>
h3.h3 {
	text-align: center;
	margin: 1em;
	text-transform: capitalize;
	font-size: 1.7em;
}

/********************* shopping Demo-1 **********************/
.product-grid {
	font-family: Raleway, sans-serif;
	text-align: center;
	padding: 0 0 72px;
	border: 1px solid rgba(0, 0, 0, .1);
	overflow: hidden;
	position: relative;
	z-index: 1
}

.product-grid .product-image {
	position: relative;
	transition: all .3s ease 0s
}

.product-grid .product-image a {
	display: block
}

.product-grid .product-image img {
	width: 100%;
	height: auto
}

.product-grid .pic-1 {
	opacity: 1;
	transition: all .3s ease-out 0s
}

.product-grid:hover .pic-1 {
	opacity: 1
}

.product-grid .pic-2 {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .3s ease-out 0s
}

.product-grid:hover .pic-2 {
	opacity: 1
}

.product-grid .social {
	width: 150px;
	padding: 0;
	margin: 0;
	list-style: none;
	opacity: 0;
	transform: translateY(-50%) translateX(-50%);
	position: absolute;
	top: 60%;
	left: 50%;
	z-index: 1;
	transition: all .3s ease 0s
}

.product-grid:hover .social {
	opacity: 1;
	top: 50%
}

.product-grid .social li {
	display: inline-block
}

.product-grid .social li a {
	color: #fff;
	background-color: #333;
	font-size: 16px;
	line-height: 40px;
	text-align: center;
	height: 40px;
	width: 40px;
	margin: 0 2px;
	display: block;
	position: relative;
	transition: all .3s ease-in-out
}

.product-grid .social li a:hover {
	color: #fff;
	background-color: #ef5777
}

.product-grid .social li a:after, .product-grid .social li a:before {
	content: attr(data-tip);
	color: #fff;
	background-color: #000;
	font-size: 12px;
	letter-spacing: 1px;
	line-height: 20px;
	padding: 1px 5px;
	white-space: nowrap;
	opacity: 0;
	transform: translateX(-50%);
	position: absolute;
	left: 50%;
	top: -30px
}

.product-grid .social li a:after {
	content: '';
	height: 15px;
	width: 15px;
	border-radius: 0;
	transform: translateX(-50%) rotate(45deg);
	top: -20px;
	z-index: -1
}

.product-grid .social li a:hover:after, .product-grid .social li a:hover:before
	{
	opacity: 1
}

.product-grid .product-discount-label, .product-grid .product-new-label
	{
	color: #fff;
	background-color: #ef5777;
	font-size: 12px;
	text-transform: uppercase;
	padding: 2px 7px;
	display: block;
	position: absolute;
	top: 10px;
	left: 0
}

.product-grid .product-discount-label {
	background-color: #333;
	left: auto;
	right: 0
}

.product-grid .rating {
	color: #FFD200;
	font-size: 12px;
	padding: 12px 0 0;
	margin: 0;
	list-style: none;
	position: relative;
	z-index: -1
}

.product-grid .rating li.disable {
	color: rgba(0, 0, 0, .2)
}

.product-grid .product-content {
	background-color: #fff;
	text-align: center;
	padding: 12px 0;
	margin: 0 auto;
	position: absolute;
	left: 0;
	right: 0;
	bottom: -27px;
	z-index: 1;
	transition: all .3s
}

.product-grid:hover .product-content {
	bottom: 0
}

.product-grid .title {
	font-size: 13px;
	font-weight: 400;
	letter-spacing: .5px;
	text-transform: capitalize;
	margin: 0 0 10px;
	transition: all .3s ease 0s
}

.product-grid .title a {
	color: #828282
}

.product-grid .title a:hover, .product-grid:hover .title a {
	color: #ef5777
}

.product-grid .price {
	color: #333;
	font-size: 17px;
	font-family: Montserrat, sans-serif;
	font-weight: 700;
	letter-spacing: .6px;
	margin-bottom: 8px;
	text-align: center;
	transition: all .3s
}

.product-grid .price span {
	color: #999;
	font-size: 13px;
	font-weight: 400;
	text-decoration: line-through;
	margin-left: 3px;
	display: inline-block
}

.product-grid .add-to-cart {
	color: #000;
	font-size: 13px;
	font-weight: 600
}

@media only screen and (max-width:990px) {
	.product-grid {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-2 **********************/
.demo {
	padding: 45px 0
}

.product-grid2 {
	font-family: 'Open Sans', sans-serif;
	position: relative
}

.product-grid2 .product-image2 {
	overflow: hidden;
	position: relative
}

.product-grid2 .product-image2 a {
	display: block
}

.product-grid2 .product-image2 img {
	width: 100%;
	height: auto
}

.product-image2 .pic-1 {
	opacity: 1;
	transition: all .5s
}

.product-grid2:hover .product-image2 .pic-1 {
	opacity: 0
}

.product-image2 .pic-2 {
	width: 100%;
	height: 100%;
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .5s
}

.product-grid2:hover .product-image2 .pic-2 {
	opacity: 1
}

.product-grid2 .social {
	padding: 0;
	margin: 0;
	position: absolute;
	bottom: 50px;
	right: 25px;
	z-index: 1
}

.product-grid2 .social li {
	margin: 0 0 10px;
	display: block;
	transform: translateX(100px);
	transition: all .5s
}

.product-grid2:hover .social li {
	transform: translateX(0)
}

.product-grid2:hover .social li:nth-child(2) {
	transition-delay: .15s
}

.product-grid2:hover .social li:nth-child(3) {
	transition-delay: .25s
}

.product-grid2 .social li a {
	color: #505050;
	background-color: #fff;
	font-size: 17px;
	line-height: 45px;
	text-align: center;
	height: 45px;
	width: 45px;
	border-radius: 50%;
	display: block;
	transition: all .3s ease 0s
}

.product-grid2 .social li a:hover {
	color: #fff;
	background-color: #3498db;
	box-shadow: 0 0 10px rgba(0, 0, 0, .5)
}

.product-grid2 .social li a:after, .product-grid2 .social li a:before {
	content: attr(data-tip);
	color: #fff;
	background-color: #000;
	font-size: 12px;
	line-height: 22px;
	border-radius: 3px;
	padding: 0 5px;
	white-space: nowrap;
	opacity: 0;
	transform: translateX(-50%);
	position: absolute;
	left: 50%;
	top: -30px
}

.product-grid2 .social li a:after {
	content: '';
	height: 15px;
	width: 15px;
	border-radius: 0;
	transform: translateX(-50%) rotate(45deg);
	top: -22px;
	z-index: -1
}

.product-grid2 .social li a:hover:after, .product-grid2 .social li a:hover:before
	{
	opacity: 1
}

.product-grid2 .add-to-cart {
	color: #fff;
	background-color: #404040;
	font-size: 15px;
	text-align: center;
	width: 100%;
	padding: 10px 0;
	display: block;
	position: absolute;
	left: 0;
	bottom: -100%;
	transition: all .3s
}

.product-grid2 .add-to-cart:hover {
	background-color: #3498db;
	text-decoration: none
}

.product-grid2:hover .add-to-cart {
	bottom: 0
}

.product-grid2 .product-new-label {
	background-color: #3498db;
	color: #fff;
	font-size: 17px;
	padding: 5px 10px;
	position: absolute;
	right: 0;
	top: 0;
	transition: all .3s
}

.product-grid2:hover .product-new-label {
	opacity: 0
}

.product-grid2 .product-content {
	padding: 20px 10px;
	text-align: center
}

.product-grid2 .title {
	font-size: 17px;
	margin: 0 0 7px
}

.product-grid2 .title a {
	color: #303030
}

.product-grid2 .title a:hover {
	color: #3498db
}

.product-grid2 .price {
	color: #303030;
	font-size: 15px
}

@media screen and (max-width:990px) {
	.product-grid2 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-3 **********************/
.product-grid3 {
	font-family: Roboto, sans-serif;
	text-align: center;
	position: relative;
	z-index: 1
}

.product-grid3:before {
	content: "";
	height: 81%;
	width: 100%;
	background: #fff;
	border: 1px solid rgba(0, 0, 0, .1);
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	transition: all .5s ease 0s
}

.product-grid3:hover:before {
	opacity: 1;
	height: 100%
}

.product-grid3 .product-image3 {
	position: relative
}

.product-grid3 .product-image3 a {
	display: block
}

.product-grid3 .product-image3 img {
	width: 100%;
	height: auto
}

.product-grid3 .pic-1 {
	opacity: 1;
	transition: all .5s ease-out 0s
}

.product-grid3:hover .pic-1 {
	opacity: 0
}

.product-grid3 .pic-2 {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	transition: all .5s ease-out 0s
}

.product-grid3:hover .pic-2 {
	opacity: 1
}

.product-grid3 .social {
	width: 120px;
	padding: 0;
	margin: 0 auto;
	list-style: none;
	opacity: 0;
	position: absolute;
	right: 0;
	left: 0;
	bottom: -23px;
	transform: scale(0);
	transition: all .3s ease 0s
}

.product-grid3:hover .social {
	opacity: 1;
	transform: scale(1)
}

.product-grid3:hover .product-discount-label, .product-grid3:hover .product-new-label,
	.product-grid3:hover .title {
	opacity: 0
}

.product-grid3 .social li {
	display: inline-block
}

.product-grid3 .social li a {
	color: #e67e22;
	background: #fff;
	font-size: 18px;
	line-height: 50px;
	width: 50px;
	height: 50px;
	border: 1px solid rgba(0, 0, 0, .1);
	border-radius: 50%;
	margin: 0 2px;
	display: block;
	transition: all .3s ease 0s
}

.product-grid3 .social li a:hover {
	background: #e67e22;
	color: #fff
}

.product-grid3 .product-discount-label, .product-grid3 .product-new-label
	{
	background-color: #e67e22;
	color: #fff;
	font-size: 17px;
	padding: 2px 10px;
	position: absolute;
	right: 10px;
	top: 10px;
	transition: all .3s
}

.product-grid3 .product-content {
	z-index: -1;
	padding: 15px;
	text-align: left
}

.product-grid3 .title {
	font-size: 14px;
	text-transform: capitalize;
	margin: 0 0 7px;
	transition: all .3s ease 0s
}

.product-grid3 .title a {
	color: #414141
}

.product-grid3 .price {
	color: #000;
	font-size: 16px;
	letter-spacing: 1px;
	font-weight: 600;
	margin-right: 2px;
	display: inline-block
}

.product-grid3 .price span {
	color: #909090;
	font-size: 14px;
	font-weight: 500;
	letter-spacing: 0;
	text-decoration: line-through;
	text-align: left;
	display: inline-block;
	margin-top: -2px
}

.product-grid3 .rating {
	padding: 0;
	margin: -22px 0 0;
	list-style: none;
	text-align: right;
	display: block
}

.product-grid3 .rating li {
	color: #ffd200;
	font-size: 13px;
	display: inline-block
}

.product-grid3 .rating li.disable {
	color: #dcdcdc
}

@media only screen and (max-width:1200px) {
	.product-grid3 .rating {
		margin: 0
	}
}

@media only screen and (max-width:990px) {
	.product-grid3 {
		margin-bottom: 30px
	}
	.product-grid3 .rating {
		margin: -22px 0 0
	}
}

@media only screen and (max-width:359px) {
	.product-grid3 .rating {
		margin: 0
	}
}

/********************* Shopping Demo-4 **********************/
.product-grid4, .product-grid4 .product-image4 {
	position: relative
}

.product-grid4 {
	font-family: Poppins, sans-serif;
	text-align: center;
	border-radius: 5px;
	overflow: hidden;
	z-index: 1;
	transition: all .3s ease 0s
}

.product-grid4:hover {
	box-shadow: 0 0 10px rgba(0, 0, 0, .2)
}

.product-grid4 .product-image4 a {
	display: block
}

.product-grid4 .product-image4 img {
	width: 100%;
	height: auto
}

.product-grid4 .pic-1 {
	opacity: 1;
	transition: all .5s ease-out 0s
}

.product-grid4:hover .pic-1 {
	opacity: 0
}

.product-grid4 .pic-2 {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	transition: all .5s ease-out 0s
}

.product-grid4:hover .pic-2 {
	opacity: 1
}

.product-grid4 .social {
	width: 180px;
	padding: 0;
	margin: 0 auto;
	list-style: none;
	position: absolute;
	right: 0;
	left: 0;
	top: 50%;
	transform: translateY(-50%);
	transition: all .3s ease 0s
}

.product-grid4 .social li {
	display: inline-block;
	opacity: 0;
	transition: all .7s
}

.product-grid4 .social li:nth-child(1) {
	transition-delay: .15s
}

.product-grid4 .social li:nth-child(2) {
	transition-delay: .3s
}

.product-grid4 .social li:nth-child(3) {
	transition-delay: .45s
}

.product-grid4:hover .social li {
	opacity: 1
}

.product-grid4 .social li a {
	color: #222;
	background: #fff;
	font-size: 17px;
	line-height: 36px;
	width: 40px;
	height: 36px;
	border-radius: 2px;
	margin: 0 5px;
	display: block;
	transition: all .3s ease 0s
}

.product-grid4 .social li a:hover {
	color: #fff;
	background: #16a085
}

.product-grid4 .social li a:after, .product-grid4 .social li a:before {
	content: attr(data-tip);
	color: #fff;
	background-color: #000;
	font-size: 12px;
	line-height: 20px;
	border-radius: 3px;
	padding: 0 5px;
	white-space: nowrap;
	opacity: 0;
	transform: translateX(-50%);
	position: absolute;
	left: 50%;
	top: -30px
}

.product-grid4 .social li a:after {
	content: '';
	height: 15px;
	width: 15px;
	border-radius: 0;
	transform: translateX(-50%) rotate(45deg);
	top: -22px;
	z-index: -1
}

.product-grid4 .social li a:hover:after, .product-grid4 .social li a:hover:before
	{
	opacity: 1
}

.product-grid4 .product-discount-label, .product-grid4 .product-new-label
	{
	color: #fff;
	background-color: #16a085;
	font-size: 13px;
	font-weight: 800;
	text-transform: uppercase;
	line-height: 45px;
	height: 45px;
	width: 45px;
	border-radius: 50%;
	position: absolute;
	left: 10px;
	top: 15px;
	transition: all .3s
}

.product-grid4 .product-discount-label {
	left: auto;
	right: 10px;
	background-color: #d7292a
}

.product-grid4:hover .product-new-label {
	opacity: 0
}

.product-grid4 .product-content {
	padding: 25px
}

.product-grid4 .title {
	font-size: 15px;
	font-weight: 400;
	text-transform: capitalize;
	margin: 0 0 7px;
	transition: all .3s ease 0s
}

.product-grid4 .title a {
	color: #222
}

.product-grid4 .title a:hover {
	color: #16a085
}

.product-grid4 .price {
	color: #16a085;
	font-size: 17px;
	font-weight: 700;
	margin: 0 2px 15px 0;
	display: block
}

.product-grid4 .price span {
	color: #909090;
	font-size: 13px;
	font-weight: 400;
	letter-spacing: 0;
	text-decoration: line-through;
	text-align: left;
	vertical-align: middle;
	display: inline-block
}

.product-grid4 .add-to-cart {
	border: 1px solid #e5e5e5;
	display: inline-block;
	padding: 10px 20px;
	color: #888;
	font-weight: 600;
	font-size: 14px;
	border-radius: 4px;
	transition: all .3s
}

.product-grid4:hover .add-to-cart {
	border: 1px solid transparent;
	background: #16a085;
	color: #fff
}

.product-grid4 .add-to-cart:hover {
	background-color: #505050;
	box-shadow: 0 0 10px rgba(0, 0, 0, .5)
}

@media only screen and (max-width:990px) {
	.product-grid4 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-5 **********************/
.product-image5 .pic-1, .product-image5 .pic-2 {
	backface-visibility: hidden;
	transition: all .5s ease 0s
}

.product-grid5 {
	font-family: Poppins, sans-serif;
	position: relative
}

.product-grid5 .product-image5 {
	overflow: hidden;
	position: relative
}

.product-grid5 .product-image5 a {
	display: block
}

.product-grid5 .product-image5 img {
	width: 100%;
	height: auto
}

.product-image5 .pic-1 {
	opacity: 1
}

.product-grid5:hover .product-image5 .pic-1 {
	opacity: 0
}

.product-image5 .pic-2 {
	width: 100%;
	height: 100%;
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0
}

.product-grid5:hover .product-image5 .pic-2 {
	opacity: 1
}

.product-grid5 .social {
	padding: 0;
	margin: 0;
	position: absolute;
	top: 10px;
	right: 10px
}

.product-grid5 .social li {
	display: block;
	margin: 0 0 10px;
	transition: all .5s
}

.product-grid5 .social li:nth-child(2) {
	opacity: 0;
	transform: translateY(-50px)
}

.product-grid5:hover .social li:nth-child(2) {
	opacity: 1;
	transform: translateY(0)
}

.product-grid5 .social li:nth-child(3) {
	opacity: 0;
	transform: translateY(-50px)
}

.product-grid5:hover .social li:nth-child(3) {
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s
}

.product-grid5 .social li a {
	color: #888;
	background: #fff;
	font-size: 14px;
	text-align: center;
	line-height: 40px;
	height: 40px;
	width: 40px;
	border-radius: 50%;
	display: block;
	transition: .5s ease 0s
}

.product-grid5 .social li a:hover {
	color: #fff;
	background: #1e3799
}

.product-grid5 .select-options {
	color: #777;
	background-color: #fff;
	font-size: 13px;
	font-weight: 400;
	text-align: center;
	text-transform: uppercase;
	padding: 15px 5px;
	margin: 0 auto;
	opacity: 0;
	display: block;
	position: absolute;
	width: 92%;
	left: 0;
	bottom: -100px;
	right: 0;
	transition: .5s ease 0s
}

.product-grid5 .select-options:hover {
	color: #fff;
	background-color: #1e3799;
	text-decoration: none
}

.product-grid5:hover .select-options {
	opacity: 1;
	bottom: 10px
}

.product-grid5 .product-content {
	padding: 20px 10px
}

.product-grid5 .title {
	font-size: 15px;
	font-weight: 600;
	text-transform: capitalize;
	margin: 0 0 10px;
	transition: all .3s ease 0s
}

.product-grid5 .title a {
	color: #222
}

.product-grid5 .title a:hover {
	color: #1e3799
}

.product-grid5 .price {
	color: #222;
	font-size: 13px;
	font-weight: 500;
	letter-spacing: 1px
}

@media only screen and (max-width:990px) {
	.product-grid5 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-6 **********************/
.product-grid6, .product-grid6 .product-image6 {
	overflow: hidden
}

.product-grid6 {
	font-family: 'Open Sans', sans-serif;
	text-align: center;
	position: relative;
	transition: all .5s ease 0s
}

.product-grid6:hover {
	box-shadow: 0 0 10px rgba(0, 0, 0, .3)
}

.product-grid6 .product-image6 a {
	display: block
}

.product-grid6 .product-image6 img {
	width: 100%;
	height: auto;
	transition: all .5s ease 0s
}

.product-grid6:hover .product-image6 img {
	transform: scale(1.1)
}

.product-grid6 .product-content {
	padding: 12px 12px 15px;
	transition: all .5s ease 0s
}

.product-grid6:hover .product-content {
	opacity: 0
}

.product-grid6 .title {
	font-size: 20px;
	font-weight: 600;
	text-transform: capitalize;
	margin: 0 0 10px;
	transition: all .3s ease 0s
}

.product-grid6 .title a {
	color: #000
}

.product-grid6 .title a:hover {
	color: #2e86de
}

.product-grid6 .price {
	font-size: 18px;
	font-weight: 600;
	color: #2e86de
}

.product-grid6 .price span {
	color: #999;
	font-size: 15px;
	font-weight: 400;
	text-decoration: line-through;
	margin-left: 7px;
	display: inline-block
}

.product-grid6 .social {
	background-color: #fff;
	width: 100%;
	padding: 0;
	margin: 0;
	list-style: none;
	opacity: 0;
	transform: translateX(-50%);
	position: absolute;
	bottom: -50%;
	left: 50%;
	z-index: 1;
	transition: all .5s ease 0s
}

.product-grid6:hover .social {
	opacity: 1;
	bottom: 20px
}

.product-grid6 .social li {
	display: inline-block
}

.product-grid6 .social li a {
	color: #909090;
	font-size: 16px;
	line-height: 45px;
	text-align: center;
	height: 45px;
	width: 45px;
	margin: 0 7px;
	border: 1px solid #909090;
	border-radius: 50px;
	display: block;
	position: relative;
	transition: all .3s ease-in-out
}

.product-grid6 .social li a:hover {
	color: #fff;
	background-color: #2e86de;
	width: 80px
}

.product-grid6 .social li a:after, .product-grid6 .social li a:before {
	content: attr(data-tip);
	color: #fff;
	background-color: #2e86de;
	font-size: 12px;
	letter-spacing: 1px;
	line-height: 20px;
	padding: 1px 5px;
	border-radius: 5px;
	white-space: nowrap;
	opacity: 0;
	transform: translateX(-50%);
	position: absolute;
	left: 50%;
	top: -30px
}

.product-grid6 .social li a:after {
	content: '';
	height: 15px;
	width: 15px;
	border-radius: 0;
	transform: translateX(-50%) rotate(45deg);
	top: -20px;
	z-index: -1
}

.product-grid6 .social li a:hover:after, .product-grid6 .social li a:hover:before
	{
	opacity: 1
}

@media only screen and (max-width:990px) {
	.product-grid6 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-7 **********************/
.product-grid7 {
	font-family: 'Roboto Slab', serif;
	position: relative;
	z-index: 1
}

.product-grid7 .product-image7 {
	border: 1px solid rgba(0, 0, 0, .1);
	overflow: hidden;
	perspective: 1500px;
	position: relative;
	transition: all .3s ease 0s
}

.product-grid7 .product-image7 a {
	display: block
}

.product-grid7 .product-image7 img {
	width: 100%;
	height: auto
}

.product-grid7 .pic-1 {
	opacity: 1;
	transition: all .5s ease-out 0s
}

.product-grid7 .pic-2 {
	opacity: 0;
	transform: rotateY(-90deg);
	position: absolute;
	top: 0;
	left: 0;
	transition: all .5s ease-out 0s
}

.product-grid7:hover .pic-2 {
	opacity: 1;
	transform: rotateY(0)
}

.product-grid7 .social {
	padding: 0;
	margin: 0;
	list-style: none;
	position: absolute;
	bottom: 3px;
	left: -20%;
	z-index: 1;
	transition: all .5s ease 0s
}

.product-grid7:hover .social {
	left: 17px
}

.product-grid7 .social li a {
	color: #fff;
	background-color: #333;
	font-size: 16px;
	line-height: 40px;
	text-align: center;
	height: 40px;
	width: 40px;
	margin: 15px 0;
	border-radius: 50%;
	display: block;
	transition: all .5s ease-in-out
}

.product-grid7 .social li a:hover {
	color: #fff;
	background-color: #78e08f
}

.product-grid7 .product-new-label {
	color: #fff;
	background-color: #333;
	padding: 5px 10px;
	border-radius: 5px;
	display: block;
	position: absolute;
	top: 10px;
	left: 10px
}

.product-grid7 .product-content {
	text-align: center;
	padding: 20px 0 0
}

.product-grid7 .title {
	font-size: 15px;
	font-weight: 600;
	text-transform: capitalize;
	margin: 0 0 10px;
	transition: all .3s ease 0s
}

.product-grid7 .title a {
	color: #333
}

.product-grid7 .title a:hover {
	color: #78e08f
}

.product-grid7 .rating {
	color: #78e08f;
	font-size: 12px;
	padding: 0;
	margin: 0 0 10px;
	list-style: none
}

.product-grid7 .price {
	color: #333;
	font-size: 20px;
	font-family: Lora, serif;
	font-weight: 700;
	margin-bottom: 8px;
	text-align: center;
	transition: all .3s
}

.product-grid7 .price span {
	color: #999;
	font-size: 14px;
	font-weight: 700;
	text-decoration: line-through;
	margin-left: 7px;
	display: inline-block
}

@media only screen and (max-width:990px) {
	.product-grid7 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-8 **********************/
.product-grid8 {
	font-family: Poppins, sans-serif;
	position: relative;
	z-index: 1
}

.product-grid8 .product-image8 {
	border: 1px solid #e4e9ef;
	position: relative;
	transition: all .3s ease 0s
}

.product-grid8:hover .product-image8 {
	box-shadow: 0 0 10px rgba(0, 0, 0, .15)
}

.product-grid8 .product-image8 a {
	display: block
}

.product-grid8 .product-image8 img {
	width: 100%;
	height: auto
}

.product-grid8 .pic-1 {
	opacity: 1;
	transition: all .5s ease-out 0s
}

.product-grid8:hover .pic-1 {
	opacity: 0
}

.product-grid8 .pic-2 {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .5s ease-out 0s
}

.product-grid8:hover .pic-2 {
	opacity: 1
}

.product-grid8 .social {
	padding: 0;
	margin: 0;
	list-style: none;
	position: absolute;
	bottom: 13px;
	right: 13px;
	z-index: 1
}

.product-grid8 .social li {
	opacity: 0;
	transform: translateY(3px);
	transition: all .5s ease 0s
}

.product-grid8:hover .social li {
	margin: 0 0 10px;
	opacity: 1;
	transform: translateY(0)
}

.product-grid8:hover .social li:nth-child(1) {
	transition-delay: .1s
}

.product-grid8:hover .social li:nth-child(2) {
	transition-delay: .2s
}

.product-grid8:hover .social li:nth-child(3) {
	transition-delay: .4s
}

.product-grid8 .social li a {
	color: grey;
	font-size: 17px;
	line-height: 40px;
	text-align: center;
	height: 40px;
	width: 40px;
	border: 1px solid grey;
	display: block;
	transition: all .5s ease-in-out
}

.product-grid8 .social li a:hover {
	color: #000;
	border-color: #000
}

.product-grid8 .product-discount-label {
	display: block;
	padding: 4px 15px 4px 30px;
	color: #fff;
	background-color: #0081c2;
	position: absolute;
	top: 10px;
	right: 0;
	-webkit-clip-path: polygon(34% 0, 100% 0, 100% 100%, 0 100%);
	clip-path: polygon(34% 0, 100% 0, 100% 100%, 0 100%)
}

.product-grid8 .product-content {
	padding: 20px 0 0
}

.product-grid8 .price {
	color: #000;
	font-size: 19px;
	font-weight: 400;
	margin-bottom: 8px;
	text-align: left;
	transition: all .3s
}

.product-grid8 .price span {
	color: #999;
	font-size: 14px;
	font-weight: 500;
	text-decoration: line-through;
	margin-left: 7px;
	display: inline-block
}

.product-grid8 .product-shipping {
	color: rgba(0, 0, 0, .5);
	font-size: 15px;
	padding-left: 35px;
	margin: 0 0 15px;
	display: block;
	position: relative
}

.product-grid8 .product-shipping:before {
	content: '';
	height: 1px;
	width: 25px;
	background-color: rgba(0, 0, 0, .5);
	transform: translateY(-50%);
	position: absolute;
	top: 50%;
	left: 0
}

.product-grid8 .title {
	font-size: 16px;
	font-weight: 400;
	text-transform: capitalize;
	margin: 0 0 30px;
	transition: all .3s ease 0s
}

.product-grid8 .title a {
	color: #000
}

.product-grid8 .title a:hover {
	color: #0081c2
}

.product-grid8 .all-deals {
	display: block;
	color: #fff;
	background-color: #2e353b;
	font-size: 15px;
	letter-spacing: 1px;
	text-align: center;
	text-transform: uppercase;
	padding: 22px 5px;
	transition: all .5s ease 0s
}

.product-grid8 .all-deals .icon {
	margin-left: 7px
}

.product-grid8 .all-deals:hover {
	background-color: #0081c2
}

@media only screen and (max-width:990px) {
	.product-grid8 {
		margin-bottom: 30px
	}
}

/********************* Shopping Demo-9 **********************/
.product-grid9, .product-grid9 .product-image9 {
	position: relative
}

.product-grid9 {
	font-family: Poppins, sans-serif;
	z-index: 1
}

.product-grid9 .product-image9 a {
	display: block
}

.product-grid9 .product-image9 img {
	width: 100%;
	height: auto
}

.product-grid9 .pic-1 {
	opacity: 1;
	transition: all .5s ease-out 0s
}

.product-grid9:hover .pic-1 {
	opacity: 0
}

.product-grid9 .pic-2 {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	transition: all .5s ease-out 0s
}

.product-grid9:hover .pic-2 {
	opacity: 1
}

.product-grid9 .product-full-view {
	color: #505050;
	background-color: #fff;
	font-size: 16px;
	height: 45px;
	width: 45px;
	padding: 18px;
	border-radius: 100px 0 0;
	display: block;
	opacity: 0;
	position: absolute;
	right: 0;
	bottom: 0;
	transition: all .3s ease 0s
}

.product-grid9 .product-full-view:hover {
	color: #c0392b
}

.product-grid9:hover .product-full-view {
	opacity: 1
}

.product-grid9 .product-content {
	padding: 12px 12px 0;
	overflow: hidden;
	position: relative
}

.product-content .rating {
	padding: 0;
	margin: 0 0 7px;
	list-style: none
}

.product-grid9 .rating li {
	font-size: 12px;
	color: #ffd200;
	transition: all .3s ease 0s
}

.product-grid9 .rating li.disable {
	color: rgba(0, 0, 0, .2)
}

.product-grid9 .title {
	font-size: 16px;
	font-weight: 400;
	text-transform: capitalize;
	margin: 0 0 3px;
	transition: all .3s ease 0s
}

.product-grid9 .title a {
	color: rgba(0, 0, 0, .5)
}

.product-grid9 .title a:hover {
	color: #c0392b
}

.product-grid9 .price {
	color: #000;
	font-size: 17px;
	margin: 0;
	display: block;
	transition: all .5s ease 0s
}

.product-grid9:hover .price {
	opacity: 0
}

.product-grid9 .add-to-cart {
	display: block;
	color: #c0392b;
	font-weight: 600;
	font-size: 14px;
	opacity: 0;
	position: absolute;
	left: 10px;
	bottom: -20px;
	transition: all .5s ease 0s
}

.product-grid9:hover .add-to-cart {
	opacity: 1;
	bottom: 0
}

@media only screen and (max-width:990px) {
	.product-grid9 {
		margin-bottom: 30px
	}
}

.product-grid .social li a, .product-grid3 .social li a, .product-grid7 .social li a
	{
	padding: 12px;
}
</style>
<style type="text/css">
.card {
	padding-top: 20px;
	margin: 10px 0 20px 0;
	background-color: rgba(214, 224, 226, 0.2);
	border-top-width: 0;
	border-bottom-width: 2px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card .card-heading {
	padding: 0 20px;
	margin: 0;
}

.card .card-heading.simple {
	font-size: 20px;
	font-weight: 300;
	color: #777;
	border-bottom: 1px solid #e5e5e5;
}

.card .card-heading.image img {
	display: inline-block;
	width: 46px;
	height: 46px;
	margin-right: 15px;
	vertical-align: top;
	border: 0;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

.card .card-heading.image .card-heading-header {
	display: inline-block;
	vertical-align: top;
}

.card .card-heading.image .card-heading-header h3 {
	margin: 0;
	font-size: 14px;
	line-height: 16px;
	color: #262626;
}

.card .card-heading.image .card-heading-header span {
	font-size: 12px;
	color: #999999;
}

.card .card-body {
	padding: 0 20px;
	margin-top: 20px;
}

.card .card-media {
	padding: 0 20px;
	margin: 0 -14px;
}

.card .card-media img {
	max-width: 100%;
	max-height: 100%;
}

.card .card-actions {
	min-height: 30px;
	padding: 0 20px 20px 20px;
	margin: 20px 0 0 0;
}

.card .card-comments {
	padding: 20px;
	margin: 0;
	background-color: #f8f8f8;
}

.card .card-comments .comments-collapse-toggle {
	padding: 0;
	margin: 0 20px 12px 20px;
}

.card .card-comments .comments-collapse-toggle a, .card .card-comments .comments-collapse-toggle span
	{
	padding-right: 5px;
	overflow: hidden;
	font-size: 12px;
	color: #999;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.card-comments .media-heading {
	font-size: 13px;
	font-weight: bold;
}

.card.people {
	position: relative;
	display: inline-block;
	width: 170px;
	height: 300px;
	padding-top: 0;
	margin-left: 20px;
	overflow: hidden;
	vertical-align: top;
}

.card.people:first-child {
	margin-left: 0;
}

.card.people .card-top {
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 170px;
	height: 150px;
	background-color: #ffffff;
}

.card.people .card-top.green {
	background-color: #53a93f;
}

.card.people .card-top.blue {
	background-color: #427fed;
}

.card.people .card-info {
	position: absolute;
	top: 150px;
	display: inline-block;
	width: 100%;
	height: 101px;
	overflow: hidden;
	background: #ffffff;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card.people .card-info .title {
	display: block;
	margin: 8px 14px 0 14px;
	overflow: hidden;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	color: #404040;
}

.card.people .card-info .desc {
	display: block;
	margin: 8px 14px 0 14px;
	overflow: hidden;
	font-size: 12px;
	line-height: 16px;
	color: #737373;
	text-overflow: ellipsis;
}

.card.people .card-bottom {
	position: absolute;
	bottom: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	padding: 10px 20px;
	line-height: 29px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card.hovercard {
	position: relative;
	padding-top: 0;
	overflow: hidden;
	text-align: center;
	background-color: rgba(214, 224, 226, 0.2);
}

.card.hovercard .cardheader {
	background:
		url("https://images.freecreatives.com/wp-content/uploads/2016/03/Colorful-Material-Design-Background.jpg");
	background-size: cover;
	height: 135px;
}

.card.hovercard .avatar {
	position: relative;
	top: -50px;
	margin-bottom: -50px;
}

.card.hovercard .avatar img {
	width: 100px;
	height: 100px;
	max-width: 100px;
	max-height: 100px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	border: 5px solid rgba(255, 255, 255, 0.5);
}

.card.hovercard .info {
	padding: 4px 8px 10px;
}

.card.hovercard .info .title {
	margin-bottom: 4px;
	font-size: 24px;
	line-height: 1;
	color: #262626;
	vertical-align: middle;
}

.card.hovercard .info .desc {
	overflow: hidden;
	font-size: 12px;
	line-height: 20px;
	color: #737373;
	text-overflow: ellipsis;
}

.card.hovercard .bottom {
	padding: 0 20px;
	margin-bottom: 17px;
}

.btn {
	border-radius: 50%;
	width: 32px;
	height: 32px;
	line-height: 18px;
}

pre {
	display: block;
	margin: 0 0 10px;
	font-size: 13px;
	line-height: 1.42857143;
	word-break: break-all;
	word-wrap: break-word;
	color: #333;
	font-family: 'Old Standard TT', serif;
}
</style>
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
<style type="text/css">
.cart-product {
	background-color: white;
	font-size: 14px;
	border: 1px solid #eaeaec;
	border-radius: 0px;
	padding: 12px 12px 0;
	margin: 1px;
}

.cart-product-price {
	background-color: white;
	padding: 15px;
	border: 1px solid #eaeaec;
}

@media only screen and (max-width:765px) {
	.cart-product-price {
		margin: 18px;
	}
}
</style>
<style type="text/css">
div.clear {
	clear: both;
}

div.product-chooser {
	
}

div.product-chooser.disabled div.product-chooser-item {
	zoom: 1;
	filter: alpha(opacity = 60);
	opacity: 0.6;
	cursor: default;
}

div.product-chooser div.product-chooser-item {
	padding: 11px;
	border-radius: 6px;
	cursor: pointer;
	position: relative;
	border: 1px solid #efefef;
	margin-bottom: 10px;
	margin-left: 10px;
	margin-right: 10x;
}

div.product-chooser div.product-chooser-item.selected {
	border: 4px solid #428bca;
	background: #efefef;
	padding: 8px;
	filter: alpha(opacity = 100);
	opacity: 1;
}

div.product-chooser div.product-chooser-item img {
	padding: 0;
}

div.product-chooser div.product-chooser-item span.title {
	display: block;
	margin: 10px 0 5px 0;
	font-weight: bold;
	font-size: 12px;
}

div.product-chooser div.product-chooser-item span.description {
	font-size: 12px;
}

div.product-chooser div.product-chooser-item input {
	position: absolute;
	left: 0;
	top: 0;
	visibility: hidden;
}
</style>
<style type="text/css">
.modal-confirm {
	color: #636363;
	width: 325px;
	font-size: 14px;
}

.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}

.modal-confirm .modal-header {
	border-bottom: none;
	position: relative;
}

.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -15px;
}

.modal-confirm .form-control, .modal-confirm .btn {
	min-height: 40px;
	border-radius: 3px;
}

.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -5px;
}

.modal-confirm .modal-footer {
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 13px;
}

.modal-confirm .icon-box {
	color: #fff;
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: -70px;
	width: 95px;
	height: 95px;
	border-radius: 50%;
	z-index: 9;
	background: #82ce34;
	padding: 15px;
	text-align: center;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}

.modal-confirm .icon-box i {
	font-size: 58px;
	position: relative;
	top: 3px;
}

.modal-confirm.modal-dialog {
	margin-top: 80px;
}

.modal-confirm .btn {
	color: #fff;
	border-radius: 4px;
	background: #82ce34;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border: none;
}

.modal-confirm .btn:hover, .modal-confirm .btn:focus {
	background: #6fb32b;
	outline: none;
}

.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>
<style type="text/css">
@media only screen and (max-width :320px) {
	.logout-cls {
		padding: 15px;
	}
}

@media only screen and (min-width :321px) {
	.logout-cls {
		padding-left: 5px;
	}
}
</style>
<!-- USER PROFILE -->
<style type="text/css">
h2 {
	clear: both;
	font-size: 1.8em;
	margin-bottom: 10px;
	padding: 10px 0 10px 30px;
}

h3>span {
	border-bottom: 2px solid #C2C2C2;
	display: inline-block;
	padding: 0 5px 5px;
}

/* USER PROFILE */
#user-profile h2 {
	padding-right: 15px;
}

#user-profile .profile-status {
	font-size: 0.75em;
	padding-left: 12px;
	margin-top: -10px;
	padding-bottom: 10px;
	color: #8dc859;
}

#user-profile .profile-status.offline {
	color: #fe635f;
}

#user-profile .profile-img {
	border: 1px solid #e1e1e1;
	padding: 4px;
	margin-top: 10px;
	margin-bottom: 10px;
}

#user-profile .profile-label {
	text-align: center;
	padding: 5px 0;
}

#user-profile .profile-label .label {
	padding: 5px 15px;
	font-size: 1em;
}

#user-profile .profile-stars {
	color: #FABA03;
	padding: 7px 0;
	text-align: center;
}

#user-profile .profile-stars>i {
	margin-left: -2px;
}

#user-profile .profile-since {
	text-align: center;
	margin-top: -5px;
}

#user-profile .profile-details {
	padding: 15px 0;
	border-top: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
	margin: 15px 0;
}

#user-profile .profile-details ul {
	padding: 0;
	margin-top: 0;
	margin-bottom: 0;
	margin-left: 40px;
}

#user-profile .profile-details ul>li {
	margin: 3px 0;
	line-height: 1.5;
}

#user-profile .profile-details ul>li>i {
	padding-top: 2px;
}

#user-profile .profile-details ul>li>span {
	color: #34d1be;
}

#user-profile .profile-header {
	position: relative;
}

#user-profile .profile-header>h3 {
	margin-top: 10px
}

#user-profile .profile-header .edit-profile {
	margin-top: -6px;
	position: absolute;
	right: 0;
	top: 0;
}

#user-profile .profile-tabs {
	margin-top: 30px;
}

#user-profile .profile-user-info {
	padding-bottom: 20px;
}

#user-profile .profile-user-info .profile-user-details {
	position: relative;
	padding: 4px 0;
}

#user-profile .profile-user-info .profile-user-details .profile-user-details-label
	{
	width: 110px;
	float: left;
	bottom: 0;
	font-weight: bold;
	left: 0;
	position: absolute;
	text-align: right;
	top: 0;
	width: 110px;
	padding-top: 4px;
}

#user-profile .profile-user-info .profile-user-details .profile-user-details-value
	{
	margin-left: 120px;
}

#user-profile .profile-social li {
	padding: 4px 0;
}

#user-profile .profile-social li>i {
	padding-top: 6px;
}

@media only screen and (max-width: 767px) {
	#user-profile .profile-user-info .profile-user-details .profile-user-details-label
		{
		float: none;
		position: relative;
		text-align: left;
	}
	#user-profile .profile-user-info .profile-user-details .profile-user-details-value
		{
		margin-left: 0;
	}
	#user-profile .profile-social {
		margin-top: 20px;
	}
}

@media only screen and (max-width: 420px) {
	#user-profile .profile-header .edit-profile {
		display: block;
		position: relative;
		margin-bottom: 15px;
	}
	#user-profile .profile-message-btn .btn {
		display: block;
	}
}

.main-box {
	background: #FFFFFF;
	-webkit-box-shadow: 1px 1px 2px 0 #CCCCCC;
	-moz-box-shadow: 1px 1px 2px 0 #CCCCCC;
	-o-box-shadow: 1px 1px 2px 0 #CCCCCC;
	-ms-box-shadow: 1px 1px 2px 0 #CCCCCC;
	box-shadow: 1px 1px 2px 0 #CCCCCC;
	margin-bottom: 16px;
	padding: 20px;
}

.main-box h2 {
	margin: 0 0 15px -20px;
	padding: 5px 0 5px 20px;
	border-left: 10px solid #c2c2c2; /*7e8c8d*/
}

.btn {
	border: none;
	padding: 6px 12px;
	border-bottom: 4px solid;
	-webkit-transition: border-color 0.1s ease-in-out 0s, background-color
		0.1s ease-in-out 0s;
	transition: border-color 0.1s ease-in-out 0s, background-color 0.1s
		ease-in-out 0s;
	outline: none;
}

.btn-default, .wizard-cancel, .wizard-back {
	background-color: #7e8c8d;
	border-color: #626f70;
	color: #fff;
}

.btn-default:hover, .btn-default:focus, .btn-default:active,
	.btn-default.active, .open .dropdown-toggle.btn-default, .wizard-cancel:hover,
	.wizard-cancel:focus, .wizard-cancel:active, .wizard-cancel.active,
	.wizard-back:hover, .wizard-back:focus, .wizard-back:active,
	.wizard-back.active {
	background-color: #949e9f;
	border-color: #748182;
	color: #fff;
}

.btn-default .caret {
	border-top-color: #FFFFFF;
}

.btn-info {
	background-color: #5daee7;
	border-color: #4c95c9;
}

.btn-info:hover, .btn-info:focus, .btn-info:active, .btn-info.active,
	.open .dropdown-toggle.btn-info {
	background-color: #4c95c9;
	border-color: #3f80af;
}

.btn-link {
	border: none;
}

.btn-primary {
	background-color: #3fcfbb;
	border-color: #2fb2a0;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active,
	.btn-primary.active, .open .dropdown-toggle.btn-primary {
	background-color: #38c2af;
	border-color: #2aa493;
}

.btn-success {
	background-color: #8dc859;
	border-color: #77ab49;
}

.btn-success:hover, .btn-success:focus, .btn-success:active,
	.btn-success.active, .open .dropdown-toggle.btn-success {
	background-color: #77ab49;
}

.btn-danger {
	background-color: #fe635f;
	border-color: #dd504c;
}

.btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.active,
	.open .dropdown-toggle.btn-danger {
	background-color: #dd504c;
}

.btn-warning {
	background-color: #f1c40f;
	border-color: #d5ac08;
}

.btn-warning:hover, .btn-warning:focus, .btn-warning:active,
	.btn-warning.active, .open .dropdown-toggle.btn-warning {
	background-color: #e0b50a;
	border-color: #bd9804;
}

.icon-box {
	
}

.icon-box .btn {
	border: 1px solid #e1e1e1;
	margin-left: 3px;
	margin-right: 0;
}

.icon-box .btn:hover {
	background-color: #eee;
	color: #2BB6A3;
}

a {
	color: #2bb6a3;
	outline: none !important;
}

a:hover, a:focus {
	color: #2bb6a3;
}

/* TABLES */
.table {
	border-collapse: separate;
}

.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
	background-color: #eee;
}

.table thead>tr>th {
	border-bottom: 1px solid #C2C2C2;
	padding-bottom: 0;
}

.table tbody>tr>td {
	font-size: 0.875em;
	background: #f5f5f5;
	border-top: 10px solid #fff;
	vertical-align: middle;
	padding: 12px 8px;
}

.table tbody>tr>td:first-child, .table thead>tr>th:first-child {
	padding-left: 20px;
}

.table thead>tr>th span {
	border-bottom: 2px solid #C2C2C2;
	display: inline-block;
	padding: 0 5px;
	padding-bottom: 5px;
	font-weight: normal;
}

.table thead>tr>th>a span {
	color: #344644;
}

.table thead>tr>th>a span:after {
	content: "\f0dc";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-left: 5px;
	font-size: 0.75em;
}

.table thead>tr>th>a.asc span:after {
	content: "\f0dd";
}

.table thead>tr>th>a.desc span:after {
	content: "\f0de";
}

.table thead>tr>th>a:hover span {
	text-decoration: none;
	color: #2bb6a3;
	border-color: #2bb6a3;
}

.table.table-hover tbody>tr>td {
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
}

.table tbody tr td .call-type {
	display: block;
	font-size: 0.75em;
	text-align: center;
}

.table tbody tr td .first-line {
	line-height: 1.5;
	font-weight: 400;
	font-size: 1.125em;
}

.table tbody tr td .first-line span {
	font-size: 0.875em;
	color: #969696;
	font-weight: 300;
}

.table tbody tr td .second-line {
	font-size: 0.875em;
	line-height: 1.2;
}

.table a.table-link {
	margin: 0 5px;
	font-size: 1.125em;
}

.table a.table-link:hover {
	text-decoration: none;
	color: #2aa493;
}

.table a.table-link.danger {
	color: #fe635f;
}

.table a.table-link.danger:hover {
	color: #dd504c;
}

.table-products tbody>tr>td {
	background: none;
	border: none;
	border-bottom: 1px solid #ebebeb;
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
	position: relative;
}

.table-products tbody>tr:hover>td {
	text-decoration: none;
	background-color: #f6f6f6;
}

.table-products .name {
	display: block;
	font-weight: 600;
	padding-bottom: 7px;
}

.table-products .price {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}

.table-products .price>i {
	color: #8dc859;
}

.table-products .warranty {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}

.table-products .warranty>i {
	color: #f1c40f;
}

.table tbody>tr.table-line-fb>td {
	background-color: #9daccb;
	color: #262525;
}

.table tbody>tr.table-line-twitter>td {
	background-color: #9fccff;
	color: #262525;
}

.table tbody>tr.table-line-plus>td {
	background-color: #eea59c;
	color: #262525;
}

.table-stats .status-social-icon {
	font-size: 1.9em;
	vertical-align: bottom;
}

.table-stats .table-line-fb .status-social-icon {
	color: #556484;
}

.table-stats .table-line-twitter .status-social-icon {
	color: #5885b8;
}

.table-stats .table-line-plus .status-social-icon {
	color: #a75d54;
}

.daterange-filter {
	background: none repeat scroll 0 0 #FFFFFF;
	border: 1px solid #CCCCCC;
	cursor: pointer;
	padding: 5px 10px;
}

.filter-block .form-group {
	margin-right: 10px;
	position: relative;
}

.filter-block .form-group .form-control {
	height: 36px;
}

.filter-block .form-group .search-icon {
	position: absolute;
	color: #707070;
	right: 8px;
	top: 11px;
}

.filter-block .btn {
	margin-left: 5px;
}

@media only screen and (max-width: 440px) {
	.filter-block {
		float: none !important;
		clear: both
	}
	.filter-block .form-group {
		float: none !important;
		margin-right: 0;
	}
	.filter-block .btn {
		display: block;
		float: none !important;
		margin-bottom: 15px;
		margin-left: 0;
	}
	#reportrange {
		clear: both;
		float: none !important;
		margin-bottom: 15px;
	}
}

.tabs-wrapper .tab-content {
	margin-bottom: 20px;
	padding: 0 10px;
}

/* RECENT - USERS */
.widget-users {
	list-style: none;
	margin: 0;
	padding: 0;
}

.widget-users li {
	border-bottom: 1px solid #ebebeb;
	padding: 15px 0;
	height: 96px;
}

.widget-users li>.img {
	float: left;
	margin-top: 8px;
	width: 50px;
	height: 50px;
	overflow: hidden;
	border-radius: 50%;
}

.widget-users li>.details {
	margin-left: 60px;
}

.widget-users li>.details>.name {
	font-weight: 600;
}

.widget-users li>.details>.name>a {
	color: #344644;
}

.widget-users li>.details>.name>a:hover {
	color: #2bb6a3;
}

.widget-users li>.details>.time {
	color: #2bb6a3;
	font-size: 0.75em;
	padding-bottom: 7px;
}

.widget-users li>.details>.time.online {
	color: #8dc859;
}

/* CONVERSATION */
.conversation-inner {
	padding: 0 0 5px 0;
	margin-right: 10px;
}

.conversation-item {
	padding: 5px 0;
	position: relative;
}

.conversation-user {
	width: 50px;
	height: 50px;
	overflow: hidden;
	float: left;
	border-radius: 50%;
	margin-top: 6px;
}

.conversation-body {
	background: #f5f5f5;
	font-size: 0.875em;
	width: auto;
	margin-left: 60px;
	padding: 8px 10px;
	position: relative;
}

.conversation-body:before {
	border-color: transparent #f5f5f5 transparent transparent;
	border-style: solid;
	border-width: 6px;
	content: "";
	cursor: pointer;
	left: -12px;
	position: absolute;
	top: 25px;
}

.conversation-item.item-right .conversation-body {
	background: #dcfffa;
}

.conversation-item.item-right .conversation-body:before {
	border-color: transparent transparent transparent #dcfffa;
	left: auto;
	right: -12px;
}

.conversation-item.item-right .conversation-user {
	float: right;
}

.conversation-item.item-right .conversation-body {
	margin-left: 0;
	margin-right: 60px;
}

.conversation-body>.name {
	font-weight: 600;
	font-size: 1.125em;
}

.conversation-body>.time {
	position: absolute;
	font-size: 0.875em;
	right: 10px;
	top: 0;
	margin-top: 10px;
	color: #605f5f;
	font-weight: 300;
}

.conversation-body>.time:before {
	content: "\f017";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-top: 4px;
	font-size: 0.875em;
}

.conversation-body>.text {
	padding-top: 6px;
}

.conversation-new-message {
	padding-top: 10px;
}

textarea.form-control {
	height: auto;
}

.form-control {
	border-radius: 0px;
	border-color: #e1e1e1;
	box-shadow: none;
	-webkit-box-shadow: none;
}

@media only screen and (max-width : 320px) {
	.main-box {
		width: 270px;
		margin-left: -60px;
	}
}

@media only screen and (min-width : 321px) and (max-width : 375px) {
	.main-box {
		width: 310px;
		margin-left: -60px;
	}
}

@media only screen and (min-width : 376px) and (max-width : 420px) {
	.main-box {
		width: 330px;
		margin-left: -60px;
	}
}
</style>
<style type="text/css">
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
<style>
.address__icon {
	padding-top: 40px;
}

#scrollUp {
	padding-top: 10px;
}
</style>
<!-- CHAT -->
<style type="text/css">
.container{max-width:1170px; margin:auto;}
img{ max-width:100%;}
.inbox_people {
  background: #f8f8f8 none repeat scroll 0 0;
  float: left;
  overflow: hidden;
  width: 40%; border-right:1px solid #c4c4c4;
}
.inbox_msg {
  border: 1px solid #c4c4c4;
  clear: both;
  overflow: hidden;
}
.top_spac{ margin: 20px 0 0;}


.recent_heading {float: left; width:40%;}
.srch_bar {
  display: inline-block;
  text-align: right;
  width: 60%; padding:
}
.headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

.recent_heading h4 {
  color: #05728f;
  font-size: 21px;
  margin: auto;
}
.srch_bar input{ border:1px solid #cdcdcd; border-width:0 0 1px 0; width:80%; padding:2px 0 4px 6px; background:none;}
.srch_bar .input-group-addon button {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  padding: 0;
  color: #707070;
  font-size: 18px;
}
.srch_bar .input-group-addon { margin: 0 0 0 -27px;}

.chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
.chat_ib h5 span{ font-size:13px; float:right;}
.chat_ib p{ font-size:14px; color:#989898; margin:auto}
.chat_img {
  float: left;
  width: 11%;
}
.chat_ib {
  float: left;
  padding: 0 0 0 15px;
  width: 88%;
}

.chat_people{ overflow:hidden; clear:both;}
.chat_list {
  border-bottom: 1px solid #c4c4c4;
  margin: 0;
  padding: 18px 16px 10px;
}
.inbox_chat { height: 550px; overflow-y: scroll;}

.active_chat{ background:#ebebeb;}

.incoming_msg_img {
  display: inline-block;
  width: 6%;
}
.received_msg {
  display: inline-block;
  padding: 0 0 0 10px;
  vertical-align: top;
  width: 92%;
 }
 .received_withd_msg p {
  background: #ebebeb none repeat scroll 0 0;
  border-radius: 3px;
  color: #646464;
  font-size: 14px;
  margin: 0;
  padding: 5px 10px 5px 12px;
  width: 100%;
}
.time_date {
  color: #747474;
  display: block;
  font-size: 12px;
  margin: 8px 0 0;
}
.received_withd_msg { width: 57%;}
.mesgs {
  float: left;
  padding: 30px 15px 0 25px;
  width: 60%;
}

 .sent_msg p {
  background: #05728f none repeat scroll 0 0;
  border-radius: 3px;
  font-size: 14px;
  margin: 0; color:#fff;
  padding: 5px 10px 5px 12px;
  width:100%;
}
.outgoing_msg{ overflow:hidden;}
.sent_msg {
  float: right;
  width: 100%;
}
.input_msg_write input {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  color: #4c4c4c;
  font-size: 15px;
  min-height: 48px;
  width: 100%;
}

.type_msg {border-top: 1px solid #c4c4c4;position: relative;}
.msg_send_btn {
  background: #05728f none repeat scroll 0 0;
  border: medium none;
  border-radius: 50%;
  color: #fff;
  cursor: pointer;
  font-size: 17px;
  height: 33px;
  position: absolute;
  right: 0;
  top: 11px;
  width: 33px;
}
.messaging { padding: 0 0 50px 0;}
.msg_history {
  height: 516px;
  overflow-y: auto;
}
</style>
<!-- USER REVIEW -->
<style>
.carousel-control.left,.carousel-control.right  {background:none;width:25px;}
.carousel-control.left {left:-25px;}
.carousel-control.right {right:-25px;}
.broun-block {
    background: url("http://myinstantcms.ru/images/bg-broun1.jpg") repeat scroll center top rgba(0, 0, 0, 0);
    padding-bottom: 34px;
}
.block-text {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 3px 0 #2c2222;
    color: #626262;
    font-size: 14px;
    margin-top: 27px;
    padding: 15px 18px;
}
.block-text a {
 color: #7d4702;
    font-size: 25px;
    font-weight: bold;
    line-height: 21px;
    text-decoration: none;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
}
.mark {
    padding: 12px 0;background:none;
}
.block-text p {
    color: #585858;
    font-family: Georgia;
    font-style: italic;
    line-height: 20px;
}
.sprite {
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAeUCAYAAAAU3UTMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjY1MzJERUNDRjBEMTExRTM4N0ZFOUUyNENEOTZCNjVCIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjY1MzJERUNERjBEMTExRTM4N0ZFOUUyNENEOTZCNjVCIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NjUzMkRFQ0FGMEQxMTFFMzg3RkU5RTI0Q0Q5NkI2NUIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NjUzMkRFQ0JGMEQxMTFFMzg3RkU5RTI0Q0Q5NkI2NUIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4/ZdnrAAAydElEQVR42uydCbgUxbn3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');
}
.sprite-i-triangle {
    background-position: 0 -1298px;
    height: 44px;
    width: 50px;
}
.block-text ins {
    bottom: -44px;
    left: 50%;
    margin-left: -60px;
}


.block {
    display: block;
}
.zmin {
    z-index: 1;
}
.ab {
    position: absolute;
}

.person-text {
    padding: 10px 0 0;
    text-align: center;
    z-index: 2;
}
.person-text a {
    color: #ffcc00;
    display: block;
    font-size: 14px;
    margin-top: 3px;
    text-decoration: underline;
}
.person-text i {
    color: #fff;
    font-family: Georgia;
    font-size: 13px;
}
.rel {
    position: relative;
}
</style>
<!-- REVIEW -->
<style>

</style>
</head>

<body>
	<!-- Body main wrapper start -->
	<div class="wrapper">
		<!-- Start Header Style -->
		<header id="htc__header" class="htc__header__area header--one">
			<!-- Start Mainmenu Area -->
			<div id="sticky-header-with-topbar"
				class="mainmenu__wrap sticky__header">
				<div class="container">
					<div class="row">
						<div class="menumenu__container clearfix">
							<div class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
								<div class="logo">
									<a href="${pageContext.request.contextPath}/"><img
										src="https://cdn.dribbble.com/users/1413861/screenshots/4532751/z.gif"
										alt="logo images" height="65px;"
										style="border-bottom-left-radius: 25px; border-top-right-radius: 25px"></a>
									<font size="5" style="padding-top: 10px; padding-left: 5px;"
										color="black"><b></b></font>
								</div>
							</div>
							<div class="col-md-7 col-lg-7 col-sm-4 col-xs-3">
								<nav class="main__menu__nav hidden-xs hidden-sm">
									<ul class="main__menu">
										<li class="drop"><a
											href="${pageContext.request.contextPath}/">Home</a></li>
										<li class="drop"><a href="${pageContext.request.contextPath}/products?q=f">women</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Volly Ball&g=f">Volly
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Kabaddi&g=f">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Cricket&g=f">Cricket</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Tennis/Badminton&g=f">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Basket Ball&g=f">Basket
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Foot Ball&g=f">Foot
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Athletics&g=f">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=HandBall&g=f">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Track Suit&g=f">Tract
																Suits</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Tract Pant&g=f">Tract
																Pants</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=T-Shirt&g=f">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Sweat Shirt&g=f">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Corporate T-Shirt&g=f">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Cap&g=f">Cap</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Shoe&g=f">Shoes</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
											</ul></li>
										<li class="drop"><a href="${pageContext.request.contextPath}/products?q=m">men</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Sports Category</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Volly Ball&g=m">Volly
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Kabaddi&g=m">Kabaddi</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Cricket&g=m">Cricket</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Tennis/Badminton&g=m">Tennis/Badminton</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Basket Ball&g=m">Basket
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Foot Ball&g=m">Foot
																Ball</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Athletics&g=m">Athletics</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=HandBall&g=m">HandBall</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Active Wear</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Track Suit&g=m">Tract
																Suits</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Tract Pant&g=m">Tract
																Pants</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=T-Shirt&g=m">T-Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Active T-Shirt&g=m">Sweat
																Shirts</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Corporate T-Shirt&g=m">Corporate
																T-Shirts</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Cap&g=m">Cap</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Shoe&g=m">Shoes</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
											</ul></li>
										<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
										<li><a href="${pageContext.request.contextPath}/blog/">Bulk
												Order</a></li>
									</ul>
								</nav>

								<div class="mobile-menu clearfix visible-xs visible-sm">
									<nav id="mobile_dropdown">
										<ul>
											<li><a href="${pageContext.request.contextPath}/">Home</a></li>
											<li><a href="#">Men</a>
												<ul>
													<li><a href="blog.html">Sports Category</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Volly
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Kabaddi</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Cricket</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tennis/Badminton</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Basket
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Foot
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Athletics</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">HandBall</a></li>
														</ul></li>
													<li><a href="blog-details.html">Active Wear</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Suits</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Pants</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">T-Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Sweat
																	Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Corporate
																	T-Shirts</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/cart">Footwear
															and Accessories</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Shoes</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Caps</a></li>
														</ul></li>
												</ul></li>
											<li><a href="#">Women</a>
												<ul>
													<li><a href="blog.html">Sports Category</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Volly
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Kabaddi</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Cricket</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tennis/Badminton</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Basket
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Foot
																	Ball</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Athletics</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">HandBall</a></li>
														</ul></li>
													<li><a href="blog-details.html">Active Wear</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Suits</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Tract
																	Pants</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">T-Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Sweat
																	Shirts</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Corporate
																	T-Shirts</a></li>
														</ul></li>
													<li><a
														href="${pageContext.request.contextPath}/checkout/cart">Footwear
															and Accessories</a>
														<ul>
															<li><a
																href="${pageContext.request.contextPath}/products/">Shoes</a></li>
															<li><a
																href="${pageContext.request.contextPath}/products/">Caps</a></li>
														</ul></li>
												</ul></li>
											<li><a href="${pageContext.request.contextPath}/blog/">contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-4 col-lg-3 col-sm-5 col-xs-5">
								<div class="header__right">
									<div class="header__account">
										<a href="${pageContext.request.contextPath}/user/profile"
											title="Welcome ${USER_ENTITY.userFirstName}"><i
											class="icon-user icons"></i></a>
									</div>
									<div class="header__account">
										<a href="${pageContext.request.contextPath}/cart/"><i
											class="icon-basket icons"></i></a>
									</div>
									<div class="header__account">
										<a href="${pageContext.request.contextPath}/wishlist/"
											title="Wishlist"><i class="icon-heart icons"></i></a>
									</div>
									<div class="header__account">
										<a href="${pageContext.request.contextPath}/orders/"
											title="View All Orders"><i class="fa fa-file-text-o"></i></a>
									</div>
									<core:if test="${empty USER_ENTITY}">
										<div class="header__account logout-cls">
											<a href="${pageContext.request.contextPath}/signin"
												title="Sign In"><i class="icon-login icons"></i></a>
										</div>
									</core:if>
									<core:if test="${not empty USER_ENTITY}">
										<div class="header__account logout-cls">
											<a href="${pageContext.request.contextPath}/logout"
												title="Sign out"><i class="icon-logout icons"
												style="color: red"></i></a>
										</div>
									</core:if>
								</div>
							</div>
						</div>
					</div>
					<div class="mobile-menu-area"></div>
				</div>
			</div>
			<!-- End Mainmenu Area -->
		</header>
		<!-- End Header Area -->
		<div class="body__overlay"></div>
		<!-- Start Offset Wrapper -->
		<div class="offset__wrapper">
			<!-- Start Cart Panel -->
			<tiles:insertAttribute name="cart"></tiles:insertAttribute>
			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<tiles:insertAttribute name="body"></tiles:insertAttribute>
		<footer id="htc__footer">
			<!-- Start Footer Widget -->
			<div class="footer__container bg__cat--1">
				<div class="container">
					<div class="row">
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="footer">
								<h2 class="title__line--2">CONTACT US</h2>
								<div class="ft__details">
									<p>#15, 1st main, 1st and 2nd Stage, Yelahanka, Yelahanka
										New Town, Bengaluru, Karnataka-560064</p>
									<div class="ft__social__link">
										<ul style="color: #a4a4a4">
											<li><b>Email :</b> zedsports@support.com</li>
											<li><b>Phone :</b> +91 88920 42721</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
							<div class="footer">
								<h2 class="title__line--2">information</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><a href="#">About us</a></li>
										<li><a href="#">Delivery Information</a></li>
										<li><a href="#">Privacy & Policy</a></li>
										<li><a href="#">Terms & Condition</a></li>
										<li><a href="#">Manufactures</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">my account</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><a href="${pageContext.request.contextPath}/user/profile">My Account</a></li>
										<li><a
											href="${pageContext.request.contextPath}/cart/">My
												Cart</a></li>
										<li><a href="${pageContext.request.contextPath}/signin">Login</a></li>
										<li><a
											href="${pageContext.request.contextPath}/wishlist/">Wishlist</a></li>
										<li><a
											href="${pageContext.request.contextPath}/orders/">Orders</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">SUBSCRIBE</h2>
								<div class="ft__inner">
									<div class="news__input">
										<input type="text" placeholder="Your Mail*">
										<div class="send__btn">
											<a class="fr__btn" href="#">Send Mail</a>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
					</div>
				</div>
			</div>
		</footer>
		<!-- End Footer Style -->
	</div>
	<!-- Body main wrapper end -->



	<spring:url value="/Resources/js/bootstrap.min.js" var="BOOTSTRAP_JS" />
	<script src="${BOOTSTRAP_JS}"></script>

	<spring:url value="/Resources/js/plugins.js" var="PLUGIN_JS" />
	<script src="${PLUGIN_JS}"></script>

	<spring:url value="/Resources/js/slick.min.js" var="SLICK_JS" />
	<script src="${SLICK_JS}"></script>

	<spring:url value="/Resources/js/owl.carousel.min.js"
		var="OWL_CAROUSEL_JS" />
	<script src="${OWL_CAROUSEL_JS}"></script>

	<spring:url value="/Resources/js/waypoints.min.js" var="WAYPOINTS_JS" />
	<script src="${WAYPOINTS_JS}"></script>

	<spring:url value="/Resources/js/main.js" var="MAIN_JS" />
	<script src="${MAIN_JS}"></script>

	<spring:url value="/Resources/zed/js/zed.js" var="ZED_JS" />
	<script src="${ZED_JS}"></script>

	<script type="text/javascript">
		
		async function addProductToWishList(productId) {
			var isUserSessionActive = '${USER_ENTITY.userId}'.length == '0' ? 'INACTIVE': 'ACTIVE';
			var responseMessage;
			if (isUserSessionActive == 'ACTIVE') {
				var param = "productId=" + productId + "&userId="+ '${USER_ENTITY.userId}'+"&"+"uqi="+"${UNIQUE_ID}";
				var response = await serviceCall("${pageContext.request.contextPath}/wishlist/addProduct","POST", param);
				responseMessage = response == 'true' ? 'Product Added to wishlist': 'Sorry! Something is wrong. Please try again.';
			} else {
				responseMessage = 'Please Login to Add Products to Wishlist';
			}
			alert(responseMessage);
		}

		async function addProductToCart(productId) {
			var isUserSessionActive = '${USER_ENTITY.userId}'.length == '0' ? 'INACTIVE': 'ACTIVE';
			var responseMessage;
			if (isUserSessionActive == 'ACTIVE') {
				var param = "productId=" + productId + "&userId="+ '${USER_ENTITY.userId}'+"&"+"uqi="+"${UNIQUE_ID}";
			var response = await serviceCall("${pageContext.request.contextPath}/cart/addProduct","POST", param);
			responseMessage = response == 'true' ? 'Product Added to Cart': 'Sorry! Something is wrong. Please try again.';
			}else{
				responseMessage = 'Please Login to Add Products to Cart';
			}
			alert(responseMessage);
		}
	</script>
</body>

</html>