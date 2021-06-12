<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="list_navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/main.css" />
<link type="text/css" rel="stylesheet" href="../css/list.css" />
<link type="text/css" rel="stylesheet" href="../css/view.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>
	<form method="get">
		<div class="container">
			<div>
				<span class="input_font"> 와글와글 </span>
			</div>

			<div class="list_input">
				<input type="text" class="input_search" />
				<button type="submit" class="btn btn-danger list_submit">검색</button>
			</div>

			<div class="main_login">
				<c:choose>
					<c:when test="${user_id eq null}">
						<a href="../wagleMember/login.do" style="color: black">로그인/회원가입</a>
					</c:when>
					<c:otherwise>
						<a href="../wagleMember/logout.do" style="color: black">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<div class="view_content_container">
			<div class="view_box">
<!-- 				<div class="list_line"></div> -->
				<div class="view_content_header">
					<div class="view_content_title">
						<span style="font-family: 'Nanum Gothic', sans-serif; font-size:18px;">&nbsp;&nbsp;&nbsp;${dto.title }</span>
						<span style="font-family: 'Nanum Gothic', sans-serif; font-size:12px; position: right;">${dto.postdate }</span>
					</div>
					<div>
						<span>${dto.id }</span>
					</div>
				</div>
				<div class="view_content_box">
					<article>${dto.content }</article>
				</div>
				<div class="view_content_bottom">콘텐츠바텀</div>
				<div class="view_comment_box">댓글</div>
			</div>
		</div>

	</form>
</body>
<%@ include file="footer.jsp"%>
</html>