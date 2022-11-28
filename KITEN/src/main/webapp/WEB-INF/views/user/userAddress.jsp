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
<title>KITEN - 회원 정보 수정</title>
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
						<h3>배송지</h3>
						<form class="row login_form" action="userAddressDelete.do" id="usermodify" name="usermodify" method="post">
							<div class="col-md-12 form-group">
							   <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							   <thead>
								  <tr>
                                            <th>선택</th>
                                            <th>배송정보</th>
                                            <th>수정</th>
                                        </tr>
                                        
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${list}" var="list">
                                        <tr>
                                        	<td>
										<div class="media">
											<div class="d-flex">
												<input type="checkbox" class="check1 cartCheckbox" name="cartCheckbox" >
											</div>
											<div class="media-body">
												
											</div>
										</div>
									</td>
									<td>
									<p>${list.l_address1}${list.l_address2}</p>
									<input type="hidden" value= "${list.l_number}"  id= "l_number" name="l_number">
									<input type="hidden" value="${sessionScope.userNo}" id= "m_number" name="m_number">
									</td>
									<td>
										<input value= "X" type= "submit" class="close locationDelete" onclick="location.href='userAddressDelete.do'"></button>
									</td>
									</tr>
									</c:forEach>
									
                                        
                                        
                                        </tbody>
                                        </table>
								
<!-- 							<div class="col-md-12 form-group"> -->
<!-- 								<div class="form-label-div"> -->
<!-- 									<label class="form-label" for="address1">주소</label> -->
<!-- 								</div> -->
<%-- 								<input type="text" class="form-control" id="m_address1" value = '${member.m_address1}' name="m_address1" placeholder="주소 검색을 위해 클릭해 주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '주소 검색을 위해 클릭해 주세요'"> --%>
<!-- 								<div class="form-button"></div> -->
<!-- 							</div> -->
							<div class="col-md-12 form-group">
								<button type="button" onClick="location.href='userAddressInsert.do'" class="button button-register w-100" >배송지 추가하기 </button>
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
					.getElementById("m_address1")
					.addEventListener(
							"click",
							function() { //주소입력칸을 클릭하면
								//카카오 지도 발생
								new daum.Postcode(
										{
											oncomplete : function(data) { //선택시 입력값 세팅
												document
														.getElementById("m_address1").value = data.address; // 주소 넣기
												document
														.querySelector(
																"input[name=m_address2]")
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
	<script src="<%=pjName%>/resources/js/userModify.js"></script>

</body>
</html>