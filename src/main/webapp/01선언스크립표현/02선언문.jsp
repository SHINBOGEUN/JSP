<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!--  
		����
		������ �ʹ�����/�޼��带 ������ �� �ִ� ����
		(JSP�������ȿ���)
		
		��Ĺ���� ���۵��ȿ��� ������ �ȴ�.
		
	-->
	
	<%!
		//�ɹ� ����
		int a =0;
		public int addone(){
			a++;
			return a;
		}
	
	%>
	
	
	���� a�� �� = <%=addone() %><br>
	���� 

</body>
</html>