<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage = "05ErrorPage.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import = "Ch03.*" %>
	
	<%
		String BC = request.getParameter("BookCode");
		String BN = request.getParameter("BookName");
		String PS = request.getParameter("Publisher");
		
		if(BC == "" || BN == "" || PS == ""){
			if(BC == "") {
				throw new Exception(BC + "입력되지 않은곳이 있습니다.");
			}
		}
		
		
		
		
		BookDTO bt = new BookDTO(BC, BN, PS);
		out.println("확인 : " + bt);
		
	%>

</body>
</html>