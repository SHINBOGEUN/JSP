<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%@page import="Ch03.*,java.net.*" %>
	<%
		String a = request.getParameter("isForward");
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd");
	
		if(a.equals("true")){
			
			request.setAttribute("02Page", "02Page에서전당하는 내용");
			RequestDispatcher dispatcher = request.getRequestDispatcher("03Forward.jsp");
			dispatcher.forward(request,response);
			
		}else if(a.equals("false")){

			id = URLEncoder.encode(id);
			response.sendRedirect("03Redirect.jsp?userid="+id+"&pwd="+pw);
		}
		
	%>
	<!-- 
		01StartPage로부터 전달받은 isForward의 값이 true 이면 포워드방식으로 03Forward로 페이지 처리가 되도록합니다.
		이때 입력했던 ID/PW를 그대로 화면에 출력해줍니다. 
		
		false이면 리다이렉트방식으로 03Redirect로 페이지 처리가 되도록 합니다. 
		이때 입력했던 ID/PW를 화면에 출력해줍니다.
		
	 -->
	 <%
		
	 %>
</body>
</html>  