<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.13.11">
<style>
@FONT-FACE {
	font-family: 'Dohyun';
	src: url(resources/static/font/Dohyun.ttf)
}
</style>
</head>
<body class="wrapper" style="background-image: url('resources/static/img/배경.png'); background-size: contain; background-color: #111111;">
	<div class="header">
		<%@ include file="include/header.jspf"%>
	</div>
	<div class="content">
		<%@ include file="mainView/mainContent.jsp"%>
	</div>
	<div class="content-profile">
		<div class="content-profile-left"></div>
		<div class="content-profile-middle">
			<div class="content-profile-middle-item1">
				<%@ include file="mainView/mainAbout.jsp"%>
			</div>
			<div class="content-profile-middle-item2">
				<%@ include file="mainView/mainProfile.jsp"%>
			</div>
		</div>
		<div class="content-profile-right"></div>
	</div>
	
	<div class="footer">
		<%@ include file="include/footer.jspf"%>
	</div>	
</body>
</html>
