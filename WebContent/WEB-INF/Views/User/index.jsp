
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

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">


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

h3 > span {
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
#user-profile .profile-stars > i {
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
#user-profile .profile-details ul > li {
	margin: 3px 0;
	line-height: 1.5;
}
#user-profile .profile-details ul > li > i {
	padding-top: 2px;
}
#user-profile .profile-details ul > li > span {
	color: #34d1be;
}
#user-profile .profile-header {
	position: relative;
}
#user-profile .profile-header > h3 {
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
#user-profile .profile-user-info .profile-user-details .profile-user-details-label {
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
#user-profile .profile-user-info .profile-user-details .profile-user-details-value {
	margin-left: 120px;
}
#user-profile .profile-social li {
	padding: 4px 0;
}
#user-profile .profile-social li > i {
	padding-top: 6px;
}
@media only screen and (max-width: 767px) {
	#user-profile .profile-user-info .profile-user-details .profile-user-details-label {
		float: none;
		position: relative;
		text-align: left;
	}
	#user-profile .profile-user-info .profile-user-details .profile-user-details-value {
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
	-webkit-transition: border-color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s;
	transition: border-color 0.1s ease-in-out 0s, background-color 0.1s ease-in-out 0s;
	outline: none;
}
.btn-default,
.wizard-cancel,
.wizard-back {
	background-color: #7e8c8d;
	border-color: #626f70;
	color: #fff;
}
.btn-default:hover,
.btn-default:focus,
.btn-default:active,
.btn-default.active, 
.open .dropdown-toggle.btn-default,
.wizard-cancel:hover,
.wizard-cancel:focus,
.wizard-cancel:active,
.wizard-cancel.active,
.wizard-back:hover,
.wizard-back:focus,
.wizard-back:active,
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
.btn-info:hover,
.btn-info:focus,
.btn-info:active,
.btn-info.active, 
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
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active, 
.open .dropdown-toggle.btn-primary {
	background-color: #38c2af;
	border-color: #2aa493;
}
.btn-success {
	background-color: #8dc859;
	border-color: #77ab49;
}
.btn-success:hover,
.btn-success:focus,
.btn-success:active,
.btn-success.active, 
.open .dropdown-toggle.btn-success {
	background-color: #77ab49;
}
.btn-danger {
	background-color: #fe635f;
	border-color: #dd504c;
}
.btn-danger:hover,
.btn-danger:focus,
.btn-danger:active,
.btn-danger.active, 
.open .dropdown-toggle.btn-danger {
	background-color: #dd504c;
}
.btn-warning {
	background-color: #f1c40f;
	border-color: #d5ac08;
}
.btn-warning:hover,
.btn-warning:focus,
.btn-warning:active,
.btn-warning.active, 
.open .dropdown-toggle.btn-warning {
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
a:hover,
a:focus {
	color: #2bb6a3;
}


/* TABLES */
.table {
    border-collapse: separate;
}
.table-hover > tbody > tr:hover > td,
.table-hover > tbody > tr:hover > th {
	background-color: #eee;
}
.table thead > tr > th {
	border-bottom: 1px solid #C2C2C2;
	padding-bottom: 0;
}
.table tbody > tr > td {
	font-size: 0.875em;
	background: #f5f5f5;
	border-top: 10px solid #fff;
	vertical-align: middle;
	padding: 12px 8px;
}
.table tbody > tr > td:first-child,
.table thead > tr > th:first-child {
	padding-left: 20px;
}
.table thead > tr > th span {
	border-bottom: 2px solid #C2C2C2;
	display: inline-block;
	padding: 0 5px;
	padding-bottom: 5px;
	font-weight: normal;
}
.table thead > tr > th > a span {
	color: #344644;
}
.table thead > tr > th > a span:after {
	content: "\f0dc";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-left: 5px;
	font-size: 0.75em;
}
.table thead > tr > th > a.asc span:after {
	content: "\f0dd";
}
.table thead > tr > th > a.desc span:after {
	content: "\f0de";
}
.table thead > tr > th > a:hover span {
	text-decoration: none;
	color: #2bb6a3;
	border-color: #2bb6a3;
}
.table.table-hover tbody > tr > td {
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

.table-products tbody > tr > td {
	background: none;
	border: none;
	border-bottom: 1px solid #ebebeb;
	-webkit-transition: background-color 0.15s ease-in-out 0s;
	transition: background-color 0.15s ease-in-out 0s;
	position: relative;
}
.table-products tbody > tr:hover > td {
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
.table-products .price > i {
	color: #8dc859;
}
.table-products .warranty {
	display: block;
	text-decoration: none;
	width: 50%;
	float: left;
	font-size: 0.875em;
}
.table-products .warranty > i {
	color: #f1c40f;
}
.table tbody > tr.table-line-fb > td {
	background-color: #9daccb;
	color: #262525;
}
.table tbody > tr.table-line-twitter > td {
	background-color: #9fccff;
	color: #262525;
}
.table tbody > tr.table-line-plus > td {
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
.widget-users li > .img {
	float: left;
	margin-top: 8px;
	width: 50px;
	height: 50px;
	overflow: hidden;
	border-radius: 50%;
}
.widget-users li > .details {
	margin-left: 60px;
}
.widget-users li > .details > .name {
	font-weight: 600;
}
.widget-users li > .details > .name > a {
	color: #344644;
}
.widget-users li > .details > .name > a:hover {
	color: #2bb6a3;
}
.widget-users li > .details > .time {
	color: #2bb6a3;
	font-size: 0.75em;
	padding-bottom: 7px;
}
.widget-users li > .details > .time.online {
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
.conversation-body > .name {
	font-weight: 600;
	font-size: 1.125em;
}
.conversation-body > .time {
	position: absolute;
	font-size: 0.875em;
	right: 10px;
	top: 0;
	margin-top: 10px;
	color: #605f5f;
	font-weight: 300;
}
.conversation-body > .time:before {
	content: "\f017";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	margin-top: 4px;
	font-size: 0.875em;
}
.conversation-body > .text {
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

h4{text-align:center;margin:30px 0px;color:#444;}
.mt-10{margin-top:20px;}
a:hover,a:focus{
    text-decoration: none;
    outline: none;
}
#accordion .panel{
    border: none;
    border-radius: 3px;
    box-shadow: none;
    margin-bottom: 15px;
}
#accordion .panel-heading{
    padding: 0;
    border: none;
    border-radius: 3px;
}
#accordion .panel-title a{
    display: block;
    padding: 12px 15px;
    background: #fff;
    font-size: 18px;
    font-weight: 400;
    color: #f81ac1;
    /*border: 1px solid #ececec;*/
    box-shadow: 0 0 10px rgba(0,0,0,.05);
    position: relative;
    transition: all 0.5s ease 0s;
    box-shadow: 0 1px 2px rgba(43,59,93,0.30);
}
#accordion .panel-title a.collapsed{
    box-shadow: none;
    color: #676767;
    box-shadow: 0 1px 2px rgba(43,59,93,0.30);
}
#accordion .panel-title a:before,
#accordion .panel-title a.collapsed:before{
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
#accordion .panel-title a.collapsed:before{
    color: #676767;
    transform: rotate(0);
}
#accordion .panel-title a:after{
    content: "";
    width: 1px;
    height: 100%;
    background: #ececec;
    position: absolute;
    top: 0;
    right: 55px;
}
#accordion .panel-body{
    padding: 0px 15px;
    border: none;
    font-size: 15px;
    color: #615f5f;
    line-height: 27px;
}


