<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Project CSS -->
<link rel="stylesheet" href="./css/style.css" />

<title>Login</title>
</head>

<style>
.line {
	display:flex;
	flex-basis:100%;
	align-items:center;
	color:rgba(255,255,255,1);
	font-size:14px;
	margin:8px 0px;
}
.line::before{
	content:"";
	flex-grow:1;
	margin:0px 16px;
	background:rgba(255,255,255,0.35);
	height:1px;
	font-size:0px;
	line-height: 0px;
}
.line::after {
	content:"";
	flex-grow:1;
	margin:0px 16px;
	background:rgba(255,255,255,0.35);
	height:1px;
	font-size:0px;
	line-height: 0px;
}

.pred {
	color: red;
}
</style>

<body>
	<!-- header-->
	<%@ include file="./tags/header.jsp"%>
	<div style="padding: 20px"></div>

	<!-- mainContents -->
	<div class="container border border-warning border-3"
		style="padding: 10px; width: 40%; height: auto; color: white;">
		<!-- Login Form -->
		<div class="row">
			<form action="/in" name="loginform" onsubmit="return checkLogin()">
				<div class="mb-3">
					<label for="InputEmail" class="form-label">이메일</label>
					<input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp">
					<p id="pl_id" class="pred"></p>
				</div>
				<div class="mb-3">
					<label for="InputPassword" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="InputPassword">
					<p id="pl_pw" class="pred"></p>
				</div>
				<input type="submit" class="btn btn-primary" style="width: 100%" value="로그인">
			</form>
		</div>
		<!-- 추가 기능 -->
		<div class="row">
			<div style="text-align: center; padding: 10px;">
				<a href="findpw.jsp">비밀번호 찾기</a> <a style="color:rgba(200,200,200,0.5);">|</a> <a href="joinus.jsp">회원가입</a>
			</div>
		</div>
		<!-- 연동 로그인 -->
		<div class="row">
			<div class="line">간편 로그인</div>
			<div class="col" style="text-align: center">
				<img alt="" src="./img/icon/google.png" style="margin: 0px 10px;">
				<img alt="" src="./img/icon/kakao.png" style="margin: 0px 10px;">
			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="./tags/footer.jsp"%>

	<!-- 로그인 폼 Script -->
	<script>
		function checkLogin(){
			var id = document.getElementById("InputEmail").value;
			var pw = document.getElementById("InputPassword").value;
			
			if(id == "") {
				document.getElementById("pl_id").innerHTML = "이메일을 입력해주세요.";
				return false;
			} else if(pw == "") {
				document.getElementById("pl_pw").innerHTML = "비밀번호를 입력해주세요.";
				return false;
			} else {
				return true;
			}
		}
	</script>
	
	<!-- Bootstrap 옵션 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>