<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>리다이렉트결과
		
		</h1>
		<%
			String id = request.getParameter("userid");
			String pw = request.getParameter("pwd");
			String Retest = request.getParameter("Retest");
		%>
		
		ID : <%=id %>
		PW : <%=pw %>
		RETEST : <%=Retest %>
</body>
</html>