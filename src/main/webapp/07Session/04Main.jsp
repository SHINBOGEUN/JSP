<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MAIN</h1>
	세션 ID :  <%=session.getId() %><br>
	계정 ID :  <%=session.getAttribute("ID") %><br>
	유지시간 : <%=session.getMaxInactiveInterval() %>초<br>
	<p id = timer></p>
	<script>
		let stime = new Date();
		let max = <%=session.getMaxInactiveInterval() %>;
		alert("시작시간 : " + stime + "\n MAX : " + max);
		
		function timer(){
			max = max - 1;
			document.getElementById("timer").innerHTML = max;
			if(max < 0){
				clearInterval();
				alert("세션 종료");
				location.href= "04LoginForm.jsp";
			} 
		}
		tmp = setInterval(timer, 1000);
	</script>
	
	<a href= "03Logout.jsp">로그아웃</a>
</body>
</html>