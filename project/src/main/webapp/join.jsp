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

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<!-- 회원가입 페이지 -->
			<c:if test="${empty user}">
				<form action="join.do" method="post" class="checkout__form" name="join" enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-12">
							<h5>Sign-Up</h5>
							<div class="row">
								<div class="col-lg-9 col-md-9 col-sm-9">
										<div class="checkout__form__input">
											<p>이름</p>
											<input type="text" name="mName" required>
										</div>
										<div class="checkout__form__input">
											<p>휴대폰 번호</p>
											<input type="text" name="mPh" required>
										</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<p>프로필 사진</p>
										<input type="file" id="mImg" class="img" name="mImgFile">
										<label for="mImg"> 
											<img src="\img\default.png" class="profilImg" alt="유저사진">
										</label>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<p>아이디</p>
										<span class="warning">${idCheck}</span>
										<input type="text" name="mId" required>
									</div>
									<div class="checkout__form__input">
										<p>비밀번호</p>
										<input type="password" name="mPw" required>
									</div>
									<p>주소</p>
								</div>
								<div class="col-lg-9 col-md-9 col-sm-9">
									<div class="checkout__form__input">
										<input type="text" id="mAddr1" name="mAddr1" required readonly>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<input type="button" onclick="search_address();" value="주소 검색">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<input type="text" id="mAddr2" name="mAddr2" required readonly>
										<input type="text" id="mAddr3" name="mAddr3" required>
									</div>
									<div class="checkout__form__input">
										<p>이메일</p>
										<input type="email" name="mEmail" required>
									</div>
								</div>
								<button type="submit" class="site-btn">Sign-Up</button>
							</div>
						</div>
					</div>
				</form>
			</c:if>
			<!-- 수정 페이지 -->
			<c:if test="${!empty user}">
				<form action="updateMember.do" method="post" class="checkout__form" name="updateMember" enctype="multipart/form-data">
				<input type="hidden" name="mId" value="${user.mId}" >
					<div class="row">
						<div class="col-lg-12">
							<h5>MyPage</h5>
							<div class="row">
								<div class="col-lg-9 col-md-9 col-sm-9">
										<div class="checkout__form__input">
											<p>이름</p>
											<input type="text" name="mName" value="${user.mName}" required>
										</div>
										<div class="checkout__form__input">
											<p>휴대폰 번호</p>
											<input type="text" name="mPh" value="${user.mPh}" required>
										</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<p>프로필 사진</p>
										<input type="file" id="mImg" class="img" name="mImgFile" >
										<label for="mImg"> 
											<img src="${user.mImg}" class="profilImg" alt="유저사진">
										</label>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<p>비밀번호</p>
										<input type="password" name="mPw" value="${user.mPw}" required>
									</div>
									<p>주소</p>
								</div>
								<div class="col-lg-9 col-md-9 col-sm-9">
									<div class="checkout__form__input">
										<input type="text" id="mAddr1" name="mAddr1" value="${user.mAddr1}" required readonly>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<div class="checkout__form__input">
										<input type="button" onclick="search_address();" value="주소 검색">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="checkout__form__input">
										<input type="text" id="mAddr2" name="mAddr2" value="${user.mAddr2}" required readonly>
										<input type="text" id="mAddr3" name="mAddr3" value="${user.mAddr3}"  required>
									</div>
									<div class="checkout__form__input">
										<p>이메일</p>
										<input type="email" name="mEmail" value="${user.mEmail}" required>
									</div>
								</div>
								<button type="submit" class="site-btn">수정</button>
								<hr>
								<button type="button" class="site-btn" onclick="del()">탈퇴</button>
							</div>
						</div>
					</div>
				</form>
			</c:if>
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
	    document.getElementById('mImg').addEventListener('change', function(e){
	        let elem = e.target;
	        if(validateType(elem.files[0])){
	            let preview = document.querySelector('.profilImg');
	            preview.src = URL.createObjectURL(elem.files[0]); //파일 객체에서 이미지 데이터 가져옴.
	            preview.onload = function() {
	                URL.revokeObjectURL(preview.src); //URL 객체 해제
	            }
	        }else{
	        console.log('이미지 파일이 아닙니다.');
	        }
	    });
	});
	
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

	// 탈퇴 버튼
	function del() {
		result = confirm("탈퇴하시겠습니까?");
		if (result == true) {

			document.updateMember.action = "deleteMember.do";
			document.updateMember.submit();
		} else {
			return;
		}
	}
</script>
</body>

</html>