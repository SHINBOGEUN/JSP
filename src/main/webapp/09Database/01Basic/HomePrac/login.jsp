<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="Insert2.jsp">
		ID : <input  type = text name = userid><br>
		PW : <input type = "password" name = pwd><br>
		이름 : <input type = text name = name><br>
		주소 : <input type = text name = addr><br>
		폰 번호 : <input type = text name = phone><br>
		<input type = submit value = "회원가입">
		<a href = "Withdrawal.jsp">회원탈퇴</a>
	</form>
</body>
</html>