/******************* Accordion Demo - 2 *****************/
#accordion2 .panel-title a{
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
#accordion2 .panel-title a:before{
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
    box-shadow: inset 0 0 10px rgba(0,0,0,0.5);
    text-shadow: none;
    position: absolute;
    top: 8px;
    left: 15px;
}
#accordion2 .panel-title a.collapsed:before{ content: "\f067"; }
#accordion2 .panel-body{
    padding: 0px 15px;
    font-size: 15px;
    color: #222;
    line-height: 27px;
    border: none;
}
#accordion2 .panel-body p{ margin-bottom: 0; }

/******************* Accordion Demo - 3 *****************/
#accordion3{
    padding-left: 80px;
    overflow: hidden;
    position: relative;
    z-index: 1;
}
#accordion3:before{
    content: "";
    width: 5px;
    height: 100%;
    background: #004e89;
    position: absolute;
    top: 0;
    left: 22px;
    z-index: -1;
}
#accordion3 .panel-title a{
    display: block;
    padding: 10px 30px 15px 0;
    background: #fff;
    font-size: 18px;
    font-weight: 500;
    color: #004e89;
    position: relative;
    transition: all 0.5s ease 0s;
    box-shadow: 0 1px 2px rgba(43,59,93,0.30);
}
#accordion3 .panel-title a:before{
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
#accordion3 .panel-title a.collapsed:before{
    content: "\f067";
    background: #fff;
}
#accordion3 .panel-body{
    padding: 0px 15px;
    background: #eee;
    border: none;
    border-radius: 2px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5) inset, 0 1px 2px rgba(255, 255, 255, 0.9);
    font-size: 14px;
    color: #487677;
    line-height: 25px;
}

