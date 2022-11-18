<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Cart</title>
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
               <a class="navbar-brand logo_h" href="index.html"><img src="<%=pjName%>/resources/img/logo.png" alt=""></a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
               </button>
               <!-- .navbar-brand logo_h랑 겹쳐 있는 애? -->
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
	
	<!-- ================ end banner area ================= -->



	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
						<tr>
						
						<td ><input type="checkbox" class="check1" value="check1" checked>&nbsp전체 선택
						 </td>
						
						</tr>
							<tr>
								<th scope="col">상품</th>
								<th scope="col">가격</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
										    <input type="checkbox" class="check1" value="check1" checked>
										    	
											<img src="<%=pjName%>/resources/img/cart/cart1.png" alt="">
										</div>
										<div class="media-body">
											<p>귀엽게 생긴 것 </p>
										</div>
									</div>
								</td>
								<td>
									<h5>36,000원</h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="reduced items-count"
											type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>36,000원 <button class=close> </button></h5>
								</td>
				
							</tr>
							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
										<input type="checkbox" class="check1" value="check1" checked>
											<img src="<%=pjName%>/resources/img/cart/cart2.png" alt="">
										</div>
										<div class="media-body">
											<p>신발이지롱</p>
										</div>
									</div>
								</td>
								<td>
									<h5>36,000원</h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="reduced items-count"
											type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>36,000원 <button class=close> </button></h5>
								</td>
								
							</tr>
							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
										<input type="checkbox" class="check1" value="check1" checked>
											<img src="<%=pjName%>/resources/img/cart/cart3.png" alt="">
										</div>
										<div class="media-body">
											<p>차지롱</p>
										</div>
									</div>
								</td>
								<td>
									<h5>36,000원 </h5>
								</td>
								<td>
									<div class="product_count">
										<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="increase items-count" type="button">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="reduced items-count"
											type="button">
											<i class="lnr lnr-chevron-down"></i>
										</button>
									</div>
								</td>
								<td>
									<h5>36,000원 <button class=close> </button></h5>
								</td>

							</tr>
							<tr class="bottom_button">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								
								<td>
									<div class="cupon_text d-flex align-items-center" >
										 <a class="btn" href="#">선택주문</a> <a class="primary-btn" href="#" style="float: right">전체주문</a>
									</div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								
								<td></td>
								<td>

								</td>
								<td>
									<h5></h5>
								</td>
							</tr>
							<tr class="shipping_area">
								<td class="d-none d-md-block"></td>
								
								<td></td>
								<td class="t_name">
								<p> &nbsp상품 금액</p> 
								<p> &nbsp배송비 </p>
								<p> &nbsp결제 예정 금액</p>
								</td>
								
								<td class="t_value">
								
								<p>30,000 원</p> 
								<p>3,000 원</p> 
								<p>33,000 원</p> 
								
								</td>
							</tr>
							<tr class="bottom_button">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								
								<td>
									<div class="cupon_text d-flex align-items-center" >
										 <a class="btn" href="#">쇼핑 하기</a> <a class="primary-btn" href="#" style="float: right">메인 화면</a>
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