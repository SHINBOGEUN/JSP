<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
	String str = "TEST";
	for(int i = 0; i < 10; i ++){
		%>
		<li><%=str + i %></li>
	<% 
	}
	
		%>
	</ul>
	
</body>
</html>