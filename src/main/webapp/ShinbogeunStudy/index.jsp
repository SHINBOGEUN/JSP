<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="EUC-KR">
<title>JSP �Խ��� �� ����Ʈ</title>
<link rel="stylesheet" href="main.css">
</head>
<style>


tr:nth-child(2n-1):not(:first-of-type) {
	background-color: #dcdcdc;
}




#menu-var {
	font-size: 1.5rem;
	border-bottom: 2px solid darkgray;
}



tr {
	display: flex;
	justify-content: space-around;
	padding: 15px 0;
}
</style>
<body>
	<%@page import="Prac.*,java.util.*"%>
	<%
	boardDAO dao = boardDAO.getInstance();
	String page1 = request.getParameter("page");
	System.out.println(page1);
	int end = 0;
	
	if(page1 !=null){
		
		end = Integer.parseInt(page1);
	}
	
	
	ArrayList<boardDTO> list = dao.Select();
	ArrayList<boardDTO> list1 = dao.Select(10 * (end -1) , end*10);
	
	System.out.println(list1.size());
	
	int paging = list.size() % 10;
	int pagenum = 0;
	if(paging == 0){
		pagenum = list.size() / 10;		
	}else{
		pagenum = list.size() / 10 +1;		
	}
	
	%>
	<nav>
		<div id="nav-title">
			<h1>
				<a href="/">JSP�Խ���</a>
			</h1>
			<h2>����</h2>
			<h2>�Խ���</h2>
		</div>
		<select onChange="window.location.href=this.value">
			<option value="Index.jsp">�����ϱ�</option>
			<option value="Login.jsp">�α���</option>
			<option>ȸ������</option>
		</select>
	</nav>


	<main>
		<table
			style="width: 100%; border: 1px solid black; margin-top: 100px;">
			<tr id="menu-var">
				<th>��ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�ۼ���</th>

			</tr>
			<%
			for (int i = 0; i < list1.size(); i++) {
			%>
			<tr>
				<td><%=end + i %></td>
				<td><%=list.get(i).getTitle() %></td>
				<td><%=list.get(i).getWriter() %></td>
				<td><%=list.get(i).getDay() %></td>
			</tr>
			<%
			}
			%>



		</table>
		<form method="get" action="index.jsp">
		<%
		for (int i = 0; i < pagenum; i++) {
		%>
		<input type = submit  value ="<%=i+1%>"  name ="page">
		<%
		}
		%>
		</form>

		
	</main>

</body>
</html>