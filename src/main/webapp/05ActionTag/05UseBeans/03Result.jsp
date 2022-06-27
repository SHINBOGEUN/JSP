<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id = "bean" class ="Ch05.MemberBean" scope = "page" />
	<jsp:setProperty name = "bean" property = "*"/>
	
	받은 값 : <%=bean.toString() %><br>
	이름 : <%=bean.getName() %><br>
	나이 : <%=bean.getAge() %><br>
	주소 : <%=bean.getAdd() %><br>
	닉네임 : <%=bean.getNickname() %><br>
	키 : <%=bean.getHeight() %>
</body>
</html>