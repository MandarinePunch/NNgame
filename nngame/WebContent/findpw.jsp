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

<title>패스워드 찾기</title>
</head>

<body>
	<!-- header-->
	<%@ include file="./tags/header.jsp"%>
	<div style="padding: 20px"></div>

	<!-- mainContents -->
	<div class="container"
		style="padding: 10px; width: 40%; height: auto; color: white;">
		<!-- PwFind Form -->
		<div class="row">
			<h1>비밀번호 찾기</h1>
			<form action="" onsubmit="return checkId()">
				<div class="mb-3">
					<label for="findPwEmail" class="form-label">이메일을 입력해주세요.</label>
					<input type="email" class="form-control" id="findPwEmail" aria-describedby="emailHelp">
					<p id="fp_id" style="color: red;"></p>
				</div>
				<input type="submit" class="btn btn-primary" style="width: 100%" value="비밀번호 찾기">
			</form>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="./tags/footer.jsp"%>

	<!-- 이메일 누락 체크 Script -->
	<script>
		function checkId(){
			var id = document.getElementById("findPwEmail").value;
			
			if(id == "") {
				document.getElementById("fp_id").innerHTML = "이 항목은 비워둘 수 없습니다.";
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