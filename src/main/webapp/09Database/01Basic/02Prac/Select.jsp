<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>

<body>
	<%@page import="java.sql.*,Ch09.*,java.util.*"%>
	<%
	BookDAO dao = BookDAO.getInstance();
	ArrayList<BookDTO> list = dao.Select();
	%>
	<div id=wrapper class="container-md w-75" style = "margin:10px auto">
		<table class ="table table-stripde">
			<tr>
				<th>NO</th>
				<th>BookCode</th>
				<th>BookName</th>
				<th>Publisher</th>
				<th>TotalPage</th>
				<th>Amount</th>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%=list.get(i).getNo() %></td>					
						<td><%=list.get(i).getBookcode() %></td>					
						<td><%=list.get(i).getBookname() %></td>					
						<td><%=list.get(i).getPublisher() %></td>					
						<td><%=list.get(i).getTotalpage() %></td>					
						<td><%=list.get(i).getAmount() %></td>					
						
					</tr>
					<% 
				}
			%>
		</table> 
	</div>


</body>
</html>