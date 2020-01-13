<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.health.dao.lockerDAO" %>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency.css?version-1.3.10">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">

</head>

<body class="wrapper-lockerView" style="background-color: #111111;">
	<div class="header-lockerView">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-locker">
		<div class="content-locker-top" style="margin-bottom: 60px;">
			<h1 class="h1-locker" style="font-family: dohyun;"> 개인락카 관리</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-locker-lable">
			<div style="text-align: right;">
			 	<button class="locker-btn-lable-no" type="button" ></button>
			</div>
			<div>
				<p style="color: white;">예약 가능한 락카</p>
			</div>
			<div style="text-align: right;">
				<button class="locker-btn-lable-ok" type="button" ></button>
			</div>
			<div>
				<p style="color: white;">예약 불가능한 락카</p>
			</div>
		</div>
		<div class="content-locker-middle" style="font-size: 1.5rem;">
			<c:forEach var="Ldto" items="${lockerNum }">
				<c:choose>
					<c:when test="${Ldto.lockerCheck eq 1}">
						<button class="locker-btn-ok" type="button" data-toggle="modal" data-target="#lockerOkModal" 
						data-whatever_1="${Ldto.lockerNum }" data-whatever_2="${Ldto.lockerName }" data-whatever_3="${Ldto.lockerStartDate }"
						data-whatever_4="${Ldto.lockerEndDate }">${Ldto.lockerNum }</button>
						
					</c:when>
					<c:otherwise>
						<button class="locker-btn-no" type="button" data-toggle="modal" data-target="#lockerNoModal" data-whatever="${Ldto.lockerNum }">${Ldto.lockerNum }</button>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
		<div class="content-locker-bottom"></div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
		<%@ include file="lockerModal.jsp" %>	
</body>
</html>
