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
<title>KITEN - 회원 가입</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/styleUserJoin.css">
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
	<!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-10">
					<div class="login_form_inner register_form_inner">
						<h3>회원가입</h3>
						<form class="row login_form" action="userInsert.do" id="userinput" name="userinput">
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="id">아이디</label>
								</div>
								<input type="text" class="form-control" id="m_id" name="m_id" placeholder="아이디를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디를 입력해 주세요'">
								<div class="form-button">
									<button type="button" value="중복 확인" class="button button-login" id="m_check">중복 확인</button>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="password">비밀번호</label>
								</div>
								<input type="password" class="form-control" id="m_password" name="m_password" placeholder="비밀번호를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호를 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="confirmPassword">비밀번호 확인</label>
								</div>
								<input type="password" class="form-control" id="m_confirmPassword" name="m_confirmPassword" placeholder="비밀번호를 한 번 더 입력해 주세요" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '비밀번호를 한 번 더 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="name">이름</label>
								</div>
								<input type="text" class="form-control" id="m_name" name="m_name" placeholder="이름을 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름을 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="email">이메일</label>
								</div>
								<input type="email" class="form-control" id="m_email" name="m_email" placeholder="예: mealkit@kiten.com" onfocus="this.placeholder = ''" onblur="this.placeholder = '예: mealkit@kiten.com'">
								<div class="form-button">
									<!-- 								<button type="submit" value="submit" class="button button-login">중복 확인</button> -->
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="tel">전화번호</label>
								</div>
								<input type="text" class="form-control" id="m_tel" name="m_tel" placeholder="-을 제외한 숫자만 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '-을 제외한 숫자만 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="address1">주소</label>
								</div>
								<input type="text" class="form-control" id="m_address1" name="m_address1" placeholder="주소 검색을 위해 클릭해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '주소 검색을 위해 클릭해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="address2">상세 주소</label>
								</div>
								<input type="text" class="form-control" id="m_address2" name="m_address2" placeholder="상세 주소를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '상세 주소를 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div" id="agree">
									<label class="form-label">이용약관 동의</label>
								</div>
								<div class="creat_account">
									<input type="checkbox" id="m_agree" name="m_agree"> <label for="m_agree">이용 약관입니다 (필수)</label><br>
								</div>
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<button type="button" value="submit" class="button button-register w-100" id="m_confirm">가입하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
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


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function() {
			document
					.getElementById("m_address1")
					.addEventListener(
							"click",
							function() { //주소입력칸을 클릭하면
								//카카오 지도 발생
								new daum.Postcode(
										{
											oncomplete : function(data) { //선택시 입력값 세팅
												document
														.getElementById("m_address1").value = data.address; // 주소 넣기
												document.querySelector(
														"input[name=m_address2]")
														.focus(); //상세입력 포커싱
											}
										}).open();
							});
		}
	</script>
	<script src="<%=pjName%>/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/skrollr.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/userInput.js"></script>

</body>
</html>