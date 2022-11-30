<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pjName = "/KITEN";
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>KITEN - 배송지 관리</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrapAddress.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/stylej.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/footer.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->
	<!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-10">
					<div class="login_form_inner register_form_inner">
						<h3>${defaultLocation.l_name}님의 배송지 목록</h3>
						<div class="col-md-12 form-group">
							<table class="table table-bordered" id="dataTable">
								<thead>
									<tr>
										<th>수신인</th>
										<th>전화번호</th>
										<th>주소</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<%-- 											<td>
												<div class="media">
													<div class="d-flex">
														<input type="checkbox" class="locationCheckbox" name="cartCheckbox" data-locationnumber="${defaultLocation.l_number}" data-add1="${defaultLocation.l_address1}" data-add2="${defaultLocation.l_address2}">
													</div>
													<div class="media-body"></div>
												</div>
										</td> --%>
										<td style="vertical-align: middle;">${defaultLocation.l_name}</td>
										<td style="vertical-align: middle;">${defaultLocation.l_tel}</td>
										<td style="text-align: left; vertical-align: middle;">${defaultLocation.l_address1}<br>${defaultLocation.l_address2}
										</td>
										<td style="vertical-align: middle;">기본</td>
									</tr>

									<c:forEach items="${locationList}" var="list">
										<tr>
											<td style="vertical-align: middle;">${list.l_name}</td>
											<td style="vertical-align: middle;">${list.l_tel}</td>
											<td style="text-align: left; vertical-align: middle;">${list.l_address1}<br>${list.l_address2}
											</td>
											<td style="vertical-align: middle;">
												<button type="button" class="btn btn-light locationDelete" data-locationnumber="${list.l_number}" data-mnumber="${list.m_number}">×</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="col-md-12 form-group">
								<button type="button" onClick="location.href='userAddressInsert.do?m_number=${sessionScope.userNo}'" class="button button-register w-100">배송지 추가하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->



	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script src="<%=pjName%>/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/skrollr.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="<%=pjName%>/resources/vendors/mail-script.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/userAddress.js"></script>

</body>
</html>