<%@page import="org.mindrot.bcrypt.BCrypt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<jsp:useBean id ="BCrypt" class ="org.mindrot.bcrypt.BCrypt" scope="page" />
	<%
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String idchk = request.getParameter("idchk");
		String pwdchk = request.getParameter("pwdchk");
		
		
	/* 	System.out.println("USERID : " + userid);
		System.out.println("pwd : " + pwd);
		System.out.println("idchk : " + idchk);
		System.out.println("pwdchk : " + pwdchk); */
		
		pwd = BCrypt.hashpw(pwd, BCrypt.gensalt());
		
		
		System.out.println("암호화된 PW : " + pwd);
		
		
		
		Cookie c1 = new Cookie("userid",userid);
		Cookie c2 = new Cookie("pwd",pwd);
		Cookie c3 = new Cookie("idchk",idchk);
		Cookie c4 = new Cookie("pwdchk",pwdchk);
		response.addCookie(c1);
		response.addCookie(c2);
		response.addCookie(c3);
		response.addCookie(c4);
		response.sendRedirect("Main.jsp");
	%>
	
	
</body>
</html>