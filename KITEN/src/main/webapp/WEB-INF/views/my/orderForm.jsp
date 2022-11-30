<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>KITEN - 전체 상품 주문</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/orderFormBbootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/styleorder.css" />
<link rel="stylesheet" href="<%=pjName%>/resources/css/footer.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand logo_h" href="<%=pjName%>/home.do"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">쇼핑하기</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getProductList.do?num=1">전체 상품 보기</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=한식">한식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=중식">중식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=일식">일식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=양식">양식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=동남아">동남아</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=분식">분식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=기타">기타</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/bestProductList.do?num=1">인기 상품</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/notice.do">공지사항</a></li>
									<li class="nav-item"><a class="nav-link" href="#">일대일 문의</a></li>
								</ul></li>
							<!-- 로그아웃 시 출력할 헤더 -->
							<c:if test="${empty sessionScope.userId}">
								<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userJoin.do">회원 가입</a></li>
								<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userLogin.do">로그인</a></li>
							</c:if>
							<!-- 로그인 시 출력할 헤더 -->
							<c:if test="${not empty sessionScope.userId}">
								<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이 페이지</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="<%=pjName%>/my/orderHistory.do?m_number=${sessionScope.userNo}">주문 내역</a></li>
										<li class="nav-item"><a class="nav-link" href="<%=pjName%>/my/wish.do?m_number=${sessionScope.userNo}">찜한 상품</a></li>
										<li class="nav-item"><a class="nav-link" onclick="window.open('<%=pjName%>/user/userAddress.do?m_number=${sessionScope.userNo}','배송지 관리','resizable=no width=800 height=800')">배송지 관리</a></li>
										<li class="nav-item"><a class="nav-link" href="#">나의 문의</a></li>
										<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userModify.do">회원 정보 수정</a></li>
										<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userRemove_before.do">회원 탈퇴</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userLogout.do">로그아웃</a></li>
							</c:if>
						</ul>
						<ul class="nav-shop">
							<c:if test="${not empty sessionScope.userId}">
								<li class="nav-item">${sessionScope.userId}님</li>
								<li class="nav-item"><button onclick="window.open('<%=pjName%>/user/userAddress.do?m_number=${sessionScope.userNo}','배송지 관리','resizable=no width=800 height=800')">
										<i class="ti-location-pin"></i>
									</button></li>
								<li class="nav-item"><a href="<%=pjName%>/my/wish.do?m_number=${sessionScope.userNo}"><button>
											<i class="ti-heart"></i>
										</button></a></li>
								<li class="nav-item"><a href="<%=pjName%>/my/cart.do?m_number=${sessionScope.userNo}"><button>
											<i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span>
										</button></a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->
	<!--================Checkout Area =================-->
	<section class="checkout_area section-margin--small">
		<h3 align="center">주문서</h3>

		<div class="container">
			<div class="check_title"></div>

			<div class="confirmation-card" id="firstConfirm">
				<h3 class="billing-title">주문 상품</h3>
				<hr style="margin-bottom: 0px;">
				<table class="table">
					<tbody>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/upload/${cart.p_list_realfname}" alt="" class="cartImage">
										</div>
										${cart.p_name}
									</div>
								</td>
								<td style="text-align: center;">${cart.c_quantity}개</td>
								<td style="text-align: right;"><span class="sumPrice" data-quantity="${cart.c_quantity}" data-price="${cart.p_price}" data-sumprice=""></span> 원</td>
							</tr>
						</c:forEach>
						<tr class="shipping_area">
							<td></td>
							<td class="t_name">
								<p>상품 금액</p>
								<p>배송비</p>
								<p>결제 예정 금액</p>
							</td>
							<td class="t_value">
								<p>
									<span class="realSumPrice" data-realsumprice></span> 원
								</p>
								<p>
									<span class="shippingFee" data-shippingfee></span> 원
								</p>
								<p>
									<span class="paymentPrice" data-paymentprice></span> 원
								</p>
							</td>
						</tr>
					</tbody>
				</table>
				<br />
			</div>
		</div>
		<div class="container">
			<div class="check_title"></div>
			<div class="confirmation-card">
				<h3 class="billing-title">주문자 정보</h3>
				<hr />
				<table class="order-rable">
					<tr>
						<td class="col-md-6">보내는 분</td>
						<td>${member.m_name}</td>
					</tr>
					<tr>
						<td class="col-md-6">전화번호</td>
						<td>${member.m_tel}</td>
					</tr>
					<tr>
						<td class="col-md-6">이메일</td>
						<td>${member.m_email}</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="container">
			<div class="check_title"></div>
			<div class="confirmation-card">
				<h3 class="billing-title">배송지 정보</h3>
				<hr />
				<table class="order-rable">
					<tr>
						<td class="col-md-3">받는 분</td>
						<td><span id="l_name">${location.l_name}</span></td>
					</tr>
					<tr>
						<td class="col-md-3">받는 분 전화번호</td>
						<td><span id="l_tel">${location.l_tel}</span></td>
					</tr>
					<tr>
						<td class="col-md-3">받는 분 주소</td>
						<td><span id="l_address1">(기본) ${location.l_address1}</span> <span id="l_address2">${location.l_address2}</span><input type="hidden" value="${location.l_number}" /></td>
					</tr>
					<tr>
						<td></td>
						<td><small class="form-text text-muted">기본 배송지 정보 변경은 마이페이지 > 회원 정보 수정 메뉴에서 가능합니다<br>배송지 추가 및 삭제는 상단의 배송지 관리 메뉴를 클릭해 주세요
						</small></td>
					</tr>
					<tr>
						<td><button type="button" value="submit" class="button button-login locationChange"
								onclick="window.open('<%=pjName%>/my/orderSelectAddress.do?m_number=${sessionScope.userNo}','배송지 선택','resizable=no width=800 height=800')">변경</button></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="container">
			<div class="check_title"></div>
			<div class="confirmation-card">
				<h3 class="billing-title">결제 수단</h3>
				<hr />
				<table class="order-rable">
					<tr>
						<td class="col-md-3" style="vertical-align: top;">결제 수단 선택</td>
						<td><form id="orderForm" name="orderForm" action="orderFormSubmit.do">
								<input type="hidden" id="m_number" name="m_number" value="${sessionScope.userNo}"> <input type="hidden" id="o_sumprice" name="o_sumprice" value=""> <input type="hidden"
									id="o_shippingfee" name="o_shippingfee" value=""> <input type="hidden" id="o_payment" name="o_payment" value=""> <input type="hidden" id="l_number" name="l_number"
									value="${location.l_number}"> <input type="radio" name="o_method" value="카카오페이">카카오페이<br> <input type="radio" name="o_method" value="네이버페이">네이버페이<br> <input
									type="radio" name="o_method" value="신용카드">신용카드<br> <input type="radio" name="o_method" value="간편 결제">간편 결제<br> <input type="radio" name="o_method" value="휴대폰">휴대폰
							</form></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="container">
			<div class="check_title"></div>
			<div class="confirmation-card" style="padding: 9%;">
				<h3 class="billing-title">개인 정보 수집/제공</h3>
				<hr />
				<table class="order-rable" style="margin-bottom: 60px;">
					<tr>
						<td style="vertical-align: middle;" class="col-md-3">결제 약관 동의</td>
						<td style="vertical-align: middle;"><input style="vertical-align: middle;" type="checkbox" id="o_agree" name="o_agree"> <label for="o_agree"><small>개인 정보 수집/제공 동의 (필수)</small></label></td>
					</tr>
				</table>
				<div class="text-center col-md-12">
					<a class="button button-paypal" id="orderFormSubmit">결제하기</a>
				</div>
			</div>
		</div>
	</section>

	<!--================End Checkout Area =================-->
	<!--================ Start footer Area  =================-->
	<footer>
		<div class="footer-area">
			<hr></hr>
			<div class="ss">
				<div class="s1">
					<h4 class="footer_title large_title">고객행복센터</h4>
					<table>
						<tr>
							<td class="nav-item"><a class="button button-header" href="#">카톡 문의</a></td>
							<td><p>월~일요일 | 오전7시~ 오후6시</p></td>
						</tr>
						<tr>
							<td class="nav-item"><a class="button button-header" href="#">개인 문의 </a></td>
							<td><p>365일 친절하게 문의 받겠습니다.</p></td>
						</tr>
						<tr>
							<td class="nav-item"><a class="button button-header" href="#">대량 문의</a></td>
							<td><p>월~일요일 | 오전9시~ 오후6시</p></td>
						</tr>
						<tr></tr>
						<tr>
							<td><p>비회원문의 : help @ kosmo.com</p></td>
						</tr>
						<tr>
							<td><p>비회원대량문의 : gift @ kosmo.com</p></td>
						</tr>
					</table>
				</div>
				<div class="ml-40">
					<ul class="loginul">
						<li class="loginli"><a class="foot-link" href="">회사소개</a></li>
						<li class="loginli"><a class="foot-link" href="">인재채용</a></li>
						<li class="loginli"><a class="foot-link" href="">이용약관</a></li>
						<li class="loginli"><a class="foot-link" href="">개인정보처리방침</a></li>
						<li class="loginli"><a class="foot-link" href="">이용안내</a></li>
						<br></br>
					</ul>
					<p>법인명(상호) : 주식회사 키튼 | 사업자 등록번호 : 123-45-67890 사업자정보확인</p>
					<p>통신판매업 : 제 2022호-경기안양-00000호 | 개인정보보호책임자 : 강민수</p>
					<p>주소 : 서울특별시 어디구 어디로 133 101동 3층 | 대표이사 : 정지원</p>
					<p>채용문의 : job@kosmo.com</p>
					<p>팩스 : 000- 0000 - 0000</p>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row d-flex">
					<p class="col-lg-12 footer-text text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->
	<script src="<%=pjName%>/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/skrollr.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/orderPage.js"></script>
</body>
</html>