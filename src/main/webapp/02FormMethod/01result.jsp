<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
		String title = request.getParameter("title");
		String bgcolor = request.getParameter("bgcolor");
		if(bgcolor.equals("etc")){
			bgcolor="blue";
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor=<%=bgcolor %>>

<h1><%=title %></h1>
</body>
</html>