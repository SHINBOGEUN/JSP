<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP 게시판 웹 사이트</title>
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
	</nav>0
	
	
	<main>
		<form action="02LoginProc.jsp">
		ID : <input name = userid><br>
		PW : <input type = password name = pwd><br>
		<input type = submit> 
		</form>
	</main>
</body>
</html>