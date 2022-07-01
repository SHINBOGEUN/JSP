<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.getOut().print("Hello World<br>");
		HttpServletResponse res= (HttpServletResponse)pageContext.getRequest();
		
		res.sendError(404, "에러지롱");
	%>
</body>
</html>