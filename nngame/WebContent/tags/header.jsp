<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark">
			<div class="container-fluid">
				<a class="navbar-brand header__nav-brand" href="/index.jsp"> 
					<img src="/img/logo/logo.png">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item header__nav-item"><a class="nav-link active"
							aria-current="page" href="/store.jsp">스토어</a></li>
						<li class="nav-item header__nav-item"><a class="nav-link active"
							aria-current="page" href="/support/qna.jsp">고객지원</a></li>
						<li class="nav-item header__nav-item"><a class="nav-link active"
							aria-current="page" href="/library.jsp">라이브러리</a></li>
					</ul>
					<form class="d-flex">
						<input class="header__search me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">
							<i class="fa-solid fa-magnifying-glass"></i>
						</button>
					</form>
					<ul class="navbar-nav">
						<li class="nav-item header__nav-item"><a class="nav-link active"
							aria-current="page" href="/cart.jsp"> <i
								class="fa-solid fa-cart-shopping"></i></a></li>
						<li class="nav-item header__nav-item"><a class="nav-link active"
							aria-current="page" href="/login/login.jsp"><i class="fa-solid fa-user"></i></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	<!-- fontawesome 아이콘 (fontawesome 아이콘 쓰고 싶으면 이 스크립트 복붙해서 쓰면 됩니다.) -->
	<script src="https://kit.fontawesome.com/516437ec88.js" crossorigin="anonymous"></script>
</body>
</html>