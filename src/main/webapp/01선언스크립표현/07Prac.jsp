<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<style>
td {
	border: 1px solid gray;
	text-align: center;
	width: 50px;
	height: 50px;
}
</style>

	<%
	java.util.Scanner sc = new java.util.Scanner(System.in);
	System.out.println("행과 열을 입력 : ");
	int a = sc.nextInt();
	int b = sc.nextInt();
	int z = 1;
	%>
	<table>
		<%
		for (int i = 1; i <= a; i++) {
		%>
		<tr>
			<%
			for (int j = 0; j < b; j++) {
				out.println("<td>" + (z++) + "</td>");
			}
			%>
		</tr>
		<%
		}
		%>
	</table>



</body>
</html>