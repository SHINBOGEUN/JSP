<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch03.*" %>
	<%
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd");
		/*request가 object(최상위)로 되어있으므로! 다운캐스팅 */
		String page02 =	(String) request.getAttribute("02Page");
		String page03 = (String)request.getAttribute("03Page");
		
		BookDTO book = (BookDTO)request.getAttribute("book");
		SampleDTO sample = (SampleDTO)request.getAttribute("sample");
		
		/* 리다이렉트 파라미터 받기 
			리테스트 방식으로 새로운 리퀘스트 받기*/
		String Retest = request.getParameter("Retest");
	%>
	
	ID : <%=id %><br>
	PW : <%=pw %><br>
	p2 : <%=page02 %><br>
	p3 : <%=page03 %><br>
	book : <%=book %><br>
	sample : <%=sample %><br>
	RETEST : <%=Retest %>
</body>
</html>