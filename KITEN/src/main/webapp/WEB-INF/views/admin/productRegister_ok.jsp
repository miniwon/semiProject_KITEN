<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 성공</title>
</head>
<body>
	${message}
	 <!-- ${pageContext.request.contextPath}: 톰캣 Module에서 설정한 Path 이름을 가져오는 jsp 문법 -->
	<a href='${pageContext.request.contextPath}/admin/productRegister.do'>더 등록하러 가기</a>
</body>
</html>