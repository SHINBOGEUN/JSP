<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP �Խ��� �� ����Ʈ</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
 	<nav>
		<div id="nav-title">
			<h1>
				<a href="/">JSP�Խ���</a>
			</h1>
			<h2>����</h2>
			<h2>�Խ���</h2>
		</div>
		<select onChange="window.location.href=this.value">
			<option value="index.jsp">�����ϱ�</option>
			<option value="Login.jsp">�α���</option>
			<option>ȸ������</option>
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