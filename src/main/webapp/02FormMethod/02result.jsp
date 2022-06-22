<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
		String divw = request.getParameter("divw");
		String divh = request.getParameter("divh");
		String divr = request.getParameter("divr");
		String divb = request.getParameter("divb");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
	div{
		border:1px solid gray;
	}
	</style>


	<div id ="d1">1</div>
	
	<script>
		let d1 = document.getElementById("d1");
		d1.style.width ="<%=divw%>px";
		d1.style.height="<%=divh%>px";
		d1.style.borderRadius = "<%=divr%>%"
		d1.style.backgroundColor="<%=divb %>";
	</script>
	
</body>
</html>