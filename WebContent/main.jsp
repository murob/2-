<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="main_navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<!-- <link type="text/css" rel="stylesheet" href="../css/main.css" /> -->
<style>
footer {
	margin-top: 100px;
}

.container {
	border: 1px solid tomato;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 1200px;
	margin-top: 100px;
}

.input_font {
	font-family: "Nanum Pen Script";
	font-size: 40px;
	float: left;
	border: 1px solid;
	width: 100px;
}

.main_input {
	display: flex;
}

.input_search {
	width: 400px;
	height: 40px;
	border-radius: 5px;
	border-color: tomato;
	margin-left: 20px;
}

.main_submit {
	margin-right: 20px;
	font-size: 5px;
	width: 60px;
}

.ad_container {
	height: 300px;
	margin-top: 50px;
	border: 2px solid;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.main_ad {
	border: 1px solid;
	width: 1200px;
	height: 280px;
}

.main_board {
	border: 1px solid;
	margin-top: 50px;
	display: flex;
	justify-content: center;
	height: 500px;
	text-align: center;
}

.hot_board {
	border: 1px solid;
	display: inline-block;
	width: 600px;
}

.sale_board {
	border: 1px solid;
	display: inline-block;
	width: 600px;
}

.main_gulist {
	border: 1px solid;
	margin-top: 50px;
	display: flex;
	justify-content: center;
	text-align: center;
}

.gu_list {
	border: 1px solid;
	width: 1200px;
	height: 300px;
}

.main_copyright {
	display: flex;
	justify-content: center;
	text-align: center;
}
</style>
</head>
<body>
	<form method="get">
		<div class="container">
			<div>
				<span class="input_font"> 와글와글 </span>
			</div>

			<div class="main_input">
				<input type="text" class="input_search" placeholder="동네 검색" />
				<button type="submit" class="btn btn-danger main_submit">검색</button>
			</div>

			<div class="main_login">
				<c:choose>
					<c:when test="${user_id eq null}">
						<a href="./wagleMember/login.do" style="color: black">로그인/회원가입</a>					
					</c:when>
					<c:otherwise>
						<a href="./wagleMember/logout.do" style="color: black">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<div class="ad_container">
			<div class="main_ad">광고배너</div>
		</div>

		<div class="main_board">
			<div class="hot_board">여기는 게시물</div>
			<div class="sale_board">여기는 중고장터</div>
		</div>

		<div class="main_gulist">
			<div class="gu_list">구별 리스트</div>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>
