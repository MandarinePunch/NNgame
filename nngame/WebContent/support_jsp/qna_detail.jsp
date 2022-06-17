<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<label class="qna_write-title">작성자</label>
			<div class="qna_write-box">
				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="name@example.com" style="width: 600px;" value="작성자 필요"
						disabled> <label for="floatingInput">name</label>
				</div>
			</div>
		</div>
		<div>
			<label class="qna_write-title">문의</label>
			<div class="qna_write-box">
				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="name@example.com" style="width: 600px;" value="${supportDTO.support_type }"
						disabled> <label for="floatingInput">inquiry</label>
				</div>
			</div>
		</div>
		<div>
			<label class="qna_write-title">제목</label>
			<div class="qna_write-box">
				<div class="form-floating">
					<input type="text" class="form-control" id="floatingInput"
						placeholder="name@example.com" style="width: 600px;" value="${supportDTO.support_title }"
						disabled> <label for="floatingInput">title</label>
				</div>
			</div>
		</div>
		<div>
			<label class="qna_write-title">내용</label>
			<div class="qna_write-box">
				<div class="form-floating">
					<textarea class="form-control" placeholder="Leave a comment here"
						id="floatingTextarea2" style="height: 300px; width: 600px;"
						disabled>${supportDTO.support_content }</textarea>
					<label for="floatingTextarea2">Comments</label>
				</div>
			</div>
		</div>
			<div class="qna_write-box qna__btn-box">
				<button type="button" class="btn submit-btn" onclick="location.href='/support/List'">목록</button>
				<!-- post방식으로 바꾸자 -->
				<form action="/support/update" method="post">
					<button type="submit" class="btn submit-btn">수정</button>
					<input type="hidden" name="support_num" value="${supportDTO.support_num }">				
				</form>
				<form action="/support/delete" method="post" class="deleteForm">
					<button type="submit" class="btn submit-btn deleteBtn">삭제</button>
					<input type="hidden" name="support_num" value="${supportDTO.support_num }">
				</form>
			</div>
	</main>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>
	
	<!-- 구현 거의 다되면 분리시킬것 -->
	<script>
		const deleteForm = document.querySelector(".deleteForm");
	
		function deleteConfirm(event) {
			let result = confirm("정말 삭제하시겠습니까?");
			
			if(!result){				
				event.preventDefault();
			} 
		}
		
		deleteForm.addEventListener("submit", deleteConfirm);
	</script>

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>