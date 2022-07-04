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
	
	String num1 = request.getParameter("start");
	String num2 = request.getParameter("end"); 
	int end = 0;
	
	if(num2 !=null){
		
		end = Integer.parseInt(num2);
	}
		
	
	BookDTO search = new BookDTO();
	ArrayList<BookDTO> list = dao.Select(1, end);
	
	%>
	<div id=wrapper class="container-md w-75" style="margin: 10px auto">
		<form action="Select3.jsp">
			<div class="row mb-3">
				<div class="col-5" style="width: 130px;">
					<select name=type class="form-select w-100" id=search>
						<option value="C">필코드코드</option>
						<option value="N" selected>보름</option>
						<option value="P">필욱이판사</option>

					</select>
				</div>
				<div class="col">
					<input type=text name=word class="form-control">
				</div>
				<div class=col>
					<input type=submit class="btn btn-secondary" value="검색">
				</div>
			</div>
		</form>
		<form action = "Select3.jsp">
			Start : <input type = text name = start><br>
			End : <input type = text name = end><br>
			<input type = submit value = "검색">
		</form>
		<table class="table table-stripde">
			<tr>
				<th>넘버</th>
				<th>보코드</th>
				<th>borName</th>
				<th>Publisher</th>
				<th>TotalPage</th>
				<th>Amount</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getNo()%></td>
				<td><%=list.get(i).getBookcode()%></td>
				<td><%=list.get(i).getBookname()%></td>
				<td><%=list.get(i).getPublisher()%></td>
				<td><%=list.get(i).getTotalpage()%></td>
				<td><%=list.get(i).getAmount()%></td>

			</tr>
			<%
			}
			%>
		</table>
	</div>


</body>
</html>