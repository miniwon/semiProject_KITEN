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
<title>KITEN - 배송지 추가</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">

<link rel="stylesheet" href="<%=pjName%>/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="<%=pjName%>/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet" href="<%=pjName%>/resources/css/styleLocation.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/footer.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->
	<!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
					<div class="login_form_inner register_form_inner">
						<h3>배송지 추가</h3>
						<form class="row login_form" action="userAddressInsert_ok.do" id="userAddressInsert" name="userAddressInsert">
							<div class="col-md-12 form-group">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<div class="col-md-12 form-group">
										<div class="form-label-div">
											<label class="form-label" for="l_name">수신인 이름</label>
										</div>
										<input type="text" class="form-control" id="l_name" name="l_name" placeholder="이름을 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름을 입력해 주세요'">
										<div class="form-button"></div>
									</div>
									<div class="col-md-12 form-group">
										<div class="form-label-div">
											<label class="form-label" for="l_tel">수신인 전화번호</label>
										</div>
										<input type="text" class="form-control" id="l_tel" name="l_tel" placeholder="-을 제외한 숫자만 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '-을 제외한 숫자만 입력해 주세요'">
										<div class="form-button"></div>
									</div>
									<div class="col-md-12 form-group">
										<div class="form-label-div">
											<label class="form-label" for="l_address1">주소</label>
										</div>
										<input type="text" class="form-control" id="l_address1" name="l_address1" placeholder="주소 검색을 위해 클릭해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '주소 검색을 위해 클릭해 주세요'">
										<div class="form-button"></div>
									</div>
									<div class="col-md-12 form-group">
										<div class="form-label-div">
											<label class="form-label" for="l_address2">상세 주소</label>
										</div>
										<input type="text" class="form-control" id="l_address2" name="l_address2" placeholder="상세 주소를 입력해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '상세 주소를 입력해 주세요'">
										<div class="form-button"></div>
									</div>
									<div class="col-md-12 form-group">
										<input type="hidden" class="form-control" id="m_number" name="m_number" placeholder="" value="${sessionScope.userNo}">
										<div class="form-button"></div>
									</div>
									<div class="col-md-12 form-group">
										<input type="button" value="추가하기" id="l_submit" class="button button-register w-100">
									</div>
								</table>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->



	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function() {
			document
					.getElementById("l_address1")
					.addEventListener(
							"click",
							function() { //주소입력칸을 클릭하면
								//카카오 지도 발생
								new daum.Postcode(
										{
											oncomplete : function(data) { //선택시 입력값 세팅
												document
														.getElementById("l_address1").value = data.address; // 주소 넣기
												document
														.querySelector(
																"input[name=l_address2]")
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
	<script src="<%=pjName%>/resources/js/userAddressInsert.js"></script>
</body>
</html>