<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@page import="org.apache.ibatis.ognl.SetPropertyAccessor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.12">


<style>
@FONT-FACE {
	font-family: 'Dohyun';
	src: url(resources/static/font/Dohyun.ttf)
}
</style>
<script type="text/javascript">

</script>

</head>

<body class="wrapper-ex">
	<div class="header-ex">
		<%@ include file="../../include/header.jspf"%>
	</div>
	<div class="content-ex">
		<div class="content-ex-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 운동법 페이지</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-ex-left">
			<%@ include file="../../include/exSidemenu.jsp"%>
		</div>
		<div class="content-ex-middle">
			<%@ include file="exSMain.jsp"%>
			
				<br><br><br><br><br><br><br>			
			
		</div>
		<div class="content-userList-right"></div>
	</div>
	<div class="footer-userList">
		<%@ include file="../../include/footer.jspf"%>
	</div>
		<%@ include file="exSmodi.jsp"%>
		<%@ include file="exSSave.jsp"%>
	
</body>
</html>  

