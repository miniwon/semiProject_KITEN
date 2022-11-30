<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Tables</title>

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
						<a class="logo" href="index.html" name="logo"> <img src="<%=pjName%>/resources/images/icon/logo.png" alt="Cool Admin" />
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
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-table"></i>Table
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="/KITEN/admin/memberTable.do">MEMBER TABLE</a></li>
								<li><a href="/KITEN/admin/productTable.do">PRODUCT TABLE</a></li>
							</ul></li>
						<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>Charts
						</a></li>
					
							
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
						<li class="has-sub"><a class="js-arrow" href="#"> <i class="fas fa-tachometer-alt"></i>테이블
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="/KITEN/admin/memberTable.do">멤버 테이블</a></li>
								<li><a href="/KITEN/admin/productTable.do">상품 테이블</a></li>
							</ul></li>
						<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>차트
						</a></li>	
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			
			<!-- END HEADER DESKTOP-->

			<!-- MAIN CONTENT-->

		
					<!-- DATA TABLE-->
					<div class="table-responsive m-b-40">
						<table class="table table-borderless table-data3">
							<thead>
								<tr>
									<th></th>
									<th>회원번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th class="text-right">전화번호</th>
									<th class="text-right">주소지</th>
									<th class="text-right">상세주소</th>
									<th class="text-right">이메일</th>
									<th class="text-right"></th>
								</tr>
							</thead>

							<tbody>

								<c:forEach items='${list}' var='member'>


									<form action="memberDelete.do" id="memberModify" name="memberModify">
										<tr>
											<td class="checkbox"><input type="checkbox"></td>
											<td><input value="${member.m_number}" id="m_number" name="m_number"></td>
											<td><input value="${member.m_id}" id="m_id" name="m_id"></td>
											<td><input value="${member.m_name}" id="m_name" name="m_name"></td>
											<td class="text-right"><input value="${member.m_tel}" id="m_tel" name="m_tel"></td>
											<td class="text-right"><input value="${member.m_address1}" id="m_address1" name="m_address1"></td>
											<td class="text-right"><input value="${member.m_address2}" id="m_address2" name="m_address2"></td>
											<td class="text-right"><input value="${member.m_email}" id="m_email" name="m_email"></td>
											<td class="table-data-feature">
												<button id="eItem" class="item" data-toggle="tooltip" data-placement="top" title="Edit" value="submit">
													<i class="zmdi zmdi-edit"></i>
												</button> 
													<button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
														<i class="zmdi zmdi-delete"></i>
													</button>
											</a>
											</td>
										</tr>
									</form>
								</c:forEach>
							</tbody>

						</table>
					</div>
					<!-- END DATA TABLE-->
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
	<script src="<%=pjName%>/resources/js/adminModify.js"></script>

</body>

</html>
<!-- end document-->
