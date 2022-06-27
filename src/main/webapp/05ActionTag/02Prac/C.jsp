<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Result</h1>
	
	이름 : <%=request.getParameter("userid") %><br>
	주소 : <%=request.getParameter("pwd") %><br>
	A : <%=request.getParameter("A") %><br>
	B : <%=request.getParameter("B") %><br>
</body>
</html>