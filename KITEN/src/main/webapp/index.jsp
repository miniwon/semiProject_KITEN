<%@page contentType="text/html; charset=UTF-8"%>
<% String pjName = "/KITEN"; %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>시작</title>
</head>
<body>
<%
session.invalidate();//세션의 모든 속성 제거
response.sendRedirect("/KITEN/home.do");
%>
</body>
</html>