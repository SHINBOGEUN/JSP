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
		1����
		Scanner �� �ܼ����� �Է¹޾� �ش� �������� ���
		2����
		2�ܺ��� 9�ܱ��� ���
	 -->
	
	
</body>
</html>