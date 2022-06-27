<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:forward page="04Result.jsp" >
		<jsp:param value="03Page에서만든 데이터" name="03Page"/>
	</jsp:forward>
</body>
</html>