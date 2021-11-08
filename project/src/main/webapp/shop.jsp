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
<title>Ashion | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cookie&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

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
						<a href="index.jsp"><i class="fa fa-home"></i> HOME </a> <span> SHOP </span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link">정렬: ${param.sort} / 검색어: ${param.pName} / 카테고리: ${param.pCtgr} / 가격:${param.lowPrice}만원 ~ ${param.highPrice}만원</h6>
                </div>
            </div>
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<form action="shop.do" method="post">
						<div class="shop__sidebar">
							<div class="sidebar__sizes">
								<div class="section-title">
									<h4>제품명</h4>
									<input type="text" name="pName" value="">
								</div>
							</div>
							<div class="sidebar__sizes">
								<div class="section-title">
									<h4>정렬</h4>
								</div>
								<div class="size__list">
									<label for="pDate"> 최신순 <input type="radio" id="pDate" name="sort" value="pDate" checked="checked">
										<span class="checkmark"></span>
									</label> <label for="pPrice"> 높은가격순 <input type="radio" id="pPrice" name="sort" value="pPrice">
										<span class="checkmark"></span>
									</label> <label for="pPriceLow"> 낮은가격순 <input type="radio" id="pPriceLow" name="sort" value="pPriceLow">
										<span class="checkmark"></span>
									</label>
								</div>
							</div>
							<div class="sidebar__sizes">
								<div class="section-title">
									<h4>카테고리</h4>
								</div>
								<div class="size__list">
									<label for="pCtgr1"> 장난감 <input type="radio" id="pCtgr1" name="pCtgr" value="장난감">
										<span class="checkmark"></span>
									</label> <label for="pCtgr2"> 옷 <input type="radio" id="pCtgr2" name="pCtgr" value="옷">
										<span class="checkmark"></span>
									</label> <label for="pCtgr3"> 사료 <input type="radio" id="pCtgr3" name="pCtgr" value="사료">
										<span class="checkmark"></span>
									</label> <label for="pCtgr4"> 식기 <input type="radio" id="pCtgr4" name="pCtgr" value="식기">
										<span class="checkmark"></span>
									</label>
									<label for="pCtgr5"> 선택안함 <input type="radio" id="pCtgr5" name="pCtgr" value="none" checked="checked">
										<span class="checkmark"></span>
									</label> 
								</div>
							</div>
							<div class="sidebar__filter">
								<div class="section-title">
									<h4>가격</h4>
								</div>
								<div class="filter-range-wrap">
									<div
										class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
										data-min="0" data-max="99"></div>
									<div class="range-slider">
										<div class="price-input">
											<p>최저가:</p>
											<input type="text" id="minamount" name="lowPrice"> 만원
											<hr>
											<p>최고가:</p>
											<input type="text" id="maxamount" name="highPrice"> 만원
										</div>
									</div>
								</div>
								<button type="submit" class="site-btn" >검색</button>
								<c:if test="${!empty user}">
									<button type="button" class="site-btn" onclick="location.href='productForm.jsp'">상품 등록</button>
								</c:if>
							</div>
						</div>
					</form>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="row">
						<c:forEach var="v" items="${productList}">
							<div class="col-lg-4 col-md-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										style="background:url('${v.pImg1}')">
										<img alt="" src="${v.pImg1}" class="Img">
										<ul class="product__hover">
											<li><a href="${v.pImg1}" class="image-popup"><span
													class="arrow_expand"></span></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>
											<a href="getProduct.do?pNum=${v.pNum}">${v.pName}</a>
										</h6>
										<div class="rating">
											${v.pRating}
										</div>
										<div class="product__price">${v.pPrice} 원</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

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