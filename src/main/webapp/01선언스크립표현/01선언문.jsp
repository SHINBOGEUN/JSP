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
		
	 -->

	<%!
	//변수 추가
	String hello = "Hello World!";
	//메서드 추가
	public String testFunc(){
		System.out.println("선언문 테스트");	
		return "ABCD";
	}
	%>
	
	<!-- 
		표현식
	 -->
	<%=hello %><br>
	<%=testFunc() %><br>

</body>
</html>