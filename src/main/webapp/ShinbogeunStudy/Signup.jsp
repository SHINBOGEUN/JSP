<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
	<nav>
		<div id="nav-title">
			<h1>
				<a href="/">JSP게시판</a>
			</h1>
			<h2>메인</h2>
			<h2>게시판</h2>
		</div>
		<select onChange="window.location.href=this.value">
			<option value="index.jsp">접속하기</option>
			<option value="Login.jsp">로그인</option>
			<option>회원가입</option>
		</select>
	</nav>
	
</body>
</html>