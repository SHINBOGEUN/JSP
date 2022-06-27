<%@ page 
language="java" 
contentType="text/html; 
charset=UTF-8" 
pageEncoding="UTF-8"
info="Page지시자의 Info 속성 테스트~!"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- getServletInfo() : info에 있는 정보를 페이지로 가져옴 -->
	PAGEINFO : <%=getServletInfo() %><br>
</body>
</html>