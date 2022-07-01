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
		String id = (String)session.getAttribute("ID");
		String pw = (String)session.getAttribute("PW");
		String SID = session.getId();
		int intervalTime = session.getMaxInactiveInterval();
		
		
	%>
	세션 ID : <%=SID %><br> 
	계정 ID : <%=id %><br>
	계정 PW : <%=pw %><br>
	세션 유지시간 : <%=intervalTime %>
</body>
</html>