<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "javascript:history.back(-1)"></a>
	<style>
		td{
			border : 1px solid black;
		}
	</style>
	<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application" />
	<%@page import="java.util.*,Ch07.*" %>
	<%
		String id = (String)session.getAttribute("ID");
		ArrayList<ProductDTO> list = Cartbean.cart.get(id);
		
	/* 	for(int i =0; i<list.size(); i++){
			out.println(list.get(i).toString() +"<button onclick=remove("+ i +") id = re"+ i +">삭제</button>" +"<br>");
		} */
	%>	
	
	<table>
		<tr>
			<td>카테고리</td>
			<td>상품명</td>
			<td>가격</td>
			<td>비고</td>
		</tr>
		<tr>
		<% 
		for(int i =0; i<list.size(); i++){
			String name = list.get(i).getProdname();
		%>
			<td><%=list.get(i).getCat()%></td>
			<td><%=list.get(i).getProdname()%></td>
			<td><%=list.get(i).getPrice()%></td>
			<td><button onclick = "removeProduct(`<%=name%>`)">X</button></td>
		</tr>
		<%
		}
		%>
	</table>
	<script>
		
	
		function removeProduct(pd){
			alert("PD :" + pd);
			location.href = "05removeProduct.jsp?prodname=" + pd;
		}
	
	</script>
	

</body>
</html>