<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="main_navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<script src="../common/jquery/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="./css/main.css" />
<script>
	$(function() {
		$("#search").click(function() {
			var f = document.getElementById("sForm");
			if (f.gu.value == "") {
				alert("동네를 입력해주세요");
				f.search_dongnae.focus();
				return false;
			}
			if (f.gu.value != "") {
				var gu = f.search_dongnae.value
				return gu;
			}
		});
	});
</script>
</head>
<body>
	<form method="get" id="sForm" action="./wagleboard/list.do?gu=">
		<div class="main_box">		
			<div class="main_container">
				<div>
					<span class="input_font"> 와글와글 </span>
				</div>
	
				<div class="main_input">
					<input type="text" name="gu" class="input_search"
						placeholder="동네 검색" />
					<button type="submit" id="search" class="btn btn-danger main_submit">검색</button>
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
		</div>
 
		<div class="ad_container">
			<!-- 		<div class="slide"> -->
			<div class="main_ad slide">
				<ul>
					<li><span>안녕하세요</span></li>
					<li><span>광고주님들</span></li>
					<li><span>연락주세요</span></li>
					<li><span>사랑합니다</span></li>
				</ul>
			</div>
		</div>
		
 		 
		<hr width="1050px" color="#E4E5E7" noshade style="margin-left: 430px; margin-top: 30px;"/>
		<div class="main_board">
			<div class="hot_board">
				<div style="height: 55px; display: flex; justify-content: center;">
					<div>
						<ul class="pagination pagination-md" style="">
							<li class="page-item"><a class="page-link" href="#">◁</a></li>
							<li class="page-item"><a class="page-link" href="#">강남</a></li>
							<li class="page-item"><a class="page-link" href="#">강동</a></li>
							<li class="page-item"><a class="page-link" href="#">강북</a></li>
							<li class="page-item"><a class="page-link" href="#">강서</a></li>
							<li class="page-item"><a class="page-link" href="#">관악</a></li>
							<li class="page-item"><a class="page-link" href="#">광진</a></li>
							<li class="page-item"><a class="page-link" href="#">서초</a></li>
							<li class="page-item"><a class="page-link" href="#">▷</a></li>
						</ul>
					</div>
				</div>
				<div> 
					<ul>
						<li>
							<a href=""> 
								<strong>강남구 제목임</strong><br />
								<span>
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용...
								</span><br />
								<span style="font-size: 13px;">강남구 게시판</span> 
								<span style="font-size: 13px; color: gray;">2021-06-14</span>
							</a><br /><br />
							<a href=""> 
								<strong>관악구 제목임</strong><br />
								<span>
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용...
								</span><br />
								<span style="font-size: 13px;">관악구 게시판</span> 
								<span style="font-size: 13px; color: gray;">2021-06-14</span>
							</a><br /><br />
							<a href=""> 
								<strong>금천구 제목임</strong><br />
								<span>
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용내용<br />
									내용내용내용내용내용내용내용내용내용내용내용내용...
								</span><br />
								<span style="font-size: 13px;">금천구 게시판</span> 
								<span style="font-size: 13px; color: gray;">2021-06-14</span>
							</a><br /><br />							
						</li>
					</ul>
				</div>
			</div>
			<div class="sale_board">여기는 중고장터</div>
		</div>

		<div class="main_gulist">
			<div class="gu_list">구별 리스트</div>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>
