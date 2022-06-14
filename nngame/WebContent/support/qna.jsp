<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Support</title>

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
	<main class="qna_board">
	<h1 class="qna_board-title">고객지원</h1>
	<table class="table table-dark table-sm table-hover qna_table">
		<thead>
			<tr>
				<th scope="col">No.</th>
				<th scope="col">문의 형태</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">문의 날짜</th>
				<th scope="col">진행 상황</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="supportBean" items="${support_list}">			
				<tr>
					<th scope="row">${supportBean.support_num}</th>
					<td>${supportBean.support_type}</td>
					<td><a href="qna_detail.jsp">${supportBean.support_title} </a></td>
					<td>작성자 필요</td>
					<td>${supportBean.support_date}</td>
					<td>${supportBean.support_result}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<button type="submit" class="btn submit-btn"
		onclick="location.href='qna_write.jsp'">글쓰기</button>
	</main>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>