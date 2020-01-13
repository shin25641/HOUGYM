<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css">
</head>

<body class="wrapper-ticket" style="background-color: #111111;">
	<div class="header-ticket">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-ticket">
		<div class="content-ticket-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 회원권 구매</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-ticket-left">
			<div class="container-lecture">
			    <section class="header">
			        <h3 class="headline" style="font-family: dohyun; color:white;">회원권 구매 목록</h3>
			    </section>
			    <section class="section-nav">
			        <form id="search-form" class="form-search">
			            <input type="text" placeholder="회원권 검색" class="form-control">
			            <span><i class="material-icons ic-search">search</i></span>
			        </form>
				<c:forEach var="Tdto" items="${ticketlist}">
			        <ul class="list-lecture"  data-target="#ticketModal" data-toggle="modal"
										data-whatever_1="${Tdto.ticketDuration}"
										data-whatever_2="${sessionScope.user_name}"
										data-whatever_3="${sessionScope.user_id}"
										data-whatever_4="${Tdto.ticketPrice}">
			            <li class="card-lecture" >
			                <a class="lecture-title" href="#">${Tdto.ticketDuration}개월권</a>
			                <h6 class="lecture-time" style="color:#ff6000;">
			                	<span>${Tdto.ticketPrice}원</span>
			                </h6>
			                <ul class="list-lecture-info" style="color: white;">
			                    <li>운동종목 : 헬스</li>
			                    <li>담당 트레이너 : 김승호</li>
			                    <li>직급 : 마스터 트레이너</li>
			                </ul>
			            </li>
			        </ul>
			     </c:forEach>
			    </section>
			</div>
		</div>
		<div class="content-ticket-middle">
			<div class="card" style="background-color:rgba(11,11,11, 0);">
	              <div class="card-body">
	                <h3 class="card-title" style="font-family:dohyun; color:white;"><span style="font-family:dohyun; color: #fe6000;">${user_id }</span>님 구입한 회원권 목록</h3>
	              </div>
	              <!-- 티켓정보 가져오기 -->
	              <div style="padding-bottom: 25px;">
	                 <%@ include file="ticketInfo.jsp"%>
	              </div>
	         </div>
		</div>
		<div class="content-ticket-right"></div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
		<%@ include file="ticketModal.jsp"%>
		

</body>
</html>

