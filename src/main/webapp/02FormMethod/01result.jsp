<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	 /* request 내장객체 */
		String title = request.getParameter("title");	
		String bgcolor = request.getParameter("bgcolor");
		/* 분기처리 가능! */
		if(bgcolor.equals("etc"))
		{
			bgcolor="blue";
		}
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
</head>
<body bgcolor=<%=bgcolor %>>
<!-- 폼으로부터 전달된 내용을 리퀘스트 내장객체에 저장하여 
키와 밸류로 저장된 것을 변수명(파라미터)을 통해 밸류값을 받아옴 -->
	<h1><%=title %></h1>
	
</body>
</html>