<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		java.util.Scanner sc = new java.util.Scanner(System.in);	
		System.out.print("dan : ");
		int dan = sc.nextInt();
		for(int i = 1;  i < 10; i++){
			out.println(dan + " X " + i + " = " + (dan * i) + "<br>");
		}
		out.println("<br>");
		
		for(int i = 2; i < 10; i++){
			for(int j = 1; j < 10; j++){
				out.println(i + " X " + j + " = " + (i * j) + "<br>");
			}
			out.println("<br>");
		}
	%>
	
	
	
	
	
	<!-- 
		1문제
		Scanner 로 단수값을 입력받아 해당 구구단을 출력
		2문제
		2단부터 9단까지 출력
	 -->
	
	
</body>
</html>