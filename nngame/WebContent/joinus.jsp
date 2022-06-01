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

<title>회원가입</title>
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
	<div class="container"
		style="padding: 10px; width: 40%; height: auto; color: white;">
		<!-- 회원가입 Form -->
		<div class="row">
			<form action="/tojoin" name="joinform" onsubmit="return checkSubmit()">
				<div class="mb-3">
					<label for="JoinEmail1" class="form-label">이메일</label> 
					<input type="email" class="form-control" id="joinEmail"	aria-describedby="emailHelp">
					<p id="pid" class="pred"></p>
				</div>
				<div class="mb-3">
					<label for="JoinPassword1" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="joinPassword1">
					<p id="ppw" class="pred"></p>
				</div>
				<div class="mb-3">
					<label for="JoinPassword2" class="form-label">비밀번호 확인</label> 
					<input type="password" class="form-control" id="joinPassword2">
				</div>
				<div class="mb-3">
					<label for="JoinNickname" class="form-lable">닉네임</label>
					<input type="text" class="form-control" id="joinNickname">
					<p id="pnickname" class="pred"></p>
				</div>
				<div class="mb-3">
					<label for="JoinPhoneNum" class="form-lable">전화번호</label>
					<input type="tel" class="form-control" id="joinPhoneNum">
					<p id="pphnum" class="pred"></p>
				</div>
				<div class="mb-3">
					<label for="JoinBirth" class="form-lable">생년월일</label>
					<input type="date" class="form-control" id="joinBirth">
					<p id="pbirth" class="pred"></p>
				</div>
				
				<p style="text-align: center; font-size: 9px;">가입 시 이용약관, 개인정보 취급방침에 동의합니다.
				<input type="submit" class="btn btn-primary" style="width: 100%" value="가입하기">
			</form>
		</div>
		
		<!-- 연동 로그인 -->
		<div class="row">
			<div class="line">간편 회원가입</div>
			<div class="col" style="text-align: center">
				<img alt="" src="./img/icon/google.png" style="margin: 0px 10px;">
				<img alt="" src="./img/icon/kakao.png" style="margin: 0px 10px;">
			</div>
		</div>
	</div>
	
	
	<!-- footer -->
	<%@ include file="./tags/footer.jsp"%>

	<!-- 회원가입 폼 Script -->
	<script>
		function checkSubmit() {
			var email = document.getElementById("joinEmail").value;
			var pw = document.getElementById("joinPassword1").value;
			var pwcheck = document.getElementById("joinPassword2").value;
			var nickname = document.getElementById("joinNickname").value;
			var phnum = document.getElementById("joinPhoneNum").value;
			var birthday = document.getElementById("joinBirth").value;
			
			if(email == "") {
				document.getElementById("pid").innerHTML = "이메일을 입력해주세요.";
				return false;
			} else if(pw != pwcheck) {
				document.getElementById("ppw").innerHTML = "비밀번호가 일치하지 않습니다.";
				return false;
			} else if(pw == pwcheck && pw.length < 4) {
				document.getElementById("ppw").innerHTML = "비밀번호는 4글자 이상이여야 합니다.";
				return false;
			} else if(nickname == "" ) {
				document.getElementById("pnickname").innerHTML = "닉네임을 입력해주세요.";
				return false;
			} else if(phnum == "") {
				document.getElementById("pphnum").innerHTML = "전화번호를 입력해주세요.";
				return false;
			} else if(birthday == "") {
				document.getElementById("pbirth").innerHTML = "생년월일을 입력해주세요.";
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