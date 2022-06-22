<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!-- 이 페이지에서 JSTL을 사용하겠다는 태그라이브러리 선언문 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><!-- jstl function쓸떄 선언문 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="storegamelist" value="${requestScope.storegamelist }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
	<!-- 정렬하기 + 총개수  -->
	<section class="store-range">
		<ul class="nav nav-pills">
			<li class="store-nav">
				<p class="store-nav-p">정렬기준</p>
			</li>
			<li class="store-nav dropdown"><select
				class="form-select store-form-select"
				aria-label="Default select example">
					<option selected>사전순</option>
					<option value="1">인기순</option>
					<option value="2">추천순</option>
					<option value="3">가격: 오름차순</option>
					<option value="4">가격: 내림차순</option>
			</select></li>
		</ul>
		<div class="store-nav">
			<p class="store-nav-p">
				총 개수 <span>${totalCnt }</span>개
			</p>
		</div>
	</section>
	<!-- 게임 썸네일 -->
	<div class="row row-cols-1 row-cols-md-6 g-4 store-row">
		<c:choose>
			<c:when test="${storegamelist != null and fn:length(storegamelist) > 0 }">
				<c:forEach var="gamelist" items="${storegamelist }">
					<div class="col">
						<a class="card h-100 store-card" href="/gamedetail.jsp"> <img
							src="./img/games/indi/sims/indi-thumbnail-sims.jpg"
							class="card-img-top" alt="...">
							<div class="card-body store-card-body">
								<h5 class="card-title">${gamelist.game_name }</h5>
								<p class="card-text">${gamelist.game_price }</p>
							</div>
						</a>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				찾으시는 게임이 없습니다.
			</c:otherwise>
		</c:choose>
		
		
	</div>
</body>
</html>