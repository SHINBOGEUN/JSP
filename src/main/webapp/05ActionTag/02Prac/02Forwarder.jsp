<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String type = request.getParameter("mode");
	if (type.equals("type1")) {
	%>
	<jsp:forward page="A.jsp">
		<jsp:param name="02Forwarder" value="02Forwarder"/>
	</jsp:forward>
	<%
	} else if (type.equals("type2")) {
	%>
	<jsp:forward page="B.jsp">
		<jsp:param name="02Forwarder" value="02Forwarder"/>
	</jsp:forward>
	<%
	} else if (type.equals("type3")) {
	%>
	<jsp:forward page="C.jsp">
		<jsp:param name="02Forwarder" value="02Forwarder"/>
	</jsp:forward>
	<%
	}
	%>
</body>
</html>