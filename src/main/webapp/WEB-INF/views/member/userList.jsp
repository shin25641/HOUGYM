<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.health.dao.userDAO" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css?version-1.3.4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css?version-1.3.5">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.css?version-1.3.6">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-reboot.min.css?version-1.3.7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">
</head>

<body class="wrapper-userList" style="background-color: #111111;">
	<div class="header-userList">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-userList">
		<div class="content-userList-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 회원 관리</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-userList-left">
			<%@ include file="../include/myPageSidemenu.jsp"%>
		</div>
		<div class="content-userList-middle">
			<table class="table table-striped table-dark" style="background-color: #030404">
					<thead>
						<tr>
							<th scope="col" class="boardTitle" style="color: #fe6000;">아이디</th>
							<th style="color: #fe6000;">이름</th><th style="color: #fe6000;">나이</th>
							<th style="color: #fe6000;">가입날짜</th><th style="color: #fe6000;">성별</th>
						</tr>
					</thead>
							<tbody>
									<c:forEach var="Udto" items="${userList }">
								<tr>
										<th scope="row">${Udto.userId }</th>
										<td>
										<a href="#userInfoModal" data-toggle="modal"
										data-info_1="${Udto.userId }" data-info_2="${Udto.userName }"
										data-info_3="${Udto.userAge }" data-info_4="${Udto.userSex }"
										data-info_5="${Udto.userEmail}" data-info_6="${Udto.userRegDate}"
										data-info_7="${Udto.userHeight}" data-info_8="${Udto.userWeight}">${Udto.userName }</a></td>
										<td>${Udto.userAge }</td>
										<td>${Udto.userRegDate }</td>
										<td>${Udto.userSex }</td>
								</tr>
									</c:forEach>
							</tbody>
					<tfoot>
						<tr>
							<td colspan="5" align="right">
								<c:choose>
									<c:when test="${param.start == null }">
										<c:set var="start" value="1"  scope = "session"/>
									</c:when>
									<c:otherwise>
										<c:set var="start" value="${param.start }" scope = "session"/>
									</c:otherwise>
								</c:choose>
								<nav aria-label="Page navigation example">
								  <ul class="pagination" style="width: 100px;margin-left: auto; margin-right: auto;">
									<c:choose>
										<c:when test="${start > 1 }">
										    <li class="page-item">
										      <a class="page-link" href="userList?start=${start-1 }" aria-label="Previous">
										        <span aria-hidden="true">&laquo;</span>
										      </a>
										    </li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
										      <a class="page-link" href="#" aria-label="Previous">
										        <span aria-hidden="true">&laquo;</span>
										      </a>
										    </li>
										</c:otherwise>
									</c:choose>
								    <c:forEach begin="1" end="${pc.totEndPage }" step="1" var="cnt">
									    <li class="page-item"><a class="page-link" href="userList?start=${cnt }">${cnt }</a></li>
								    </c:forEach>
								    <c:choose>
								    	<c:when test="${start < pc.totEndPage }">
										    <li class="page-item">
										      <a class="page-link" href="userList?start=${start+1 }" aria-label="Next">
										        <span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
								    	</c:when>
								    	<c:otherwise>
									    	<li class="page-item">
										      <a class="page-link" href="#" aria-label="Next">
										        <span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>		    		
								    	</c:otherwise>
								    </c:choose>
								  </ul>
								</nav>
							</td>
						</tr>
					</tfoot>
			</table>
		</div>
		<div class="content-userList-right"></div>
	</div>
	<div class="footer-userList">
		<%@ include file="../include/footer.jspf"%>
	</div>
		<%@ include file="userInfoModal.jsp" %>		
</body>
</html>  



