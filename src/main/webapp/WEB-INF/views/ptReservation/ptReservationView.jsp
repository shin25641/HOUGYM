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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/agency_2.css?version-1.3.11">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css">

</head>

<body style="background-color: black;">
	<div class="header-pt">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div>
		<div class="content-pt-top ">
			<h1 class="h1-locker" style="font-family: dohyun;"> 실시간 PT 예약</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-pt-left ">
		
		</div>
		<div class="container-lecture">
    <section class="header">
    </section>
    <section class="section-nav">
        <form id="search-form" class="form-search">
            <input type="text" placeholder="종목 검색" class="form-control">
            <span><i class="material-icons ic-search">search</i></span>
        </form>
		<c:forEach var="Udto" items="${trainerList }">
	        <ul class="list-lecture">
	            <li class="card-lecture" data-toggle="modal" data-target="#ptmodal" data-whatever="${Udto.userName }">
	                <a class="lecture-title" href="#">${Udto.userName }</a>
	                <h6 class="lecture-time">
	                    <i class="material-icons ic-lecture-info">access_time</i>
	                    <span>09:00 - 10:50 | (월), (수)</span>
	                </h6>
	                <ul class="list-lecture-info">
	                    <li>성별 : ${Udto.userSex }</li>
	                    <li>종목 : 헬스</li>
	                    <li>경력 : 5년</li>
	                    <li>직책 : 퍼스널트레이너</li>
	                </ul>
	            </li>
	         </ul>
		</c:forEach>
    </section>

    <section class="section-list">
        <div class="container-xl">
            <div class="table-schedule">
                <div class="timeline">
                    <ul>
                        <li><span>09:00</span></li>
                        <li><span>09:30</span></li>
                        <li><span>10:00</span></li>
                        <li><span>10:30</span></li>
                        <li><span>11:00</span></li>
                        <li><span>11:30</span></li>
                        <li><span>12:00</span></li>
                        <li><span>12:30</span></li>
                        <li><span>13:00</span></li>
                        <li><span>13:30</span></li>
                        <li><span>14:00</span></li>
                        <li><span>14:30</span></li>
                        <li><span>15:00</span></li>
                        <li><span>15:30</span></li>
                        <li><span>16:00</span></li>
                        <li><span>16:30</span></li>
                        <li><span>17:00</span></li>
                        <li><span>17:30</span></li>
                        <li><span>18:00</span></li>
                    </ul>
                </div>

                <div class="table-schedule-subject">
				    <div class="content-pt-middle">
						
					</div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="ptmodal" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
            	<input type="text" class="form-data_1">
                <h3 class="lecture-title">웹 프로그래밍</h3>
                <ul class="lecture-info">
                    <li class="lecture-time">
                        <i class="material-icons ic-lecture-info">access_alarm</i>
                        <span>강의 시간 : 09:00 - 10:50 | (월), (수)</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">code</i>
                        <span>교과목 코드 : A0000001</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">school</i>
                        <span>담당 교수 : 김진수</span>
                    </li>
                    <li class="lecture-code">
                        <i class="material-icons ic-lecture-info">business</i>
                        <span>강의실 : 공학관 204</span>
                    </li>
                </ul>
                <div class="lecture-description">
                    <p class="txt-description">본 강의에서는 JSP를 이용한 웹 기반 프로그래밍 기초 및 응용기술에 대해 학습합니다. 특히 실습 위주의 수업으로 프로그래밍 스킬 향상 및
                        실무 능력을 갖출 수 있도록 합니다.
                    </p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary">과목 등록하기</button>
            </div>
        </div>
    </div>
</div>
        
    </section>
</div>
		</div>
		<div class="content-pt-right"></div>
	<script type="text/javascript"></script>
	<div class="footer">	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	</div>
	<script type="text/javascript">
$('#ptmodal').on('show.bs.modal', function (event) {
	  var button = $(event.relatedTarget)
	  var recipient_1 = button.data('data-whatever')
	  var modal = $(this)
	  modal.find('.modal-body .form-data_1').val(recipient_1)
	})
</script>
</body>
</html>
