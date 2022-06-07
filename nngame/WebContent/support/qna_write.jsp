<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>고객지원</title>

<!-- bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<!-- 페이지 css -->
<link rel="stylesheet" href="/css/style.css" />

</head>
<body>
	<!-- header -->
	<%@ include file="/tags/header.jsp"%>

	<!-- main -->
	<main class="qna_write">
	<div>
		<div class="qna_write-title">문의</div>
		<div class="qna_write-box">
			<select class="form-select qna_form-select checkSelect"
				aria-label="Default select example">
				<option value="0" selected>---문의 내용을 선택해주세요---</option>
				<option value="1">환불</option>
				<option value="2">기타</option>
			</select>
		</div>
	</div>
	<div>
		<div class="qna_write-title">제목</div>
		<div class="qna_write-box">
			<div class="form-floating">
				<input type="text" class="form-control checkTitle"
					id="floatingInput" placeholder="name@example.com"
					style="width: 600px;"> <label for="floatingInput">title</label>
			</div>
		</div>
	</div>
	<div>
		<div class="qna_write-title">내용</div>
		<div class="qna_write-box">
			<div class="form-floating">
				<textarea class="form-control checkComments"
					placeholder="Leave a comment here" id="floatingTextarea2"
					style="height: 300px; width: 600px;"></textarea>
				<label for="floatingTextarea2">Comments</label>
			</div>
		</div>
	</div>
	<div class="qna_write-box">
		<form action="qna.jsp" class="checkForm" method="post">
			<button type="submit" class="btn submit-btn" value="access">확인</button>
			<button type="button" class="btn submit-btn" value="cancel" onclick="history.back()">취소</button>
		</form>
	</div>
	</main>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>

	<!-- 글 작성 validation 체크 -->
	<script src="/js/qna/qna_write.js"></script>

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>