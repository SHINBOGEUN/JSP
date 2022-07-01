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
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
	
	
	
	
	
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
		
		
		pstmt = conn.prepareStatement("insert into signup_tbl values(?,?,?,?,?)");
		pstmt.setString(1,userid);
		pstmt.setString(2,pwd);
		pstmt.setString(3,name);
		pstmt.setString(4,addr);
		pstmt.setString(5,phone);
		
		int result = pstmt.executeUpdate(); //실행하는 함수
		
		if(result > 0){
		 	System.out.println("성공");
		}else{
		 	System.out.println("실패패패패패");
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