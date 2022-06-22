<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!--  
		선언문
		서블릿의 맵버변수/메서드를 선언할 수 있는 영역
		(JSP페이지안에서)
		
		톰캣서버 동작동안에는 유지가 된다.
		
	-->
	
	<%!
		//맴버 변수
		int a =0;
		public int addone(){
			a++;
			return a;
		}
	
	%>
	
	
	변수 a의 값 = <%=addone() %><br>
	변수 

</body>
</html>