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
							<li><a href="shop.do">Shop</a></li>
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
						<a href="./index.html"><i class="fa fa-home"></i> Home</a> <span>Shopping
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
			<div class="row">
				<div class="col-lg-12">
					<h6 class="coupon__link">
						<span class="icon_tag_alt"></span> <a href="#">Have a coupon?</a>
						Click here to enter your code.
					</h6>
				</div>
			</div>
			<form action="pay.do" method="post" class="checkout__form">
				<input type="hidden" name="mId" value="${user.mId}">
				<div class="row">
					<div class="col-lg-8">
						<h5>Billing detail</h5>
						<div class="row">
							<div class="col-lg-8">
								<h5>Billing detail</h5>
								<div class="row">
									<div class="col-lg-12">
										<div class="checkout__form__input">
											<p>이름</p>
											<input type="text" name="hName" value="${user.mName}"
												required>
										</div>
										<p>주소</p>
									</div>
									<div class="col-lg-9 col-md-9 col-sm-9">
										<div class="checkout__form__input">
											<input type="text" id="mAddr1" name="hAddr1"
												value="${user.mAddr1}" required readonly>
										</div>
									</div>
									<div class="col-lg-3 col-md-3 col-sm-3">
										<div class="checkout__form__input">
											<input type="button" onclick="search_address();"
												value="주소 검색">
										</div>
									</div>
									<div class="col-lg-12">
										<div class="checkout__form__input">
											<input type="text" id="mAddr2" name="hAddr2"
												value="${user.mAddr2}" required readonly> <input
												type="text" id="mAddr3" name="hAddr3" value="${user.mAddr3}"
												required>
										</div>
										<div class="checkout__form__input">
											<p>휴대폰 번호</p>
											<input type="text" name="hPh" value="${user.mPh}" required>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="checkout__order">
							<h5>Your order</h5>
							<div class="checkout__order__product">
								<ul>
									<li><span class="top__text">Product</span> <span
										class="top__text__right">Total</span></li>
									<c:forEach var="list" items="${basketList}">
										<li>${list.pName}<span>${list.pPrice * list.hAmount}
												원</span></li>
										<c:set var="total" value="${total+(list.pPrice * list.hAmount)}" />
									</c:forEach>
								</ul>
							</div>
							<div class="checkout__order__total">
								<ul>
									<li>Total <span>${total} 원</span></li>
								</ul>
							</div>
							<button type="submit" class="site-btn">Place oder</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Checkout Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<div class="footer__copyright__text">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	function search_address() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수

	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("mAddr2").value = extraAddr;
	            
	            } else {
	                document.getElementById("mAddr2").value = '';
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('mAddr1').value = data.zonecode;
	            document.getElementById("mAddr2").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("mAddr3").focus();
	        }
	    }).open();
	}
	</script>
</body>

</html>