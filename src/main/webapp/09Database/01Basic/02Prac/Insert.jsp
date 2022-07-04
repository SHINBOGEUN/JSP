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
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //URL
	String id = "book_ex"; //ID
	String pw = "1234"; //PW
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		//드라이버 적재
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//DB에 연결
		conn = DriverManager.getConnection(url, id, pw);
		System.out.println("Connedted..");
		//쿼리 객체 생성
		
		int i = 1;
		while(i <= 200){
			pstmt = conn.prepareStatement("insert into book_tbl values(?,?,?,?,?,?)");
			pstmt.setInt(1,i);
			pstmt.setInt(2,1111 + i);
			pstmt.setString(3,"NAME" + i);
			pstmt.setString(4,"Publ" + i );
			pstmt.setInt(5,1000 + i);
			pstmt.setInt(6,234 + i);
			int result = pstmt.executeUpdate(); //실행하는 함수
		i++;			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try{
			pstmt.close();
		}catch(Exception e2){
			e2.printStackTrace();
		}
		try {
			conn.close();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}
	%>
</body>
</html>