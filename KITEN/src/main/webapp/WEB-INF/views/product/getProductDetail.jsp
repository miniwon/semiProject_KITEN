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
<title>KITEN - ${product.p_name}</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/stylem.css">
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
							<c:if test="${not empty sessionScope.userId}">
								<li class="nav-item">${sessionScope.userId}님</li>
							</c:if>
							<li class="nav-item"><button>
									<i class="ti-location-pin"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-heart"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-shopping-cart"></i><span class="nav-shop__circle" id="cartQuantity">3</span>
								</button></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->

	<!-- ================ end banner area ================= -->


	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="single-prd-item">
						<img class="img-fluid " src="<%=pjName%>/resources/upload/${product.p_list_realfname}" alt="">
					</div>
					<!-- <div class="single-prd-item">
							<img class="img-fluid" src="<%=pjName%>/resources/img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="<%=pjName%>/resources/img/category/s-p1.jpg" alt="">
						</div> -->
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>${product.p_name}</h3>
						<h2>${product.p_price}원</h2>
						<ul class="list">
							<li><a class="active" href="#"><span><strong>브랜드</strong></span>${product.p_brand}</a></li>
							<br>
							<li><a class="active" href="#"><span><strong>중량/용량</strong></span>${product.p_weight}</a></li>
							<br>
							<li><a class="active" href="#"><span><strong>조리 시간</strong></span>${product.p_time}</a></li>
							<br>
							<li><a class="active" href="#"><span><strong>유통기한</strong></span>${product.p_due}</a></li>
							<br>
							<li><a class="active" href="#"><span><strong>재료 목록</strong></span>${product.p_list}</a></li>
							<br>
						</ul>
						<p>${product.p_shortcontent}</p>
						<form id="addCartForm" name="addCartForm">
							<input type="hidden" id="m_number" name="m_number" value="${sessionScope.userNo}" /> 
							<input type="hidden" id="p_number" name="p_number" value="${product.p_number}" />
							<div class="product_count">
								<label for="qty">수량:</label>
								<button onclick="var result = document.getElementById('c_quantity'); var c_quantity = result.value; if( !isNaN( c_quantity ) &amp;&amp; c_quantity > 1 ) result.value--;return false;"
									class="reduced items-count" type="button">▼</button>
								<input type="text" name="c_quantity" id="c_quantity" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
								<button onclick="var result = document.getElementById('c_quantity'); var c_quantity = result.value; if( !isNaN( c_quantity )) result.value++; return false;" class="increase items-count"
									type="button">▲</button>
							</div>
							<div class="card_area d-flex align-items-center">
								<a></a> <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a> <a class="button primary-btn" id="addCart" href="#">장바구니</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item"><a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home">상세 설명</a></li>
				<li class="nav-item"><a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile">상품 정보</a></li>
				<li class="nav-item"><a class="nav-link" id="contact-tab" data-toggle="tab" href="#review" role="tab" aria-controls="contact">상품 후기</a></li>
				<li class="nav-item"><a class="nav-link" id="review-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="review">상품 문의</a></li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<div class="col-lg-12">
						<img class="img-fluid" src="<%=pjName%>/resources/upload/${product.p_detail_realfname}" alt="">
					</div>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>
											<strong>상품명</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_name}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>판매 브랜드</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_brand}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>중량/용량</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_weight}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>상품 분류</strong>
										</h5>
									</td>
									<td>
										<h5>${product.categoryname}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>조리 시간</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_time}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>보관 방법</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_storage}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>유통기한</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_due}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>재료 목록</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_list}</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>
											<strong>알레르기 정보</strong>
										</h5>
									</td>
									<td>
										<h5>${product.p_allergy}</h5>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>


				<div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>평점</h5>
										<h4>4.0</h4>
										<h6>리뷰 갯수</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>리뷰 평점</h3>
										<ul class="list">
											<li><a href="#">5 점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01
											</a></li>
											<li><a href="#">4 점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01
											</a></li>
											<li><a href="#">3 점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01
											</a></li>
											<li><a href="#">2 점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01
											</a></li>
											<li><a href="#">1 점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01
											</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>오경호</h4>
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
										</div>
									</div>
									<p>너무너무 맛있어요. 시계가 달아요</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>강민수</h4>
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
										</div>
									</div>
									<p>제가 먹어본 시계 중에선 최고입니다 ^^ 항상 애용할게요 ㅋ</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>김상현</h4>
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
										</div>
									</div>
									<p>시계가 좋아 좋아 좋아 주아 조아 쥬황 주화 주 주 주 주 주 주 주 주</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>리뷰 쓰기</h4>
								<p>당신의 별점:</p>
								<ul class="list">
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</ul>
								<p>별점 주기</p>
								<form action="#/" class="form-contact form-review mt-3">
									<div class="form-group">
										<input class="form-control" name="name" type="text" placeholder="이름을 입력하세요." required>
									</div>
									<div class="form-group">
										<input class="form-control" name="email" type="email" placeholder="이메일을 입력하세요." required>
									</div>

									<div class="form-group">
										<textarea class="form-control different-control w-100" name="textarea" id="textarea" cols="30" rows="5" placeholder="메세지를 입력하세요."></textarea>
									</div>
									<div class="form-group text-center text-md-right mt-3">
										<button type="submit" class="button button--active button-review">글 쓰기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="comment_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>오경호</h4>
											<h5>2022년 09월12일</h5>
											<a class="reply_btn" href="#">답글</a>
										</div>
									</div>
									<p>혹시 이 시계를 먹으면 복통이 일어날 수 있을까요?</p>
								</div>
								<div class="review_item reply">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>강민수</h4>
											<h5>2022년09월13일</h5>
											<a class="reply_btn" href="#">답글</a>
										</div>
									</div>
									<p>아니요 절대 그럴일 없습니다.</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%=pjName%>/resources/img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>김상현</h4>
											<h5>2022년 09월 10일</h5>
											<a class="reply_btn" href="#">답글</a>
										</div>
									</div>
									<p>시계가 맛있어서 대량으로 구매를 원합니다. 1000000개 구입 가능한가요?</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>문의 달기</h4>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요.">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력하세요.">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="number" name="number" placeholder="핸드폰을 입력하세요.">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="내용을 입력하세요."></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="btn primary-btn">글쓰기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	<!--================ Start related Product area =================-->

	<!--================ end related Product area =================-->

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
	<script src="<%=pjName%>/resources/js/addCart.js"></script>
</body>
</html>