/******************* Accordion Demo - 4 *****************/
#accordion4 .panel{
    border: none;
    border-radius: 0;
    box-shadow: none;
    margin: 0 0 10px;
    overflow: hidden;
    position: relative;
}
#accordion4 .panel-heading{
    padding: 0;
    border: none;
    border-radius: 0;
    margin-bottom: 10px;
    z-index: 1;
    position: relative;
}
#accordion4 .panel-heading:before,
#accordion4 .panel-heading:after{
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
#accordion4 .panel-heading:after{
    left: auto;
    right: 10px;
    transform: rotate(3deg);
}
h4.panel-title{margin:10px 0px !important;}
#accordion4 .panel-title a{
    display: block;
    padding: 15px 70px 15px 70px;
    margin: 0;
    background: #fff;
    font-size: 18px;
    font-weight: 500;
    letter-spacing: 1px;
    color: #d11149;
    border-radius: 0;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1), 0 0 40px rgba(0, 0, 0, 0.1) inset;
    position: relative;
}
#accordion4 .panel-title a:before,
#accordion4 .panel-title a.collapsed:before{
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
#accordion4 .panel-title a.collapsed:before{ content: "\f107"; }
#accordion4 .panel-title a .icon{
    display: inline-block;
    width: 55px;
    height: 100%;
    border-right: 2px solid #d11149;
    font-size: 20px;
    color: rgba(0,0,0,0.7);
    line-height: 50px;
    text-align: center;
    position: absolute;
    top: 0;
    left: 0;
}
#accordion4 .panel-body{
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
#accordion5 .panel{
    border: none;
    border-radius: 0;
    box-shadow: none;
    margin: 0 0 15px 50px;
}
#accordion5 .panel-title a{
    display: block;
    padding: 10px 20px 10px 60px;
    background: #fe5f55;
    border-radius: 30px;
    border: 2px solid #fe5f55;
    font-size: 20px;
    font-weight:400;
    color: #fff;
    position: relative;
}
#accordion5 .panel-title a.collapsed{
    border: 2px solid #bbb;
    background: #fff;
    color: #bbb;
}
#accordion5 .panel-title a:before,
#accordion5 .panel-title a.collapsed:before{
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
#accordion5 .panel-title a.collapsed:before{
    content: "\f067";
    background: #bbb;
    border: none;
}
#accordion5 .panel-body{
    padding: 10px 15px 0;
    margin: 0 0 0 30px;
    border: none;
    font-size: 14px;
    color: #333;
    line-height: 28px;
    position: relative;
}
#accordion5 .panel-body:before{
    content: "";
    display: block;
    width: 5px;
    height: 90%;
    background: #fe5f55;
    position: absolute;
    top: 0;
    left: -30px;
}
#accordion5 .panel-body:after{
    content: "";
    border-top: 20px solid #fe5f55;
    border-left: 20px solid transparent;
    border-right: 20px solid transparent;
    position: absolute;
    bottom: 0;
    left: -48px;
}
/******************* Accordion Demo - 6 *****************/
#accordion6 .panel{
    border: 1px solid #bf6026;
    border-radius: 0;
    box-shadow: none;
    margin-left: 50px;
    margin-bottom: 12px;
}
 
