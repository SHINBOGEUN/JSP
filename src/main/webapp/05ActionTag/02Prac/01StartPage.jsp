<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="02Forwarder.jsp">
		<input name = userid><br>
		<input name = pwd><br>
		<select name =mode>
			<option value=type1>A -> B -> C</option>
			<option value=type2>B -> C</option>
			<option value=type3>C</option>
		</select>
		<input type= submit> 
	</form>
</body>
</html>