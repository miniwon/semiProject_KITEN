<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>    
<% String pjName = "/KITEN"; %>
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
            
                        <div class="row">
                     
                                                    </div>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">All Properties</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small" >
                                        <a href="/KITEN/admin/productRegister.do">
                                       
                                            <i class="zmdi zmdi-plus"></i>add item </a></button>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2" name="type">
                                                <option selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive table-responsive-data2">
                                    
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        <div class="row m-t-30">
                            <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <thead>
                                            <tr>
                                            	<th></th>
                                                <th>상품번호</th>
                                                <th>상품이름</th>
                                                <th>재고</th>
                                                <th class="text-right">상품가격</th>
                                                <th class="text-right">상품상태</th>
                                                <th class="text-right">브랜드</th>
                                                <th class="text-right">카테고리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	
                                            <c:forEach items='${list}' var='product'>
                                            
                                             
                                             <tr>
                                             <td class="checkbox">
                                                        <input type="checkbox">
                                                        
                                                    </td>
                                                <td>${product.p_number}</td>
                                                <td>${product.p_name}</td>
                                                <td>${product.p_stock}</td>
                                                <td class="text-right">${product.p_price}</td>
                                                <td class="text-right">${product.p_state}</td>
                                                <td class="text-right">${product.p_brand}</td>
                                                 <td class="text-right">${product.categoryname}</td>
                                                 <td class="table-data-feature">
                         
                                                        <button id = "eItem" class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <a href="productDelete.do?p_number=${product.p_number}"> 
                                                        <button  class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>                    
                                                        </button>
                                                     	</a>
                                                      
                                               
                                                    </td>
                                                 
                                            </tr></c:forEach>  
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
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
    <script src="<%=pjName%>/resources/js/adminModify.js"></script>

</body>

</html>
<!-- end document-->
    