<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Bean생성 -->
	<jsp:useBean id="bean" class="Ch05.TestBean" scope="page" />
	<!-- 값 등록 -->
	<jsp:setProperty name="bean" property = "msg1" value = "msg1-value" />
	<!-- Forward(request 유지) -->
	<jsp:forward page = "02a.jsp"/>
	

</body>
</html>