#accordion6 .panel-heading{
    padding: 0;
    background: #fff;
    position: relative;
}
#accordion6 .panel-heading:before,
#accordion6 .panel-heading:after{
    content: "";
    border-right: 8px solid #bf6026;
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    position: absolute;
    top: 12px;
    left: -9px;
}
#accordion6 .panel-heading:after{
    border-right: 7px solid #fff;
    border-bottom: 7px solid transparent;
    border-top: 7px solid transparent;
    position: absolute;
    top: 13px;
    left: -6px;
}
#accordion6 .panel-title a{
    display: block;
    padding: 3px 20px 3px 20px;
    border: none;
    font-size: 20px;
    font-weight: 400;
    color: #bf6026;
    position: relative;
    background: #f1f1f2;
}
#accordion6 .panel-title a:before,
#accordion6 .panel-title a.collapsed:before{
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
#accordion6 .panel-title a.collapsed:before{ content: "\f067"; }
#accordion6 .panel-body{
    padding: 0 15px 15px;
    border: none;
    font-size: 14px;
    color: #807e7e;
    line-height: 28px;
}
#accordion6 .panel-body p{ margin-bottom: 0; }

/******************* Accordion Demo - 7 *****************/
#accordion7{
    padding-right: 24px;
    padding-left: 24px;
    z-index: 1;
}
#accordion7 .panel{
    border: none;
    box-shadow: none;
}
#accordion7 .panel-heading{
    padding: 0;
    border-radius: 0;
    border: none;
}
#accordion7 .panel-title{
    padding: 0;
}
#accordion7 .panel-title a{
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
#accordion7 .panel-title a.collapsed{
    background: #f7c59f;
    color: #e16b47;
    margin-left: 0;
    transition: all 0.3s ease 0s;
}
#accordion7 .panel-title a:before{
    content: "";
    border-left: 24px solid #e16b47;
    border-top: 24px solid transparent;
    border-bottom: 24px solid transparent;
    position: absolute;
    top: 0;
    right: -24px;
    transition: all 0.3s ease 0s;
}
#accordion7 .panel-title a.collapsed:before{
    border-left-color: #f7c59f;
}
#accordion7 .panel-title a:after{
    content: "\f106";
    font-family: "Font Awesome 5 Free";
    font-weight: 900;
    position: absolute;
    top: 30%;
    right: 15px;
    font-size: 18px;
    color: #f7c59f;
}
#accordion7 .panel-title a.collapsed:after{
    content: "\f107";
    color: #e16b47;
}
#accordion7 .panel-collapse{
    position: relative;
}
#accordion7 .panel-collapse.in:before{
    content: "";
    border-right: 24px solid #f7c59f;
    border-bottom: 18px solid transparent;
    position: absolute;
    top: 0;
    left: -24px;
}
#accordion7 .panel-body{
    font-size: 14px;
    color: #333;
    background: #e4e4e4;
    border-top: none;
    z-index: 1;
}

/******************* Accordion Demo - 8 *****************/
#accordion8 .panel{
    border: none;
    box-shadow: none;
    border-radius: 0;
    margin-bottom: 15px;
}
#accordion8 .panel-heading{
    padding: 0;
    border-radius: 0;
    border: none;
}
#accordion8 .panel-title a{
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
#accordion8 .panel-title a.collapsed{
    background: #fff;
    color: #696969;
    border: 1px solid #20457c;
    border-radius: 5px;
}
#accordion8 .panel-title a:after,
#accordion8 .panel-title a.collapsed:after{
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
#accordion8 .panel-title a.collapsed:after{
    content: "\f107";
    background: #e94c6f;
}
#accordion8 .panel-title a.collapsed:hover{
    background: #f1f1f1;
    color: #20457c;
}
#accordion8 .panel-body{
    font-size: 14px;
    color: #fff;
    line-height: 25px;
    background: #E94C6F;
    padding: 15px 15px 15px 50px;
    border: none;
    transition: all 0.5s ease 0s;
}

