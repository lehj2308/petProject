<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ashion Template">
<meta name="keywords" content="Ashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>몽글가게</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" href="img/logo.ico">
<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="offcanvas__close">+</div>
		<ul class="offcanvas__widget">
			<c:if test="${!empty user}">
				<li><a href="getMyHistoryList.do"><span class="icon_clock_alt"></span></a></li>
				<li><a href="basket.jsp"><span class="icon_bag_alt"></span>
						<div class="tip">${basketCnt}</div> </a></li>
			</c:if>
		</ul>
		<div class="offcanvas__logo">
			<a href="./index.jsp"><img src="img/logo.png" alt=""></a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<mytag:user name="${user.mName}" />
		</div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-2">
					<div class="header__logo">
						<a href="index.jsp"><img src="img/logo.png" alt="로고사진"></a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-7">
					<nav class="header__menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li class="active"><a href="shop.do">Shop</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__right">
						<div class="header__right__auth">
							<mytag:user name="${user.mName}" />
						</div>
						<ul class="header__right__widget">
							<c:if test="${!empty user}">
								<li><a href="getMyHistoryList.do"><span class="icon_clock_alt"></span></a></li>
								<li><a href="basket.jsp"><span class="icon_bag_alt"></span>
										<div class="tip">${basketCnt}</div> </a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
			<div class="canvas__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="index.jsp"><i class="fa fa-home"></i> Home</a> <a
							href="shop.do">SHOP </a> <span>${product.pName}</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="product__details__pic">
						<div class="product__details__pic__left product__thumb nice-scroll">
							<a class="pt active" href="#product-1">
								<img src="${product.pImg1}" alt="">
							</a>
							<a class="pt" href="#product-2">
								<img src="${product.pImg2}" alt="">
							</a>
						</div>
						<div class="product__details__slider__content">
							<div class="product__details__pic__slider owl-carousel">
								<img data-hash="product-1" class="product__big__img"
									src="${product.pImg1}" alt="">
								<img data-hash="product-2" class="product__big__img"
									src="${product.pImg2}" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="product__details__text">
						<h3>
							${product.pName} <span>Brand: ${product.pBrand}</span>
						</h3>
						<div class="rating">
							평점: ${product.pRating} 점 <span>( ${product.pReview} reviews )</span>
						</div>
						<div class="product__details__price">
							${product.pPrice} 원
						</div>
						<p>${product.pTitle}</p>
						<div class="product__details__button">
							<form action="basketInsert.do" method="post">
								<input type="hidden" name="pNum" value="${product.pNum}" >
								<input type="hidden" name="pName" value="${product.pName}" >
								<input type="hidden" name="pImg1" value="${product.pImg1}" >
								<input type="hidden" name="pPrice" value="${product.pPrice}" >
								<c:if test="${!empty user}">
								<div class="quantity">
									<span>선택:</span>
										<input type="number" class="pro-qty" name="hAmount" value="1" min="1" max="${product.pStock}">
								</div>
								<button type="submit" class="cart-btn"><span class="icon_bag_alt"></span>
									장바구니에 담기</button>
								</c:if>
								<c:if test="${product.mId==user.mId}">
								<a href="productForm.do?pNum=${product.pNum}" class="cart-btn">
									상품 수정하기</a>
								</c:if>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab">제품 설명서</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab">리뷰 ( ${product.pReview} )</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<p>${product.pContent}</p>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<h6>Reviews ( ${product.pReview} )</h6>
								<p>추후 업데이트 예정</p>
							</div>
						</div>
					</div>
				</div>
			</div>

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<div class="footer__copyright__text">
						<p>
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
					</div>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>