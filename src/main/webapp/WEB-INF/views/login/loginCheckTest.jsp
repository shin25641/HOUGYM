<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${user_id != null }">
		<script type="text/javascript">
			alert('�α��� ����'); location.href="index";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('���̵� �Ǵ� �н����带 �ٽ� Ȯ���ϼ���.'); history.back();
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>