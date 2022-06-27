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
	<div class="container-md w-50" id="wrapper" style="margin: 100px auto">
		<h1>MEMBER JOIN</h1>
		<form class="row g-3">
			<div class="col-md-6">
				<label for="inputEmail4" class="form-label">Email</label> <input
					type="email" class="form-control" id="inputEmail4" name = "email">
			</div>
			<div class="col-md-6">
				<label for="inputPassword4" class="form-label">Password</label> <input
					type="password" class="form-control" id="inputPassword4" name = "pwd">
			</div>
			<div class="col-12">
				<label for="inputAddress" class="form-label">Address</label> <input
					type="text" class="form-control" id="inputAddress"
					placeholder="1234 Main St" name ="addr1">
			</div>
			<div class="col-12">
				<label for="inputAddress2" class="form-label">Address 2</label> <input
					type="text" class="form-control" id="inputAddress2"
					placeholder="Apartment, studio, or floor" name = "addr2">
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-primary">Sign in</button>
			</div>
		</form>
	</div>

	<!-- <form action="03Result.jsp" method="get">
		이름 : <input name=name><br> 나이 : <input name=age><br>
		주소 : <input name=add><br> 닉네임 : <input name=nickname><br>
		키 : <input name=height><br> <input type=submit><br>
	</form> -->
</body>
</html>