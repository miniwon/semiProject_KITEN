<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>회원 가입</title>
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
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand logo_h" href="index.html"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Blog Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul></li>
							<li class="nav-item active submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
									<li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
						</ul>

						<ul class="nav-shop">
							<li class="nav-item"><button>
									<i class="ti-search"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span>
								</button></li>
							<li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li>
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
						<form class="row login_form" action="#/" id="register_form">
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="id">아이디</label>
								</div>
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디를 입력해 주세요'">
								<div class="form-button">
									<button type="submit" value="submit" class="button button-login">중복 확인</button>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="password">비밀번호</label>
								</div>
								<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호를 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="confirmPassword">비밀번호 확인</label>
								</div>
								<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="비밀번호를 한 번 더 입력해 주세요" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '비밀번호를 한 번 더 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="name">이름</label>
								</div>
								<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름을 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="email">이메일</label>
								</div>
								<input type="email" class="form-control" id="email" name="email" placeholder="예: mealkit@kiten.com" onfocus="this.placeholder = ''" onblur="this.placeholder = '예: mealkit@kiten.com'">
								<div class="form-button">
									<button type="submit" value="submit" class="button button-login">중복 확인</button>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="tel">전화번호</label>
								</div>
								<input type="text" class="form-control" id="tel" name="tel" placeholder="-을 제외한 숫자만 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '-을 제외한 숫자만 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="address1">주소</label>
								</div>
								<input type="text" class="form-control" id="address1" name="address1" placeholder="주소 검색을 위해 클릭해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '주소 검색을 위해 클릭해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div">
									<label class="form-label" for="address2">상세 주소</label>
								</div>
								<input type="text" class="form-control" id="address2" name="address2" placeholder="상세 주소를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '상세 주소를 입력해 주세요'">
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<div class="form-label-div" id="agree">
									<label class="form-label">이용약관 동의</label>
								</div>
								<div class="creat_account">
									<input type="checkbox" id="f-option" name="selector"> <label for="f-option">어그리?</label><br>
									<input type="checkbox" id="f-option2" name="selector"> <label for="f-option2">어그리?2</label><br>
									<input type="checkbox" id="f-option2" name="selector"> <label for="f-option2">어그리?3</label>
								</div>
								<div class="form-button"></div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-register w-100">가입하기</button>
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
		<div class="footer-area footer-only">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets ">
							<h4 class="footer_title large_title">Our Mission</h4>
							<p>So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved us lan Gathering thing us land years living.</p>
							<p>So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved</p>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Quick Links</h4>
							<ul class="list">
								<li><a href="#">Home</a></li>
								<li><a href="#">Shop</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">Brand</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">Gallery</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="<%=pjName%>/resources/img/gallery/r1.jpg" alt=""></li>
								<li><img src="<%=pjName%>/resources/img/gallery/r2.jpg" alt=""></li>
								<li><img src="<%=pjName%>/resources/img/gallery/r3.jpg" alt=""></li>
								<li><img src="<%=pjName%>/resources/img/gallery/r5.jpg" alt=""></li>
								<li><img src="<%=pjName%>/resources/img/gallery/r7.jpg" alt=""></li>
								<li><img src="<%=pjName%>/resources/img/gallery/r8.jpg" alt=""></li>
							</ul>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Contact Us</h4>
							<div class="ml-40">
								<p class="sm-head">
									<span class="fa fa-location-arrow"></span> Head Office
								</p>
								<p>123, Main Street, Your City</p>

								<p class="sm-head">
									<span class="fa fa-phone"></span> Phone Number
								</p>
								<p>
									+123 456 7890 <br> +123 456 7890
								</p>

								<p class="sm-head">
									<span class="fa fa-envelope"></span> Email
								</p>
								<p>
									free@infoexample.com <br> www.infoexample.com
								</p>
							</div>
						</div>
					</div>
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
					.getElementById("address1")
					.addEventListener(
							"click",
							function() { //주소입력칸을 클릭하면
								//카카오 지도 발생
								new daum.Postcode(
										{
											oncomplete : function(data) { //선택시 입력값 세팅
												document
														.getElementById("address1").value = data.address; // 주소 넣기
												document.querySelector(
														"input[name=address2]")
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
</body>
</html>