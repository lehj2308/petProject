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
			<li><span class="icon_search search-switch"></span></li>
			<li><a href="#"><span class="icon_heart_alt"></span>
					<div class="tip">2</div> </a></li>
			<li><a href="#"><span class="icon_bag_alt"></span>
					<div class="tip">2</div> </a></li>
		</ul>
		<div class="offcanvas__logo">
			<a href="index.jsp"><img src="img/logo.png" alt=""></a>
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
						<a href="index.jsp"><img src="img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-7">
					<nav class="header__menu">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="#">Women’s</a></li>
							<li><a href="#">Men’s</a></li>
							<li><a href="shop.do">Shop</a></li>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="./product-details.html">Product Details</a></li>
									<li><a href="./shop-cart.html">Shop Cart</a></li>
									<li><a href="./checkout.html">Checkout</a></li>
									<li><a href="./blog-details.html">Blog Details</a></li>
								</ul></li>
							<li><a href="./blog.html">Blog</a></li>
							<li><a href="./contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__right">
						<div class="header__right__auth">
							<mytag:user name="${user.mName}" />
						</div>
						<ul class="header__right__widget">
							<li><span class="icon_search search-switch"></span></li>
							<li><a href="#"><span class="icon_heart_alt"></span>
									<div class="tip">2</div> </a></li>
							<li><a href="#"><span class="icon_bag_alt"></span>
									<div class="tip">2</div> </a></li>
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
						<a href="index.jsp"><i class="fa fa-home"></i> Home</a> <span>Shopping
							cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<!-- 상품 등록 -->
			<c:if test="${empty product}">
				<form action="insertProduct.do" method="post" class="checkout__form" name="insertProduct" enctype="multipart/form-data">
					<input type="hidden" name="mId" value="${user.mId}">
					<div class="row">
						<div class="col-lg-12">
							<h5>상품 등록</h5>
							<div class="row">
								<div class="col-lg-9 col-md-9 col-sm-9">
										<div class="checkout__form__input">
											<p>상품명</p>
											<input type="text" name="pName" required>
										</div>
										<div class="checkout__form__input">
											<p>회사명</p>
											<input type="text" name="pBrand" required>
										</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<p>대표 사진</p>
										<input type="file" id="pImg1" class="img" name="pImg1File" required>
										<label for="pImg1"> 
											<img src="img/upload.png" class="pImg1" alt="대표사진">
										</label>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<p>제품 소개</p>
										<input type="text" name="pTitle" required>
									</div>
									<div class="checkout__form__input">
										<p>제품 종류</p>
										<input type="text" name="pCtgr" required>
									</div>
									<div class="checkout__form__input">
										<p>가격</p>
										<input type="number" name="pPrice" required>
									</div>
									<div class="checkout__form__input">
										<p>재고</p>
										<input type="number" name="pStock" required>
									</div>
									<div class="checkout__form__input">
										<p>제품 설명서</p>
										<textarea cols="10" name="pContent" required></textarea>
									</div>
								</div>
								<button type="submit" class="site-btn">상품 등록</button>
							</div>
						</div>
					</div>
				</form>
			</c:if>
			<!-- 수정 페이지 -->
			<c:if test="${!empty product}">
				<form action="updateProduct.do" method="post" class="checkout__form" name="updateProduct" enctype="multipart/form-data">
					<input type="hidden" name="pNum" value="${product.pNum}">
					<div class="row">
						<div class="col-lg-12">
							<h5>상품 등록</h5>
							<div class="row">
								<div class="col-lg-9 col-md-9 col-sm-9">
										<div class="checkout__form__input">
											<p>상품명</p>
											<input type="text" name="pName" value="${product.pName}" required>
										</div>
										<div class="checkout__form__input">
											<p>회사명</p>
											<input type="text" name="pBrand" value="${product.pBrand}" required>
										</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<p>대표 사진</p>
										<input type="file" id="pImg1" class="img" name="pImg1File" value="img/${product.pImg1}">
										<label for="pImg1"> 
											<img src="img/${product.pImg1}" class="pImg1" alt="대표사진">
										</label>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<p>제품 소개</p>
										<input type="text" name="pTitle" value="${product.pTitle}" required>
									</div>
									<div class="checkout__form__input">
										<p>제품 종류</p>
										<input type="text" name="pCtgr" value="${product.pCtgr}" required>
									</div>
									<div class="checkout__form__input">
										<p>가격</p>
										<input type="number" name="pPrice" value="${product.pPrice}" required>
									</div>
									<div class="checkout__form__input">
										<p>재고</p>
										<input type="number" name="pStock" value="${product.pStock}" required>
									</div>
									<div class="checkout__form__input">
										<p>제품 설명서</p>
										<textarea cols="10" name="pContent" required>${product.pContent}</textarea>
									</div>
								</div>
								<button type="submit" class="site-btn">상품 수정</button>
								<hr>
								<button type="button" class="site-btn" onclick="del()">상품 삭제</button>
							</div>
						</div>
					</div>
				</form>
			</c:if>
		</div>
	</section>
	<!-- Checkout Section End -->

	<!-- Instagram Begin -->
	<div class="instagram">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-1.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-2.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-3.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-4.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-5.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-4 p-0">
					<div class="instagram__item set-bg"
						data-setbg="img/instagram/insta-6.jpg">
						<div class="instagram__text">
							<i class="fa fa-instagram"></i> <a href="#">@ ashion_shop</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-7">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="index.jsp"><img src="img/logo.png" alt=""></a>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt cilisis.</p>
						<div class="footer__payment">
							<a href="#"><img src="img/payment/payment-1.png" alt=""></a>
							<a href="#"><img src="img/payment/payment-2.png" alt=""></a>
							<a href="#"><img src="img/payment/payment-3.png" alt=""></a>
							<a href="#"><img src="img/payment/payment-4.png" alt=""></a>
							<a href="#"><img src="img/payment/payment-5.png" alt=""></a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-5">
					<div class="footer__widget">
						<h6>Quick links</h6>
						<ul>
							<li><a href="#">About</a></li>
							<li><a href="#">Blogs</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">FAQ</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-4">
					<div class="footer__widget">
						<h6>Account</h6>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Orders Tracking</a></li>
							<li><a href="#">Checkout</a></li>
							<li><a href="#">Wishlist</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-8 col-sm-8">
					<div class="footer__newslatter">
						<h6>NEWSLETTER</h6>
						<form action="#">
							<input type="text" placeholder="Email">
							<button type="submit" class="site-btn">Subscribe</button>
						</form>
						<div class="footer__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
			</div>
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

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function(){
	    //이미지 객체 타입으로 이미지 확장자 밸리데이션
	    var validateType = function(img){
	        return (['image/jpeg','image/jpg','image/png'].indexOf(img.type) > -1);
	    }

	    var validateName = function(fname){
	        let extensions = ['jpeg', 'jpg', 'png'];
	        let fparts = fname.split('.');
	        let fext = '';
	    
	        if(fparts.length > 1){
	            fext = fparts[fparts.length-1];
	        }
	    
	        let validated = false;
	        
	        if(fext != ''){
	            extensions.forEach(function(ext){
	                if(ext == fext){
	                    validated = true;
	                }
	            });
	        }
	    
	        return validated;
	    }

	    // 파일 선택 필드에 이벤트 리스너 등록
	    document.getElementById('pImg1').addEventListener('change', function(e){
	        let elem = e.target;
	        if(validateType(elem.files[0])){
	            let preview = document.querySelector('.pImg1');
	            preview.src = URL.createObjectURL(elem.files[0]); //파일 객체에서 이미지 데이터 가져옴.
	            preview.onload = function() {
	                URL.revokeObjectURL(preview.src); //URL 객체 해제
	            }
	        }else{
	        console.log('이미지 파일이 아닙니다.');
	        }
	    });
	});

	// 탈퇴 버튼
	function del() {
		result = confirm("삭제하시겠습니까?");
		if (result == true) {
			document.updateProduct.action = "deleteProduct.do";
			document.updateProduct.submit();
		} else {
			return;
		}
	}
</script>
</body>

</html>