<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	<h1>MAIN</h1>
	세션 ID :
	<%=session.getId()%><br> 계정 ID :
	<%=session.getAttribute("ID")%><br> 유지시간 :
	<%=session.getMaxInactiveInterval()%>초
	<br>
	<p id=timer></p>
	<script>
		let stime = new Date();
		let max =
	<%=session.getMaxInactiveInterval()%>
		function timer() {
			max = max - 1;
			document.getElementById("timer").innerHTML = max;
			if (max < 0) {
				clearInterval();
				alert("세션 종료");
				location.href = "05LoginForm.jsp";
			}
		}
		tmp = setInterval(timer, 1000);
	</script>
	
	<a href="05ShowCartList.jsp">장바구니 이동</a><br>
	<a href="05Logout.jsp">로그아웃</a>

	<style>
#maincontents {
	display: flex;
	justify-content: space-around;
}

#maincontents img {
	width: 100%;
	height: 250px
}
</style>

	<div id=wrapper>
		<div id="maincontents" class="container-md">
			<!-- iITEM1 -->
			<div class="card" style="width: 18rem;">
				<form action="05addCart.jsp">
					<input type = "hidden" name = "prodname" value = "tree1">
					<input type = "hidden" name = "cat" value = "notebook">
					<input type = "hidden" name = "price" value = "15000000">
					<img
						src="https://img.insight.co.kr/static/2017/10/31/700/e3j705hxngf8j5oqlpy9.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title mb-2">Card title</h5>
						<input type=submit class="btn btn-primary w-100" value="상세정보">
						<button onclick = "addCart(0)" class="btn btn-primary w-100 mt-3">CART</button>
					</div>
				</form>
			</div>
			<!-- iITEM2 -->
			<div class="card" style="width: 18rem;">
				<form action="05addCart.jsp">
					<input type = "hidden" name = "prodname" value = "tree2">
					<input type = "hidden" name = "cat" value = "notebook">
					<input type = "hidden" name = "price" value = "15000000">
					<img
						src="https://img.insight.co.kr/static/2017/10/31/700/e3j705hxngf8j5oqlpy9.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title mb-2">Card title</h5>
						<input type=submit class="btn btn-primary w-100" value="상세정보">
						<button onclick = "addCart(1)" class="btn btn-primary w-100 mt-3">CART</button>
					</div>
				</form>
			</div>
			<!-- iITEM3 -->
			<div class="card" style="width: 18rem;">
				<form action="05addCart.jsp">
					<input type = "hidden" name = "prodname" value = "tree3">
					<input type = "hidden" name = "cat" value = "notebook">
					<input type = "hidden" name = "price" value = "15000000">
					<img
						src="https://img.insight.co.kr/static/2017/10/31/700/e3j705hxngf8j5oqlpy9.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title mb-2">그루트 3</h5>
						<input type=submit class="btn btn-primary w-100" value="상세정보">
						<button onclick = "addCart(2)" class="btn btn-primary w-100 mt-3">CART</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script>
	
		function addCart(num){
			//모든 form을 받아온다
			let form = document.forms[num];
			let prodname = form[0].value;
			let cat = form[1].value;
			let price = form[2].value;
			isok = confirm("상품평 : " + prodname + "\카테고리 : " + cat + "\n가격 : " + price);
			 if(isok)
             {
	             form.action="05AddCart.jsp"
	             form.submit();
             
             }else{
	             form.action="05Main.jsp"

             }

		}	
		
	
	
	</script>

</body>
</html>