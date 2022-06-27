<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%!
		String border;
		String bgcolor;
		String height;
	%>
	
	
	<%
	 	 border = request.getParameter("border");
		 bgcolor = request.getParameter("bgcolor");
		 height = request.getParameter("height");
		
	%>
	
    <div id = header>
    	헤더입니다!
    </div>
    
    <script>
    	header = document.getElementById("header");
    	header.style.border = "<%=border%>";
    	header.style.backgroundColor = "<%=bgcolor%>";
    	header.style.height = "<%=height%>";
    	
    </script>