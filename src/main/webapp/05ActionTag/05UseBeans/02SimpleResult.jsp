<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch05.BookBean" %>
	<%
		//request에서 book관련 parameter꺼내기
		//BookBean 클래스로 객체 생성후 각 속송에 book관련 parameter값 저장
		//화면에 출력(.toString()을 이용해보세요)
		
		/* String BC = request.getParameter("bookcode");
		String BN = request.getParameter("bookname");
		String BP = request.getParameter("bookprice");
		
		BookBean bean = new BookBean();
		
		bean.setBookcode(BC);
		bean.setBookname(BN);
		bean.setBookprice(BP); */
	%>
	<jsp:useBean id="bean" class="Ch05.BookBean" scope = "page" />
	<jsp:setProperty name = "bean" property="*"/>
	받은 값 <%=bean.toString() %><br>
	코드 : <%=bean.getBookcode() %>
	제목 : <%=bean.getBookname() %>
	카드 : <%=bean.getBookprice() %>
	
	
	
	
	
</body>
</html>