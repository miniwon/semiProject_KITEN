<%@page contentType="text/html; charset=UTF-8"%>
<% String pjName = "/KITEN"; %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>요리하는 고양이, KITEN</title>
<!-- 상단에 이름이랑 같이 뜨는 이미지 -->
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css" rel="stylesheet" />
<link href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/nice-select/nice-select.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
<link href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="<%=pjName%>/resources/css/style.css" />
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
					<!-- .navbar-brand logo_h랑 겹쳐 있는 애? -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
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

	<main class="site-main">

		<!--================ Hero banner start =================-->
		<section class="hero-banner">
			<div class="container">
				<div class="row no-gutters align-items-center pt-60px">
					<div class="col-5 d-none d-sm-block">
						<div class="hero-banner__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/home/hero-banner.webp" alt="">
						</div>
					</div>
					<div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
						<div class="hero-banner__content">
							<h4>배달하는 고양이</h4>	<!-- 메인페이지 소제목 -->
							<h1>왕제목</h1> <!-- 메인페이지 제목 -->
							<p>블라블라~ 길게 말을함 </p> <!-- 뭐라고 말을 하는중 -->
							<a class="button button-hero" href="#">Browse Now</a>
						</div>
					</div>
				</div>
			</div>
		</section>
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
								<img class="card-img" src="<%=pjName%>/resources/img/product/product1.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Accessories</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Quartz Belt Watch</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product2.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Beauty</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Women Freshwash</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product3.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Decor</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Room Flash Light</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product4.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Decor</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Room Flash Light</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product5.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Accessories</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Man Office Bag</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product6.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Kids Toy</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Charging Car</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product7.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Accessories</p>
								<h4 class="card-product__title">
									<a href="single-product.html">Blutooth Speaker</a>
								</h4>
								<p class="card-product__price">$150.00</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<img class="card-img" src="<%=pjName%>/resources/img/product/product8.png" alt="">
								<ul class="card-product__imgOverlay">
									<li><button>
											<i class="ti-search"></i>
										</button></li>
									<li><button>
											<i class="ti-shopping-cart"></i>
										</button></li>
									<li><button>
											<i class="ti-heart"></i>
										</button></li>
								</ul>
							</div>
							<div class="card-body">
								<p>Kids Toy</p>
								<h4 class="card-product__title">
									<a href="#">Charging Car</a>
								</h4>
								<p class="card-product__price">$150.00</p>
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
							<h3>Up To 50% Off</h3>
							<h4>Winter Sale</h4>
							<p>Him she'd let them sixth saw light</p>
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
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product1.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Accessories</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Quartz Belt Watch</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product2.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Beauty</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Women Freshwash</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product3.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product4.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product1.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Accessories</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Quartz Belt Watch</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product2.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Beauty</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Women Freshwash</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product3.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="<%=pjName%>/resources/img/product/product4.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ================ Best Selling item  carousel end ================= -->

		<!-- ================ Blog section start ================= -->
		<section class="blog">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>Popular Item in the market</p>
					<h2>
						Latest <span class="section-intro__style">News</span>
					</h2>
				</div>

				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/blog1.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">The Richland Center Shooping News and weekly shooper</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/blog2.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">The Shopping News also offers top-quality printing services</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/blog3.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">Professional design staff and efficient equipment you’ll find we offer</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ================ Blog section end ================= -->

		<!-- ================ Subscribe section start ================= -->
		
		<!-- ================ Subscribe section end ================= -->



	</main>


	<!--================ Start footer Area  =================-->
	<footer class="footer">
		<div class="footer-area">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
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
						<script>document.write(new Date().getFullYear());</script>
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
</body>
</html>