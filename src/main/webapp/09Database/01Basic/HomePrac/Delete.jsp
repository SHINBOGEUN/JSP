<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*,java.util.*"%>
	<%
	
	String userid = request.getParameter("userid");

	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
	String id = "book_ex"; //ID
	String pw = "1234"; //PW
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		//드라이버 적재
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//DB에 연결
		conn = DriverManager.getConnection(url, id, pw);
		System.out.println("Connedted..");
		pstmt = conn.prepareStatement("delete from signup_tbl where userid = ?");
		pstmt.setString(1, userid);
		
		int result = pstmt.executeUpdate();
		
		if(result > 0){
		 	System.out.println("성공");
		}else{
		 	System.out.println("실패패패패패");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			conn.close();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	%>
</body>
</html>