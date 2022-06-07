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
<link rel="stylesheet" href="../css/style.css" />

<title>Login</title>
</head>

<body>
	<!-- header-->
	<%@ include file="/tags/header.jsp"%>

	<!-- mainContents -->
	<div class="container login">
		<!-- Login Form -->
		<div class="row">
			<form action="/in" name="loginform" onsubmit="return checkLogin()">
				<div class="mb-3">
					<label for="InputEmail" class="form-label">이메일</label> <input
						type="email" class="form-control" id="login_InputEmail"
						aria-describedby="emailHelp" onblur="login_focusOut()">
					<p id="login_pid" class="login_pred"></p>
				</div>
				<div class="mb-3">
					<label for="InputPassword" class="form-label">비밀번호</label> <input
						type="password" class="form-control" id="login_InputPassword"
						onblur="login_focusOut()">
					<p id="login_ppw" class="login_pred"></p>
				</div>
				<input type="submit" class="btn submit-btn" style="width: 100%;"
					value="로그인">
			</form>
		</div>
		
		<!-- 추가 기능 -->
		<div class="login__a-link">
			<a href="findpw.jsp">비밀번호 찾기</a> <span>|</span> <a href="joinus.jsp">회원가입</a>
		</div>

		<!-- 연동 로그인 -->
		<div class="row">
			<div class="login__line">간편 로그인</div>
			<div class="col login__simple-login">
				<img alt="" src="/img/icon/login/google.png"> <img alt=""
					src="/img/icon/login/kakao.png">
			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>

	<!-- 로그인 폼 Script -->
	<script src="../js/login/login.js"></script>

	<!-- Bootstrap 옵션 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>