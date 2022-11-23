<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/KITEN";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>KITEN - 로그아웃</title>
<link rel="icon" href="<%=pjName%>/resources/img/Fevicon.png" type="image/png">
</head>
<body>
<!-- 로그아웃 처리 -->
<% session.invalidate();//세션의 모든 속성 제거
response.sendRedirect("/KITEN/home.do"); %>
</body>
</html>