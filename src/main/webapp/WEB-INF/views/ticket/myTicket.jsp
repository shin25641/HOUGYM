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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">

<style>
@FONT-FACE {
	font-family: 'Dohyun';
	src: url(resources/static/font/Dohyun.ttf)
}
</style>

</head>

<body class="wrapper-ticket" style="background-color: #111111;">
   <div class="header-ticket">
      <%@ include file="../include/header.jspf"%>
   </div>
   <div class="content-ticket">
      <div class="content-ticket-top">
         <h1 class="h1-locker" style="font-family: dohyun;">내 회원권 관리</h1>
         <hr class="hr-locker" align="left">
      </div>
      <div class="content-ticket-left">
         <%@ include file="../include/myPageSidemenu.jsp"%>
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