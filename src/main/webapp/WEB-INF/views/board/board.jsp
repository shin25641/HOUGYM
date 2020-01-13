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
<script>
	function writechk() {
<%String name = (String) session.getAttribute("user_id");
			if (name == null) {%>
	alert('로그인이 필요합니다! 로그인 페이지로 이동합니다');
		location.href = "login";
<%} else {%>
	location.href = "boardwrite";
<%}%>
	}
</script>
</head>

<body class="wrapper-trainerList" style="background-color: #111111;">
	<div class="header-trainerList">
		<%@ include file="../include/header.jspf"%>
	</div>
	<div class="content-trainerList">
		<div class="content-trainerList-top">
			<h1 class="h1-locker" style="font-family: dohyun;"> 게시판</h1>
			<hr class="hr-locker" align="left" >
		</div>
		<div class="content-trainerList-left"></div>
		<div class="content-trainerList-middle">
			<table class="table table-striped table-dark" style="background-color: #030404">
					<thead>
						<tr>
							<th scope="col" class="boardTitle" style="color: #fe6000;">번호</th>
							<th style="color: #fe6000;">조회수</th>
							<th style="color: #fe6000;">제목</th>
							<th style="color: #fe6000;">작성자</th>
							<th style="color: #fe6000;">작성일시</th>
							
						</tr>
					</thead>
							<tbody>
								<c:forEach var="Bdto" items="${boardList}">
										<c:choose>
											<c:when test="${Bdto.secret eq 1}">
												<c:choose>
													<c:when
														test="${sessionScope.Admin gt 0 || Bdto.name eq sessionScope.user_id}">
														<tr>
															<th scope="row">${Bdto.num}</th>
															<td>${Bdto.hit}</td>
															<td><a href=boardview?num=${Bdto.num}
																style="color: white; text-decoration: none;">[비밀글]${Bdto.title}</a></td>
															<td>${Bdto.name}</td>
															<td>${Bdto.postdate}</td>
														</tr>
													</c:when>
													<c:otherwise>
														<tr>
															<td>${Bdto.num}</td>
															<td>${Bdto.hit}</td>
															<td>[비밀글 입니다]</td>
															<td>${Bdto.name}</td>
															<td>${Bdto.postdate}</td>
														</tr>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<tr>
													<td>${Bdto.num}</td>
													<td>${Bdto.hit}</td>
													<td><a href=boardview?num=${Bdto.num}
														style="color: white; text-decoration: none;">${Bdto.title}</a></td>
													<td>${Bdto.name}</td>
													<td>${Bdto.postdate}</td>
												</tr>
											</c:otherwise>
										</c:choose>
									</c:forEach>
							</tbody>
					<tfoot>
						<tr>
							<td>
								<button type="button" class="btn btn-primary" onClick="writechk()">글작성</button>
							</td>
							<td colspan="3">
								<div style="text-align: center;">
									<form action="searchchk">
										<select name="searchtype">
											<option value="title">제목</option>
											<option value="name">이름</option>
											<option value="content">내용</option>
										</select>
										<input type="text" class="gray_textbox"
											name="value" style="width: 50%;">
										<input type="button" class="orange_btn" value="검색" style="width: 55px;" onclick="form.submit()">
									</form>
								</div>
							</td>
							<td>
							</td>
						</tr>
						<tr>
							<td colspan="5">
								<c:choose>
									<c:when test="${param.start == null }">
										<c:set var="start" value="1"  scope = "session"/>
									</c:when>
									<c:otherwise>
										<c:set var="start" value="${param.start }" scope = "session"/>
									</c:otherwise>
								</c:choose>
								<nav aria-label="Page navigation example">
								  <ul class="pagination" style="width: 100px; margin-left: auto;margin-right: auto;">
									<c:choose>
										<c:when test="${start > 1 }">
										    <li class="page-item">
										      <a class="page-link" href="board?start=${start-1 }" aria-label="Previous">
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
									    <li class="page-item"><a class="page-link" href="board?start=${cnt }">${cnt }</a></li>
								    </c:forEach>
								    <c:choose>
								    	<c:when test="${start < pc.totEndPage }">
										    <li class="page-item">
										      <a class="page-link" href="board?start=${start+1 }" aria-label="Next">
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
		<div class="content-trainerList-right"></div>
	</div>
	<div class="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
</body>
</html>    	
	
