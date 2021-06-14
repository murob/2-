<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
	<nav class="navbar bg-dark navbar-dark main_nav"
		style="position: fixed; top: 0%; left: 0%; right: 0%">
		<a class="navbar-brand" href="../main.jsp"
			style="font-family: Nanum Pen Script; font-size: 40px">와글와글</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> 동네게시판 </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="./list.do?gu=강남">강남구
							게시판</a> <a class="dropdown-item" href="./list.do?gu=강동">강동구
							게시판</a> <a class="dropdown-item" href="./list.do?gu=강북">강북구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=강서">강서구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=관악">관악구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=광진">광진구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=구로">구로구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=금천">금천구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=노원">노원구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=도봉">도봉구게시판</a> <a
							class="dropdown-item" href="./list.do?gu=동대문">동대문구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=동작">동작구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=마포">마포구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=서대문">서대문구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=서초">서초구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=성동">성동구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=성북">성북구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=송파">송파구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=양천">양천구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=영등포">영등포구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=용산">용산구
							게시판</a> <a class="dropdown-item"
							href="./list.do?gu=은평">은평구 게시판</a> <a
							class="dropdown-item" href="./list.do?gu=종로">종로구
							게시판</a> <a class="dropdown-item" href="./list.do?gu=중">중구
							게시판</a> <a class="dropdown-item" href="./list.do?gu=중랑">중랑구
							게시판</a>
					</div></li>

				<li class="nav-item"><a class="nav-link" href="#">핫게시물 게시판</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="#">동네 중고장터
						게시판</a></li>

				<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>