/******************* Accordion Demo - 9 *****************/
#accordion9 .panel{
    border-radius:0;
    margin-bottom:15px;
}
#accordion9 .panel-heading{
    padding:0;
}
#accordion9 .panel-title{
    position: relative;
}
#accordion9 .panel-title:before{
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
#accordion9 .panel-title a{
    color:#fff;
    background:#e63c22;
    display: block;
    font-size: 16px;
    line-height: 21px;
    font-weight:500;
    text-transform: uppercase;
    padding: 13px 10px 13px 65px;
}
#accordion9 .panel-title a.collapsed{
    color:#5b5656;
    background:#fff;
}
#accordion9 .panel-title a:before,
#accordion9 .panel-title a.collapsed:before{
    content: "\f068";
    font-family: "Font Awesome 5 Free";
    font-weight: 900;
    position: absolute;
    top:0;
    left:0px;
    padding:14px 10px;
    color:#e63c22;
    background:#ccc;
}
#accordion9 .panel-title a.collapsed:before{
    content: "\f067";
}
#accordion9 .panel-body{
    color: #828282;
    font-size: 14px;
    line-height: 26px;
}

/******************* Accordion Demo - 10 *****************/
a:hover,a:focus{
    text-decoration: none;
    outline: none;
}
#accordion10 .panel{
    border: none;
    border-radius: 0;
    box-shadow: none;
    margin: 0 30px 10px 30px;
    overflow: hidden;
    position: relative;
}
#accordion10 .panel-heading{
    padding: 0;
    border: none;
    border-radius: 0;
    position: relative;
}
#accordion10 .panel-title a{
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
#accordion10 .panel-title a.collapsed{ background: #1c2336;
#accordion10 .panel-title a:before,
#accordion10 .panel-title a.collapsed:before{
    content: "\f068";
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
#accordion10 .panel-title a.collapsed:before{
    content: "\f067";
    background: #ababab;
    border: 4px solid #626262;
}
#accordion10 .panel-title a:after,
#accordion10 .panel-title a.collapsed:after{
    content: "";
    width: 17px;
    height: 7px;
    background: #fff;
    position: absolute;
    top: 22px;
    right: 0;
}
#accordion10 .panel-title a.collapsed:after{
    width: 19px;
    background: #ababab;
}
#accordion10 .panel-body{
    border-left: 3px solid #fe7725;
    border-top: none;
    background: #fff;
    font-size: 15px;
    color: #1c2336;
    line-height: 27px;
    position: relative;
}
#accordion10 .panel-body:before{
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
#scrollUp{
	padding-top: 10px;
}
</style>
</head>

<body>
<core:set var="userId" value="${USER_ENTITY.userId}"></core:set>
<input type="hidden" id="userIdG" value="${userId}">
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
										<li class="drop"><a href="#">women</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
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
													href="${pageContext.request.contextPath}/products/"
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
													href="${pageContext.request.contextPath}/products/"
													style="color: #ee5f73">Footwear and Accessories</a>
													<ul class="mega__item">
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Cap&g=f">Cap</a></li>
														<li><a
															href="${pageContext.request.contextPath}/products/category?q=Shoe&g=f">Shoes</a></li>
													</ul></li>
												<!-- End Single Mega MEnu -->
											</ul></li>
										<li class="drop"><a href="#">men</a>
											<ul class="dropdown mega_dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a class="mega__title"
													href="${pageContext.request.contextPath}/products/"
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
													href="${pageContext.request.contextPath}/products/"
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
													href="${pageContext.request.contextPath}/products/"
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
										<li><a href="#">My Account</a></li>
										<li><a
											href="${pageContext.request.contextPath}/checkout/cart">My
												Cart</a></li>
										<li><a href="#">Login</a></li>
										<li><a
											href="${pageContext.request.contextPath}/checkout/wishlist">Wishlist</a></li>
										<li><a
											href="${pageContext.request.contextPath}/checkout/">Checkout</a></li>
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
			var param = "productId=" + productId+"&userId="+$("#userIdG").val();
			var response = await serviceCall("${pageContext.request.contextPath}/wishlist/addProduct","POST", param);
			if (response == "true") {
				alert("Product Added to wishlist");
			} else {
				utterance.text = "Please Login to Add Products to Wishlist";
				synthesis.speak(utterance);
				alert("Please Login to Add Products to Wishlist");
			}
		}

		async function addProductToCart(productId) {
			var param = "productId=" + productId;
			var response = await serviceCall("${pageContext.request.contextPath}/cart/addProduct","POST", param);
			if (response == "true") {
				alert("Product Added to Cart");
			} else {
				alert("Please Login to Add Products to Cart");
			}
		}
	</script>
</body>

</html>