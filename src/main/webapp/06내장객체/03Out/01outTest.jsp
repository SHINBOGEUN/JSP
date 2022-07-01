<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="5kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("test~!!");
	out.print("test~!!");
	out.print("test~!!");
	out.print("test~!!");
	out.print("test~!!");
	out.print("test~!!");
	%>
	<hr>
	출력 Buffer의 전체 크기 : <%=out.getBufferSize() %>Byte<br>
	남은 Buffer의 크기 : <%=out.getRemaining() %>Byte<br>
	사용한 Buffer의 크기 : <%=out.getBufferSize() - out.getRemaining() %>Byte<br>
</body>
</html>