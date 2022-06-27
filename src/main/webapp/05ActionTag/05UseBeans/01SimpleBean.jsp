<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id= "test1" class = "Ch05.SimpleBean" scope ="page" />
	
	<jsp:setProperty name = "test1" property="msg1" value ="MSG1의 값!!" />
	<jsp:setProperty name = "test1" property = "msg2" value="MSG2의 값" />
	
	MSG1 : <jsp:getProperty name ="test1" property = "msg1" /> <br>
	MSG2 : <jsp:getProperty name ="test1" property = "msg2" /> <br>
	
	<%@page import = "Ch05.SimpleBean" %>
	<%
		SimpleBean bean = new SimpleBean();
		bean.setMsg1("메세지1");
		bean.setMsg2("메세지2");
	%>
	
	MSG1 = <%=bean.getMsg1() %><br>
	MSG2 = <%=bean.getMsg2() %><br>
	
</body>
</html>