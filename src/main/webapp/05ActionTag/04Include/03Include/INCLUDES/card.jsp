<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*" %>
		<%
			Reader rin = new FileReader("C:\\banner\\cardname.txt");
			String cardname = "";
			while(true){
				int data = rin.read();
				if(data == -1){
					break;
				}
				cardname += (char)data+ "";
			}
			System.out.println("cardname : " + cardname);
			String arr[] = cardname.split(" ");
			System.out.println("arr[0] : " + arr[0]);
			System.out.println("arr[1] : " + arr[1]);
			System.out.println("arr[2] : " + arr[2]);
			System.out.println("arr[3] : " + arr[3]);
	
			rin.close();
			
		%>
	
	<div id="cards">
                <div class="card">
                    <img src="../IMG/<%=arr[0] %>">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/<%=arr[1] %>">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/<%=arr[2] %>">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/<%=arr[3] %>">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
            </div>
</body>
</html>