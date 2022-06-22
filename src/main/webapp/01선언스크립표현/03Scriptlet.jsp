<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%!  //선언문
   
      int a=0;
   %>

   <!-- 
      스크립틀릿 
      
      서블릿파일내의 특정함수(Service함수)내엣 지정되는 자바코드 설정
      변수 생성시 지역변수
      함수 생성 불가
      절차지향 문법(반복/if문)적용가능
      
      함수 내에서 처리   / 함수 내 지역변수 생성 가능 / 매소드 선언 불가
   -->
   <% 
      String str1 = "Scriptlet 테스트";
      String str2 = "Local 변수";
      int b=0;
      a++;
      b++;
   %>
   
   str1=<%=str1 %><br>
   str2=<%=str2 %><br>
   a=<%=a %><br>
   b=<%=b %><br>
</body>
</html>