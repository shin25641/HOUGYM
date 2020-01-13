<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${Admin eq 2 }">
		<script type="text/javascript">
			alert('가입을 축하드립니다.'); location.href="trainerList";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("가입을 축하드립니다."); location.href="login";
		</script>	
	</c:otherwise>
</c:choose>

</body>
</html>