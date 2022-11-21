<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>상품 등록</title>

<!-- Fontfaces CSS-->
<link href="<%=pjName%>/resources/vendors/admin/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="<%=pjName%>/resources/vendors/admin/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="<%=pjName%>/resources/vendors/admin/animsition/animsition.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/wow/animate.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/slick/slick.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/select2/select2.min.css" rel="stylesheet" media="all">
<link href="<%=pjName%>/resources/vendors/admin/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="<%=pjName%>/resources/css/admin/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img src="<%=pjName%>/resources/images/icon/logo.png" alt="CoolAdmin" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-tachometer-alt"></i>Dashboard
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="index.html">Dashboard 1</a></li>
								<li><a href="index2.html">Dashboard 2</a></li>
								<li><a href="index3.html">Dashboard 3</a></li>
								<li><a href="index4.html">Dashboard 4</a></li>
							</ul></li>
						<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>Charts
						</a></li>
						<li><a href="table.html"> <i class="fas fa-table"></i>Tables
						</a></li>
						<li><a href="form.html"> <i class="far fa-check-square"></i>Forms
						</a></li>
						<li><a href="calendar.html"> <i class="fas fa-calendar-alt"></i>Calendar
						</a></li>
						<li><a href="map.html"> <i class="fas fa-map-marker-alt"></i>Maps
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-copy"></i>Pages
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forget-pass.html">Forget Password</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-desktop"></i>UI Elements
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="button.html">Button</a></li>
								<li><a href="badge.html">Badges</a></li>
								<li><a href="tab.html">Tabs</a></li>
								<li><a href="card.html">Cards</a></li>
								<li><a href="alert.html">Alerts</a></li>
								<li><a href="progress-bar.html">Progress Bars</a></li>
								<li><a href="modal.html">Modals</a></li>
								<li><a href="switch.html">Switchs</a></li>
								<li><a href="grid.html">Grids</a></li>
								<li><a href="fontawesome.html">Fontawesome Icon</a></li>
								<li><a href="typo.html">Typography</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img src="<%=pjName%>/resources/images/icon/logo.png" alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-tachometer-alt"></i>Dashboard
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="index.html">Dashboard 1</a></li>
								<li><a href="index2.html">Dashboard 2</a></li>
								<li><a href="index3.html">Dashboard 3</a></li>
								<li><a href="index4.html">Dashboard 4</a></li>
							</ul></li>
						<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>Charts
						</a></li>
						<li><a href="table.html"> <i class="fas fa-table"></i>Tables
						</a></li>
						<li class="active"><a href="form.html"> <i class="far fa-check-square"></i>Forms
						</a></li>
						<li><a href="calendar.html"> <i class="fas fa-calendar-alt"></i>Calendar
						</a></li>
						<li><a href="map.html"> <i class="fas fa-map-marker-alt"></i>Maps
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-copy"></i>Pages
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forget-pass.html">Forget Password</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-desktop"></i>UI Elements
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="button.html">Button</a></li>
								<li><a href="badge.html">Badges</a></li>
								<li><a href="tab.html">Tabs</a></li>
								<li><a href="card.html">Cards</a></li>
								<li><a href="alert.html">Alerts</a></li>
								<li><a href="progress-bar.html">Progress Bars</a></li>
								<li><a href="modal.html">Modals</a></li>
								<li><a href="switch.html">Switchs</a></li>
								<li><a href="grid.html">Grids</a></li>
								<li><a href="fontawesome.html">Fontawesome Icon</a></li>
								<li><a href="typo.html">Typography</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
							<div class="header-button">
								<div class="noti-wrap">
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
										<div class="mess-dropdown js-dropdown">
											<div class="mess__title">
												<p>You have 2 news message</p>
											</div>
											<div class="mess__item">
												<div class="image img-cir img-40">
													<img src="<%=pjName%>/resources/images/icon/avatar-06.jpg" alt="Michelle Moreno" />
												</div>
												<div class="content">
													<h6>Michelle Moreno</h6>
													<p>Have sent a photo</p>
													<span class="time">3 min ago</span>
												</div>
											</div>
											<div class="mess__item">
												<div class="image img-cir img-40">
													<img src="<%=pjName%>/resources/images/icon/avatar-04.jpg" alt="Diane Myers" />
												</div>
												<div class="content">
													<h6>Diane Myers</h6>
													<p>You are now connected on message</p>
													<span class="time">Yesterday</span>
												</div>
											</div>
											<div class="mess__footer">
												<a href="#">View all messages</a>
											</div>
										</div>
									</div>
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
										<div class="email-dropdown js-dropdown">
											<div class="email__title">
												<p>You have 3 New Emails</p>
											</div>
											<div class="email__item">
												<div class="image img-cir img-40">
													<img src="<%=pjName%>/resources/images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
												</div>
												<div class="content">
													<p>Meeting about new dashboard...</p>
													<span>Cynthia Harvey, 3 min ago</span>
												</div>
											</div>
											<div class="email__item">
												<div class="image img-cir img-40">
													<img src="<%=pjName%>/resources/images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
												</div>
												<div class="content">
													<p>Meeting about new dashboard...</p>
													<span>Cynthia Harvey, Yesterday</span>
												</div>
											</div>
											<div class="email__item">
												<div class="image img-cir img-40">
													<img src="<%=pjName%>/resources/images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
												</div>
												<div class="content">
													<p>Meeting about new dashboard...</p>
													<span>Cynthia Harvey, April 12,,2018</span>
												</div>
											</div>
											<div class="email__footer">
												<a href="#">See all emails</a>
											</div>
										</div>
									</div>
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
										<div class="notifi-dropdown js-dropdown">
											<div class="notifi__title">
												<p>You have 3 Notifications</p>
											</div>
											<div class="notifi__item">
												<div class="bg-c1 img-cir img-40">
													<i class="zmdi zmdi-email-open"></i>
												</div>
												<div class="content">
													<p>You got a email notification</p>
													<span class="date">April 12, 2018 06:50</span>
												</div>
											</div>
											<div class="notifi__item">
												<div class="bg-c2 img-cir img-40">
													<i class="zmdi zmdi-account-box"></i>
												</div>
												<div class="content">
													<p>Your account has been blocked</p>
													<span class="date">April 12, 2018 06:50</span>
												</div>
											</div>
											<div class="notifi__item">
												<div class="bg-c3 img-cir img-40">
													<i class="zmdi zmdi-file-text"></i>
												</div>
												<div class="content">
													<p>You got a new file</p>
													<span class="date">April 12, 2018 06:50</span>
												</div>
											</div>
											<div class="notifi__footer">
												<a href="#">All notifications</a>
											</div>
										</div>
									</div>
								</div>
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">
										<div class="image">
											<img src="<%=pjName%>/resources/images/icon/avatar-01.jpg" alt="John Doe" />
										</div>
										<div class="content">
											<a class="js-acc-btn" href="#">john doe</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img src="<%=pjName%>/resources/images/icon/avatar-01.jpg" alt="John Doe" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a href="#">john doe</a>
													</h5>
													<span class="email">johndoe@example.com</span>
												</div>
											</div>
											<div class="account-dropdown__body">
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-account"></i>Account
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-settings"></i>Setting
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-money-box"></i>Billing
													</a>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="#"> <i class="zmdi zmdi-power"></i>Logout
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<strong>상품 등록</strong>
									</div>
									<div class="card-body card-block">
										<form action="productInsert.do" method='post' enctype="multipart/form-data" class="form-horizontal" id="productinput" name="productinput">
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">상품명</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_name" name="p_name" placeholder="상품명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="select" class=" form-control-label">상품 카테고리</label>
												</div>
												<div class="col-12 col-md-9">
													<select name="categoryname" id="categoryname" class="form-control">
														<option value="한식">한식</option>
														<option value="분식">분식</option>
														<option value="양식">양식</option>
														<option value="중식">중식</option>
														<option value="일식">일식</option>
														<option value="동남아">동남아</option>
														<option value="기타">기타</option>
													</select>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="p_price" class=" form-control-label">상품 가격</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="number" id="p_price" name="p_price" placeholder="상품 가격을 입력해 주세요" class="form-control" step="10"> <small class="form-text text-muted">숫자만 입력 가능합니다 (단위: 원)</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="p_stock" class=" form-control-label">상품 재고</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="number" id="p_stock" name="p_stock" placeholder="상품 재고를 입력해 주세요" class="form-control" step="1"> <small class="form-text text-muted">숫자만 입력 가능합니다 (단위: 개)</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">상품 상태</label>
												</div>
												<div class="col col-md-9">
													<div class="form-check">
														<div class="radio">
															<label for="p_state1" class="form-check-label "> <input type="radio" id="p_state1" name="p_state" value="1" class="form-check-input">판매 중
															</label>
														</div>
														<div class="radio">
															<label for="p_state2" class="form-check-label "> <input type="radio" id="p_state2" name="p_state" value="2" class="form-check-input">품절(재입고 대기 중)
															</label>
														</div>
														<div class="radio">
															<label for="p_state3" class="form-check-label "> <input type="radio" id="p_state3" name="p_state" value="3" class="form-check-input" checked>판매 중지
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">브랜드</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_brand" name="p_brand" placeholder="브랜드명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">중량/용량</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_weight" name="p_weight" placeholder="중량 혹은 용량을 입력해 주세요" class="form-control"> <small class="form-text text-muted">그램수와 인분 모두 입력 가능합니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">설명</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_shortcontent" name="p_shortcontent" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가
														모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">조리 시간</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_time" name="p_time" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">보관 방법</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_storage" name="p_storage" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">유통기한</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_due" name="p_due" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">재료 목록</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_list" name="p_list" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">알레르기 유발 정보</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text" id="p_allergy" name="p_allergy" placeholder="상세 페이지에 출력될 설명을 입력해 주세요" class="form-control"> <small class="form-text text-muted">특수 문자와 띄어쓰기가 모두 입력됩니다</small>
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="file-input" class=" form-control-label">상품 이미지</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="file" id="p_list_image" name="p_list_image" class="form-control-file">
												</div>
											</div>
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="file-input" class=" form-control-label">상품 상세 이미지</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="file" id="p_detail_image" name="p_detail_image" class="form-control-file">
												</div>
											</div>
											<div class="card-footer">
												<button type="submit" id="productSubmit" class="btn btn-primary btn-sm">
													<i class="fa fa-dot-circle-o"></i> Submit
												</button>
												<button type="reset" class="btn btn-danger btn-sm">
													<i class="fa fa-ban"></i> Reset
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="copyright">
								<p>
									Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>

	<!-- Jquery JS-->
	<script src="<%=pjName%>/resources/vendors/admin/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="<%=pjName%>/resources/vendors/admin/bootstrap-4.1/popper.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="<%=pjName%>/resources/vendors/admin/slick/slick.min.js">
		
	</script>
	<script src="<%=pjName%>/resources/vendors/admin/wow/wow.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/animsition/animsition.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script src="<%=pjName%>/resources/vendors/admin/counter-up/jquery.waypoints.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/counter-up/jquery.counterup.min.js">
		
	</script>
	<script src="<%=pjName%>/resources/vendors/admin/circle-progress/circle-progress.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/chartjs/Chart.bundle.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/admin/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="<%=pjName%>/resources/js/main_admin.js"></script>
</body>

</html>
<!-- end document-->
