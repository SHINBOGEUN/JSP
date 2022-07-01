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
      String cookieName = "mycookie";
      Cookie cookie = new Cookie(cookieName,"쿠키1Value");
      cookie.setMaxAge(30); //쿠키 유지시간
                       //-1(기본값): 파일생성은 되지 않으나
                       //브라우저가 종료될때까지 쿠키의 정보는 저장된 상태이고
                       //브라우저를 닫을 때 쿠키의 정보는 사라진다
                       //30초로 설정
   %>
   
   
</body>
</html>