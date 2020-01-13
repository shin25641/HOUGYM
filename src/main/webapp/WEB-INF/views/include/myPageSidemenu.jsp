<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.nav-link-action {
	background-color: black;
}
.nav-link-action:hover {
	color: black;
	background-color: #fe6000;
}
</style> 
		<div class="sidemenu">
				<ul class="nav flex-column">
				  <li class="nav-item nav-link-action">
				    <a class="nav-link" href="mypage" style="color:white; background-color: #111111;">회원관리</a>
				  </li>
				  <li class="nav-item nav-link-action">
				    <a class="nav-link" href="myTicket" style="color:white; background-color: #111111;" >내 회원권 보기</a>
				  </li>
				  <li class="nav-item nav-link-action">
				    <a class="nav-link" href="#" style="color:white; background-color: #111111;">내 질문 보기</a>
				  </li>
				  <c:if test="${Admin eq 1 }">
					  <li class="nav-item nav-link-action" >
					    <a class="nav-link" href="trainerList" style="color:white; background-color: #111111;">트레이너 리스트</a>
					  </li>
					  <li class="nav-item nav-link-action">
					    <a class="nav-link" href="userList" style="color:white; background-color: #111111;">회원 리스트</a>
					  </li>
				  </c:if>
				</ul>
			</div>