<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		
		java.util.Scanner sc = new java.util.Scanner(System.in);
	
	%>
	
	<%
		System.out.println("���ڿ��� �Է� : ");
		String str1 = sc.nextLine();
	%>
		
�Է��� ���ڿ� : <%=str1 %><br>
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>