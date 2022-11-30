<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>KITEN - 장바구니</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/stylem.css">
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
								<li class="nav-item active submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이 페이지</a>
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
	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<h3>장바구니</h3>
					<br>
					<table class="table">
						<thead>
							<tr>

								<td><input type="checkbox" class="check1" id="checkAll" name="cartCheckboxAll" checked>전체 선택</td>

							</tr>
							<tr>
								<th scope="col" class="cartTh">상품</th>
								<th scope="col" class="cartTh">가격</th>
								<th scope="col" class="cartTh">수량</th>
								<th scope="col" class="cartTh">합계</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartList}" var="cart">
								<tr>
									<td>
										<div class="media">
											<div class="d-flex">
												<input type="checkbox" class="check1 cartCheckbox" name="cartCheckbox" value="${cart.c_number}" checked> <img src="<%=pjName%>/resources/upload/${cart.p_list_realfname}" alt=""
													class="cartImage">
											</div>
											<div class="media-body">
												<p>
													<a href="<%=pjName%>/product/getProductDetail.do?p_number=${cart.p_number}">${cart.p_name}</a>
												</p>
											</div>
										</div>
									</td>
									<td>
										<h5>
											<span class="p_price" data-price="${cart.p_price}"></span>원
										</h5>
									</td>
									<td>
										<div class="product_count">
											<button class="reduced items-count" type="button">▼</button>
											<input type="text" name="c_quantity" size="2" maxlength="12" value="${cart.c_quantity}" title="Quantity:" class="input-text qty cartQuantity" data-user="${sessionScope.userNo}"
												data-value="${cart.p_number}">
											<button class="increase items-count" type="button">▲</button>
										</div>
									</td>
									<td>
										<h5>
											<span class="sumPrice" data-sumprice=""></span> 원
											<button class="close cartDelete" onclick="location.href='cartDelete.do?m_number=${sessionScope.userNo}&&p_number=${cart.p_number}'"></button>
										</h5>
									</td>

								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>

								<td></td>
								<td></td>
								<td>
									<h5></h5>
								</td>
							</tr>
							<tr class="shipping_area">
								<td class="d-none d-md-block"></td>

								<td class="t_name">
									<p></p>
									<p>상품 금액</p>
									<p>배송비</p>
									<p>결제 예정 금액</p>
								</td>

								<td class="t_value">
									<p>선택 상품</p>
									<p>
										<span class="realSumPriceSelect" data-realsumprice></span> 원
									</p>
									<p>
										<span class="shippingFeeSelect" data-shippingfee></span> 원
									</p>
									<p>
										<span class="paymentPriceSelect" data-paymentprice></span> 원
									</p>

								</td>
								<td class="t_value">
									<p>전체 상품</p>
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
							<tr class="bottom_button">
								<td></td>
								<td></td>
								<td></td>
								<td></td>

								<td>
									<div class="cupon_text d-flex align-items-center">
										<a class="btn" href="#">선택 주문</a> <a class="primary-btn" href="<%=pjName%>/my/orderAllCartList.do?m_number=${sessionScope.userNo}" style="float: right">전체 주문</a>
									</div>
								</td>
							</tr>
							<tr class="bottom_button">
								<td></td>
								<td></td>
								<td></td>
								<td></td>

								<td>
									<div class="cupon_text d-flex align-items-center">
										<a class="btn" href="<%=pjName%>/product/getProductList.do">쇼핑 더 하기</a> <a class="primary-btn" href="<%=pjName%>/home.do" style="float: right">메인 화면</a>
									</div>
								</td>
							</tr>
							<tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->
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
	<script src="<%=pjName%>/resources/js/cartPage.js"></script>

</body>
</html>