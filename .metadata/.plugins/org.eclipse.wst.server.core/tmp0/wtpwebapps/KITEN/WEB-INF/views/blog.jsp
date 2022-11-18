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
<title>Aroma Shop - Blog</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/stylem.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/footer.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
			<li class="nav-item"><a class="nav-link" href="">회원가입</a></li>
			<li class="nav-item"><a class="nav-link" href="">로그인</a></li>
			<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
				<ul class="dropdown-menu">
					<li class="nav-item"><a class="nav-link" href="login.html">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="register.html">1:1 문의</a></li>
					<li class="nav-item"><a class="nav-link" href="tracking-order.html">마이 페이지</a></li>
				</ul></li>

		</ul>
		<div class="main_menu main_menu_belowbar">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand logo_h" href="index.html"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search Posts"> <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="lnr lnr-magnifier"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="container">
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
								</ul></li>
							<li class="nav-item active submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item active"><a class="nav-link" href="blog.html">Blog Single</a></li>
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
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand logo_h" href="index.html"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search Posts"> <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="lnr lnr-magnifier"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="container">
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
								</ul></li>
							<li class="nav-item active submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item active"><a class="nav-link" href="blog.html">Blog Single</a></li>
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


	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Our Blog</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Blog</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ end banner area ================= -->


	<!--================Blog Categorie Area =================-->
	<section class="blog_categorie_area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/cat-post/cat-post-3.jpg" alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="single-blog.html">
									<h5>Social Life</h5>
								</a>
								<div class="border_line"></div>
								<p>Enjoy your social life together</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/cat-post/cat-post-2.jpg" alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="single-blog.html">
									<h5>Politics</h5>
								</a>
								<div class="border_line"></div>
								<p>Be a part of politics</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4 mb-4 mb-lg-0">
					<div class="categories_post">
						<img class="card-img rounded-0" src="<%=pjName%>/resources/img/blog/cat-post/cat-post-1.jpg" alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="single-blog.html">
									<h5>Food</h5>
								</a>
								<div class="border_line"></div>
								<p>Let the food be finished</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Categorie Area =================-->

	<!--================Blog Area =================-->
	<section class="blog_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="blog_left_sidebar">
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">
									<div class="post_tag">
										<a href="#">Food,</a> <a class="active" href="#">Technology,</a> <a href="#">Politics,</a> <a href="#">Lifestyle</a>
									</div>
									<ul class="blog_meta list">
										<li><a href="#">Mark wiens <i class="lnr lnr-user"></i>
										</a></li>
										<li><a href="#">12 Dec, 2017 <i class="lnr lnr-calendar-full"></i>
										</a></li>
										<li><a href="#">1.2M Views <i class="lnr lnr-eye"></i>
										</a></li>
										<li><a href="#">06 Comments <i class="lnr lnr-bubble"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<img src="<%=pjName%>/resources/img/blog/main-blog/m-blog-1.jpg" alt="">
									<div class="blog_details">
										<a href="single-blog.html">
											<h2>Astronomy Binoculars A Great Alternative</h2>
										</a>
										<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials
											yourself at a fraction.</p>
										<a class="button button-blog" href="single-blog.html">View More</a>
									</div>
								</div>
							</div>
						</article>
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">
									<div class="post_tag">
										<a href="#">Food,</a> <a class="active" href="#">Technology,</a> <a href="#">Politics,</a> <a href="#">Lifestyle</a>
									</div>
									<ul class="blog_meta list">
										<li><a href="#">Mark wiens <i class="lnr lnr-user"></i>
										</a></li>
										<li><a href="#">12 Dec, 2017 <i class="lnr lnr-calendar-full"></i>
										</a></li>
										<li><a href="#">1.2M Views <i class="lnr lnr-eye"></i>
										</a></li>
										<li><a href="#">06 Comments <i class="lnr lnr-bubble"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<img src="<%=pjName%>/resources/img/blog/main-blog/m-blog-2.jpg" alt="">
									<div class="blog_details">
										<a href="single-blog.html">
											<h2>The Basics Of Buying A Telescope</h2>
										</a>
										<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials
											yourself at a fraction.</p>
										<a href="single-blog.html" class="button button-blog">View More</a>
									</div>
								</div>
							</div>
						</article>
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">
									<div class="post_tag">
										<a href="#">Food,</a> <a class="active" href="#">Technology,</a> <a href="#">Politics,</a> <a href="#">Lifestyle</a>
									</div>
									<ul class="blog_meta list">
										<li><a href="#">Mark wiens <i class="lnr lnr-user"></i>
										</a></li>
										<li><a href="#">12 Dec, 2017 <i class="lnr lnr-calendar-full"></i>
										</a></li>
										<li><a href="#">1.2M Views <i class="lnr lnr-eye"></i>
										</a></li>
										<li><a href="#">06 Comments <i class="lnr lnr-bubble"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<img src="<%=pjName%>/resources/img/blog/main-blog/m-blog-3.jpg" alt="">
									<div class="blog_details">
										<a href="single-blog.html">
											<h2>The Glossary Of Telescopes</h2>
										</a>
										<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials
											yourself at a fraction.</p>
										<a href="single-blog.html" class="button button-blog">View More</a>
									</div>
								</div>
							</div>
						</article>
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">
									<div class="post_tag">
										<a href="#">Food,</a> <a class="active" href="#">Technology,</a> <a href="#">Politics,</a> <a href="#">Lifestyle</a>
									</div>
									<ul class="blog_meta list">
										<li><a href="#">Mark wiens <i class="lnr lnr-user"></i>
										</a></li>
										<li><a href="#">12 Dec, 2017 <i class="lnr lnr-calendar-full"></i>
										</a></li>
										<li><a href="#">1.2M Views <i class="lnr lnr-eye"></i>
										</a></li>
										<li><a href="#">06 Comments <i class="lnr lnr-bubble"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<img src="<%=pjName%>/resources/img/blog/main-blog/m-blog-4.jpg" alt="">
									<div class="blog_details">
										<a href="single-blog.html">
											<h2>The Night Sky</h2>
										</a>
										<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials
											yourself at a fraction.</p>
										<a href="single-blog.html" class="button button-blog">View More</a>
									</div>
								</div>
							</div>
						</article>
						<article class="row blog_item">
							<div class="col-md-3">
								<div class="blog_info text-right">
									<div class="post_tag">
										<a href="#">Food,</a> <a class="active" href="#">Technology,</a> <a href="#">Politics,</a> <a href="#">Lifestyle</a>
									</div>
									<ul class="blog_meta list">
										<li><a href="#">Mark wiens <i class="lnr lnr-user"></i>
										</a></li>
										<li><a href="#">12 Dec, 2017 <i class="lnr lnr-calendar-full"></i>
										</a></li>
										<li><a href="#">1.2M Views <i class="lnr lnr-eye"></i>
										</a></li>
										<li><a href="#">06 Comments <i class="lnr lnr-bubble"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-9">
								<div class="blog_post">
									<img src="<%=pjName%>/resources/img/blog/main-blog/m-blog-5.jpg" alt="">
									<div class="blog_details">
										<a href="single-blog.html">
											<h2>Telescopes 101</h2>
										</a>
										<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials
											yourself at a fraction.</p>
										<a href="single-blog.html" class="button button-blog">View More</a>
									</div>
								</div>
							</div>
						</article>
						<nav class="blog-pagination justify-content-center d-flex">
							<ul class="pagination">
								<li class="page-item"><a href="#" class="page-link" aria-label="Previous"> <span aria-hidden="true"> <span class="lnr lnr-chevron-left"></span>
									</span>
								</a></li>
								<li class="page-item"><a href="#" class="page-link">01</a></li>
								<li class="page-item active"><a href="#" class="page-link">02</a></li>
								<li class="page-item"><a href="#" class="page-link">03</a></li>
								<li class="page-item"><a href="#" class="page-link">04</a></li>
								<li class="page-item"><a href="#" class="page-link">09</a></li>
								<li class="page-item"><a href="#" class="page-link" aria-label="Next"> <span aria-hidden="true"> <span class="lnr lnr-chevron-right"></span>
									</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search Posts"> <span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="lnr lnr-magnifier"></i>
									</button>
								</span>
							</div>
							<!-- /input-group -->
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget author_widget">
							<img class="author_img rounded-circle" src="<%=pjName%>/resources/img/blog/author.png" alt="">
							<h4>Charlie Barber</h4>
							<p>Senior blog writer</p>
							<div class="social_icon">
								<a href="#"> <i class="fab fa-facebook-f"></i>
								</a> <a href="#"> <i class="fab fa-twitter"></i>
								</a> <a href="#"> <i class="fab fa-github"></i>
								</a> <a href="#"> <i class="fab fa-behance"></i>
								</a>
							</div>
							<p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits
								detractors.</p>
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget popular_post_widget">
							<h3 class="widget_title">Popular Posts</h3>
							<div class="media post_item">
								<img src="<%=pjName%>/resources/img/blog/popular-post/post1.jpg" alt="post">
								<div class="media-body">
									<a href="single-blog.html">
										<h3>Space The Final Frontier</h3>
									</a>
									<p>02 Hours ago</p>
								</div>
							</div>
							<div class="media post_item">
								<img src="<%=pjName%>/resources/img/blog/popular-post/post2.jpg" alt="post">
								<div class="media-body">
									<a href="single-blog.html">
										<h3>The Amazing Hubble</h3>
									</a>
									<p>02 Hours ago</p>
								</div>
							</div>
							<div class="media post_item">
								<img src="<%=pjName%>/resources/img/blog/popular-post/post3.jpg" alt="post">
								<div class="media-body">
									<a href="single-blog.html">
										<h3>Astronomy Or Astrology</h3>
									</a>
									<p>03 Hours ago</p>
								</div>
							</div>
							<div class="media post_item">
								<img src="<%=pjName%>/resources/img/blog/popular-post/post4.jpg" alt="post">
								<div class="media-body">
									<a href="single-blog.html">
										<h3>Asteroids telescope</h3>
									</a>
									<p>01 Hours ago</p>
								</div>
							</div>
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget ads_widget">
							<a href="#"> <img class="img-fluid" src="<%=pjName%>/resources/img/blog/add.jpg" alt="">
							</a>
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">Post Catgories</h4>
							<ul class="list cat-list">
								<li><a href="#" class="d-flex justify-content-between">
										<p>Technology</p>
										<p>37</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Lifestyle</p>
										<p>24</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Fashion</p>
										<p>59</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Art</p>
										<p>29</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Food</p>
										<p>15</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Architecture</p>
										<p>09</p>
								</a></li>
								<li><a href="#" class="d-flex justify-content-between">
										<p>Adventure</p>
										<p>44</p>
								</a></li>
							</ul>
							<div class="br"></div>
						</aside>
						<aside class="single-sidebar-widget newsletter_widget">
							<h4 class="widget_title">Newsletter</h4>
							<p>Here, I focus on a range of items and features that we use in life without giving them a second thought.</p>
							<div class="form-group d-flex flex-row">
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">
											<i class="fa fa-envelope" aria-hidden="true"></i>
										</div>
									</div>
									<input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email'">
								</div>
								<a href="#" class="bbtns">Subcribe</a>
							</div>
							<p class="text-bottom">You can unsubscribe at any time</p>
							<div class="br"></div>
						</aside>
						<aside class="single-sidebar-widget tag_cloud_widget">
							<h4 class="widget_title">Tag Clouds</h4>
							<ul class="list">
								<li><a href="#">Technology</a></li>
								<li><a href="#">Fashion</a></li>
								<li><a href="#">Architecture</a></li>
								<li><a href="#">Fashion</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Technology</a></li>
								<li><a href="#">Lifestyle</a></li>
								<li><a href="#">Art</a></li>
								<li><a href="#">Adventure</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Lifestyle</a></li>
								<li><a href="#">Adventure</a></li>
							</ul>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area =================-->

	<!--================Instagram Area =================-->

	<!--================End Instagram Area =================-->


	<!--================ Start footer Area  =================-->
	<footer>
		<div class="footer-area">
						
				
						<div class= "ss">
						<div class="s1">
							<h4 class="footer_title large_title">고객행복센터</h4>
							<br/>
							<table>
							
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">카톡 문의</a></td>
							<td><p>월~일요일 | 오전7시~ 오후6시 </p></td>

							</tr>
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">1:1 문의</a></td>
							<td><p><p>365일 친절하게 문의 받겠습니다.</p> </p></td>

							</tr>
							<tr>
							<td class="nav-item"><a class="button button-header" href="#">대량 문의</a></td>
							<td><p>월~일요일 | 오전9시~ 오후6시 </p></td>
							
							</tr>
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
									<li class="loginli"><a class="nav-link" href="">회사소개</a></li>
									<li class="loginli"><a class="nav-link" href="">인재채용</a></li>
									<li class="loginli"><a class="nav-link" href="">이용약관</a></li>
									<li class="loginli"><a class="nav-link" href="">개인정보처리방침</a></li>
									<li class="loginli"><a class="nav-link" href="">이용안내</a></li>

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
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
</body>
</html>