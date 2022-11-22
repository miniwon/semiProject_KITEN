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
					<a class="navbar-brand logo_h" href="index.html"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item active submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
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