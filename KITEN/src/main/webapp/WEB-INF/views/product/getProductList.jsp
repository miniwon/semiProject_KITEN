<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pjName = "/KITEN";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>KITEN - 상품 목록</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/stylej.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/footer.css">

<style type="text/css">
h4 {
	margin-bottom: 0;
}
</style>
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
							<li class="nav-item submenu dropdown"><a href="<%=pjName%>/product/getProductList.do" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">쇼핑하기</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=한식">한식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=중식">중식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=일식">일식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=양식">양식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=동남아">동남아</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=분식">분식</a></li>
									<li class="nav-item"><a class="nav-link" href="<%=pjName%>/product/getCategoryList.do?categoryname=기타">기타</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="#">인기 상품</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
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
										<li class="nav-item"><a class="nav-link" href="#">주문 내역</a></li>
										<li class="nav-item"><a class="nav-link" href="#">찜한 상품</a></li>
										<li class="nav-item"><a class="nav-link" href="#">배송지 관리</a></li>
										<li class="nav-item"><a class="nav-link" href="#">나의 문의</a></li>
										<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userModify.do">회원 정보 수정</a></li>
										<li class="nav-item"><a class="nav-link" href="#">회원 탈퇴</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link" href="<%=pjName%>/user/userLogout.do">로그아웃</a></li>
							</c:if>
						</ul>

						<ul class="nav-shop">
							<li class="nav-item"><button>
									<i class="ti-location-pin"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-heart"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span>
								</button></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->
	<!-- ================ category section start ================= -->
	<section class="section-margin--small mb-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-4 col-md-5">
					<h4 class="widget_title">카테고리</h4>
					<div class="common-filter">
						<ul class="list cat-list">
						<li><a href="getProductList.do" class="d-flex justify-content-between">
										<p>전체 보기</p>
										<p>${wholeCount}</p>
								</a></li> 
							<c:forEach items="${filterList}" var="filter">
								<li><a href="getCategoryList.do?categoryname=${filter.categoryname}" class="d-flex justify-content-between">
										<p>${filter.categoryname}</p>
										<p>${filter.count}</p>
								</a></li>
								</c:forEach>
						</ul>
					</div>
					<div class="br"></div>
				</div>
				<div class="col-xl-9 col-lg-8 col-md-7">
					<!-- Start Filter Bar -->
					<div class="filter-bar d-flex flex-wrap align-items-center">
						<div class="sorting">
							<select>
								<option value="1">신상품순</option>
								<option value="1">판매량순</option>
								<option value="1">낮은 가격순</option>
								<option value="1">높은 가격순</option>
							</select>
						</div>
						<div class="sorting mr-auto">
							<select>
								<option value="1">6개 보기</option>
								<option value="1">9개 보기</option>
								<option value="1">12개 보기</option>
							</select>
						</div>
						<div>
							<form action="searchProductList.do">
								<div class="input-group filter-bar-search">
									<input type="text" name="search" placeholder="전체 목록에서 상품 검색">
									<div class="input-group-append">
										<button type="submit">
											<i class="ti-search"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- End Filter Bar -->
					<!-- Start Best Seller -->
					<section class="lattest-product-area pb-40 category-list">
						<div class="row">
							<c:forEach items="${productList}" var="product">
								<div class="col-md-6 col-lg-4">
									<div class="card text-center card-product">
										<div class="card-product__img">
											<img class="card-img" src="<%=pjName%>/resources/upload/${product.p_list_realfname}" alt="">
											<ul class="card-product__imgOverlay">
												<li><a href="getProductDetail.do?p_number=${product.p_number}"><button>
															<i class="ti-search"></i>
														</button></a></li>
												<li><button>
														<i class="ti-shopping-cart"></i>
													</button></li>
												<li><button>
														<i class="ti-heart"></i>
													</button></li>
											</ul>
										</div>
										<div class="card-body">
											<p>${product.p_brand }</p>
											<h4 class="card-product__title">
												<a href="getProductDetail.do?p_number=${product.p_number}">${product.p_name}</a>
											</h4>
											<p class="card-product__price">${product.p_price}원</p>
										</div>
									</div>
								</div>
							</c:forEach>
							
						</div>
						
					
					</section>
					<!-- End Best Seller -->
				</div>
			</div>
		</div>
	</section>
	<!-- ================ category section end ================= -->
	<!--================ Start footer Area  =================-->
	<footer>
		
		<div class="footer-area">
						<hr></hr>
						<div class= "ss">
						<div class="s1">
							<h4 class="footer_title large_title">고객행복센터</h4>
							<table>
							
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">카톡 문의</a></td>
							<td><p>월~일요일 | 오전7시~ 오후6시 </p></td>

							</tr>
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">개인 문의 </a></td>
							<td><p>365일 친절하게 문의 받겠습니다.</p></td>

							</tr>
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">대량 문의</a></td>
						
							
							<td><p>월~일요일 | 오전9시~ 오후6시 </p></td>
							
							</tr>
							<tr></tr>
							<tr>
								
							<td><p> 비회원문의 : help @ kosmo.com</p></td>

							</tr>
							<tr>
							<td><p> 비회원대량문의 : gift @ kosmo.com</p></td>

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
								<p>팩스 : 000- 0000 - 0000
								
								</p>
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
	<script src="<%=pjName%>/resources/vendors/nouislider/nouislider.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
</body>
</html>