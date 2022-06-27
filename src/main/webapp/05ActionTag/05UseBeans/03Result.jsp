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
	이메일 : <%=bean.getEmail() %><br>
	비밀번호 : <%=bean.getPwd() %><br>
	주소1 : <%=bean.getAddr1() %><br>
	주소2 : <%=bean.getAddr2() %><br>
</body>
</html>