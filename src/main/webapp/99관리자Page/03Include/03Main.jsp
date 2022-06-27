<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import ="java.io.*" %>
	<%
		Reader rin = new FileReader("C:\\style\\header\\style.txt");
		String style = "";
		while(true){
			int data = rin.read();
			if(data == -1){
				break;
				
			}
			style += (char)data + "";
		}
		String []arr = style.split("");
		
		String border = arr[0] + " " + arr[1] + " " + arr[2];
		String bgcolor = arr[3];
		String height = arr[4];
		
	%>
	<div id=wrapper>
		<!-- 헤더 -->
		<jsp:include page="module/header.jsp" /> 


		<!-- 네비 -->
		<jsp:include page="module/nav.jsp" />
		<!-- 컨테츠 -->
		<div>컨텐츠~ </div>
		<!-- 푸터 -->
		<jsp:include page="module/footer.jsp" />
	</div>
</body>
</html>