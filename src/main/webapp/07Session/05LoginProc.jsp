<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
<jsp:useBean id ="CartBean" class = "Ch07.CartRepository" scope = "application" />
	
	<%@page import = "java.util.*, Ch07.*" %>
   <%
      String id = request.getParameter("userid");
      String pw = request.getParameter("pwd");
      
      
         session.setAttribute("ID",id);
         session.setAttribute("PW",pw);
         session.setMaxInactiveInterval(60*15);
         
         //세션정보 저장
         sessionSave.AddSession(id, session);
         
         //계정 전용 Arraylist<ProductDTO>를 생성 + 연결
         Set<String> set = CartBean.cart.keySet();
         boolean flag = false;
         for(String mapid: set){
        	 if(mapid.equals(id)){
        		 flag = true;
        	 }
         }
        if(!flag){
	         ArrayList<ProductDTO> list = new ArrayList();
	         CartBean.cart.put(id, list);             	 
        }
        
         
         response.sendRedirect("05Main.jsp");
      
      
   %>
</body>
</html>