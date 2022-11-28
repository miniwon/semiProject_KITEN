<%@page contentType="text/html; charset=UTF-8"%>
<% String pjName = "/KITEN"; %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>요리하는 고양이, KITEN</title>
<!-- 상단에 이름이랑 같이 뜨는 이미지 -->
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<link href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/nice-select/nice-select.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    $('.slider').bxSlider();
  });
</script>
<style type="text/css">
.bx-wrapper {
    -moz-box-shadow: 0 0 0px #ccc;
    -webkit-box-shadow: 0 0 0px #ccc;
    box-shadow: 0 0 0px #ccc0;
    border: 0px;
    }
    </style>



<head>


<link rel="stylesheet" href="<%=pjName%>/resources/css/stylej.css" />
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
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">쇼핑하기</a>
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
										<li class="nav-item"><a class="nav-link" href="#">주문 내역</a></li>
										<li class="nav-item"><a class="nav-link" href="#">찜한 상품</a></li>
										<li class="nav-item"><a class="nav-link" href="#">배송지 관리</a></li>
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
							<li class="nav-item"><button>
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

	<main class="site-main">

		<!--================ Hero banner start =================-->

			
				
						<br></br>
						<div class="hero-banner__img">
						
							<ul class="main_bxslider">
							<div class="slider">
								<img src="<%=pjName%>/resources/img/home/main1.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main2.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main3.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main4.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main5.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main6.png" /></li>
								<img src="<%=pjName%>/resources/img/home/main7.png" /></li>
							</div>
							</ul>
							
						
					
					</div>

			
		
		
		<!--================ Hero banner start =================-->

		<!--================ Hero Carousel start =================-->
		
		<!--================ Hero Carousel end =================-->

		<!-- ================ trending product section start ================= -->
		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>새로 들어온 제품들	</p>
					<h2>
						주목해야할 <span class="section-intro__style">신상품</span>
					</h2>
				</div>
				<div class="row">
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/b8df79d2-7122-4b0c-a7ab-c5c729d105c8_others_list4.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=111"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="바삭 코코넛 쉬림프(1인)" data-user="${sessionScope.userNo}" data-value="111"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="바삭 코코넛 쉬림프(1인)" data-user="${sessionScope.userNo}" data-value="111"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>영칼로리</p>
								<h4 class="card-product__title">
									<a href="single-product.html">바삭 코코넛 쉬림프(1인)</a>
								</h4>
								<p class="card-product__price">7900원</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/828cb88b-e03e-480e-aa71-3c545b5e6fc3_others_list3.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=110"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="모짜렐라 뿌링뿌링 치즈볼(1인)" data-user="${sessionScope.userNo}" data-value="110"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="모짜렐라 뿌링뿌링 치즈볼(1인)" data-user="${sessionScope.userNo}" data-value="110"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>상현달</p>
								<h4 class="card-product__title">
									<a href="single-product.html">모짜렐라 뿌링뿌링 치즈볼(1인)</a>
								</h4>
								<p class="card-product__price">6900원</p>
							</div>
						</div>
					</div>
				<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/55fa6d6a-4ff9-436e-90df-9dd0a749e6a8_others_list2.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=109"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="두툼 벌집껍데기(2인)" data-user="${sessionScope.userNo}" data-value="109"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="두툼 벌집껍데기(2인)" data-user="${sessionScope.userNo}" data-value="109"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>영칼로리</p>
								<h4 class="card-product__title">
									<a href="single-product.html">두툼 벌집껍데기(2인)</a>
								</h4>
								<p class="card-product__price">7900원</p>
							</div>
						</div>
					</div>	
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/a0d45d29-f030-41ed-b5c2-8a6e73a2feff_others_list1.jpg" alt="">
									<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=82"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="굳지않는 가래떡과 쌀로만든 조청(1인)" data-user="${sessionScope.userNo}" data-value="82"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="굳지않는 가래떡과 쌀로만든 조청(1인)" data-user="${sessionScope.userNo}" data-value="82"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>상현달</p>
								<h4 class="card-product__title">
									<a href="single-product.html">굳지않는 가래떡과 쌀로만든 조청(1인)</a>
								</h4>
								<p class="card-product__price">4900원</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/37363b51-faad-4651-b77e-82e838f3eda0_snackfood_list5.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=80"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="우정분식 물떡 어묵탕(2인)" data-user="${sessionScope.userNo}" data-value="80"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="우정분식 물떡 어묵탕(2인)" data-user="${sessionScope.userNo}" data-value="80"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>미니언즈</p>
								<h4 class="card-product__title">
									<a href="single-product.html">우정분식 물떡 어묵탕(2인)</a>
								</h4>
								<p class="card-product__price">12900원</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/01a4b08f-cc8b-4335-8b21-26cf967dee37_japanese_list8.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=62"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="밀푀유나베(2인)" data-user="${sessionScope.userNo}" data-value="62"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="밀푀유나베(2인)" data-user="${sessionScope.userNo}" data-value="62"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>오사카맛도리</p>
								<h4 class="card-product__title">
									<a href="single-product.html">밀푀유나베(2인)</a>
								</h4>
								<p class="card-product__price">12900원</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/f5b470cf-a2c4-4f1c-890d-171da6a58e2c_snackfood_list4.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=79"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="매콤 양념 순대볶음(2인)" data-user="${sessionScope.userNo}" data-value="79"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="매콤 양념 순대볶음(2인)" data-user="${sessionScope.userNo}" data-value="79"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>짱이네분식</p>
								<h4 class="card-product__title">
									<a href="single-product.html">매콤 양념 순대볶음(2인)</a>
								</h4>
								<p class="card-product__price">11900원</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="/KITEN/resources/upload/23f9cef3-8370-460a-b06b-b8c955e5e5cd_snackfood_list3.jpg" alt="">
								<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=78"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="신림동식 백순대볶음(2인)" data-user="${sessionScope.userNo}" data-value="78"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="신림동식 백순대볶음(2인)" data-user="${sessionScope.userNo}" data-value="78"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>짱이네분식</p>
								<h4 class="card-product__title">
									<a href="#">신림동식 백순대볶음(2인)</a>
								</h4>
								<p class="card-product__price">11900원</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ================ trending product section end ================= -->


		<!-- ================ offer section start ================= -->
		<section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
			<div class="container">
				<div class="row">
					<div class="col-xl-5">
						<div class="offer__content text-center">
					
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ================ offer section end ================= -->

		<!-- ================ Best Selling item  carousel ================= -->
		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>제일 잘나감</p>
					<h2>
						베스트 <span class="section-intro__style">랭킹</span>
					</h2>
				</div>
				<div class="owl-carousel owl-theme" id="bestSellerCarousel">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/24ce6650-b455-4d1a-a3c7-00eea6949173_southeastasian_list3.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=46"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="소고기 볶음 국수" data-user="${sessionScope.userNo}" data-value="46"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="소고기 볶음 국수" data-user="${sessionScope.userNo}" data-value="46"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>민수리아</p>
							<h4 class="card-product__title">
								<a href="single-product.html">소고기 볶음 국수</a>
							</h4>
							<p class="card-product__price">13900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/5106a6f9-1897-4e52-a206-c5bf30101f6e_western_list2.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=25"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="비프 볼로네제 파스타(2인)" data-user="${sessionScope.userNo}" data-value="25"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="비프 볼로네제 파스타(2인)" data-user="${sessionScope.userNo}" data-value="25"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>홀리이탈리아	</p>
							<h4 class="card-product__title">
								<a href="single-product.html">비프 볼로네제 파스타(2인)</a>
							</h4>
							<p class="card-product__price">8900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/e5419ed0-8525-49aa-8a0b-40decd1972f4_western_list1.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=24"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="불고기 퀘사디아(1-2인)" data-user="${sessionScope.userNo}" data-value="24"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="불고기 퀘사디아(1-2인)" data-user="${sessionScope.userNo}" data-value="24"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>비비쿡</p>
							<h4 class="card-product__title">
								<a href="single-product.html">불고기 퀘사디아(1-2인)</a>
							</h4>
							<p class="card-product__price">8900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/1b32b1d0-b306-4815-85df-083d47ad7e05_korean_list14.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=22"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="훈제오리무쌈(2인)" data-user="${sessionScope.userNo}" data-value="22"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="훈제오리무쌈(2인)" data-user="${sessionScope.userNo}" data-value="22"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>고기챔피언</p>
							<h4 class="card-product__title">
								<a href="single-product.html">훈제오리무쌈(2인)</a>
							</h4>
							<p class="card-product__price">10900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/13194688-7e54-40e6-b25d-d17ce6448f1a_western_list11.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=38"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="나혼자 소고기 부채살 스테이크(1인)" data-user="${sessionScope.userNo}" data-value="38"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="나혼자 소고기 부채살 스테이크(1인)" data-user="${sessionScope.userNo}" data-value="38"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>인프론트</p>
							<h4 class="card-product__title">
								<a href="single-product.html">나혼자 소고기 부채살 스테이크(1인)</a>
							</h4>
							<p class="card-product__price">9900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/fa70a7b1-8383-4c45-a544-7a95e9547e75_korean_list1.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=14"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="된장찌개 & 캠핑 가니시 밀키트(3-4인)" data-user="${sessionScope.userNo}" data-value="14"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="된장찌개 & 캠핑 가니시 밀키트(3-4인)" data-user="${sessionScope.userNo}" data-value="14"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>찌개의 제왕</p>
							<h4 class="card-product__title">
								<a href="single-product.html">된장찌개 & 캠핑 가니시 밀키트(3-4인)</a>
							</h4>
							<p class="card-product__price">9900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/08ac9a9d-b614-4222-b3be-87bc19eb6ec2_korean_list5.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=2"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="매콤 쭈꾸미 삼겹살(2인)" data-user="${sessionScope.userNo}" data-value="2"></i>
										</button></li>
									<li><button>
											<i class="ti-heart" data-pname="매콤 쭈꾸미 삼겹살(2인)" data-user="${sessionScope.userNo}" data-value="2"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>고기챔피언</p>
							<h4 class="card-product__title">
								<a href="single-product.html">매콤 쭈꾸미 삼겹살(2인)</a>
							</h4>
							<p class="card-product__price">19900원</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="/KITEN/resources/upload/e91bcf69-3e52-4a27-aa54-01774b2931d8_snackfood_list1.jpg" alt="">
							<ul class="card-product__imgOverlay">
									<li><a href="product/getProductDetail.do?p_number=2"><button>
											<i class="ti-search"></i>
										</button></a></li>
									<li><button>
											<i class="ti-shopping-cart" data-pname="우정분식 아찔 떡볶잉(2인)" data-user="${sessionScope.userNo}" data-value="61"></i>
										</button></li>
									<li><button>	
											<i class="ti-heart" data-pname="우정분식 아찔 떡볶잉(2인)" data-user="${sessionScope.userNo}" data-value="61"></i>
										</button></li>
								</ul>
						</div>
						<div class="card-body">
							<p>미니언즈</p>
							<h4 class="card-product__title">
								<a href="single-product.html">우정분식 아찔 떡볶잉(2인)</a>
							</h4>
							<p class="card-product__price">15900원</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ================ Best Selling item  carousel end ================= -->

		<!-- ================ Blog section start ================= -->
		
		<!-- ================ Blog section end ================= -->

		<!-- ================ Subscribe section start ================= -->
		
		<!-- ================ Subscribe section end ================= -->



	</main>

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
	
	<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function(){
	$('.bxslider').bxSlider();
	});
	//]]>
	</script>



	<script src="<%=pjName%>/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/skrollr.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/home.js"></script>
	<script src="<%=pjName%>/resources/js/addCart.js"></script>
</body>
</html>