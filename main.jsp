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
<style>
/* footer { */
/* 	margin-top: 100px; */
/* } */
/* .body{ */
/* 	overflow-x: hidden; */
/* } */
/* .container { */
/* 	display: flex; */
/* 	justify-content: space-between; */
/* 	align-items: center; */
/* 	width: 1050px; */
/* 	height: 200px; */
/* 	margin-top: 80px; */
/* } */

/* .input_font { */
/* 	font-family: "Nanum Pen Script"; */
/* 	font-size: 50px; */
/* 	float: left; */
/* 	width: 150px; */
/* 	display: flex; */
/* 	justify-content: center; */
/* } */

/* .main_input { */
/* 	display: flex; */
/* } */

/* .input_search { */
/* 	width: 450px; */
/* 	height: 60px; */
/* 	border-radius: 5px; */
/* 	border-color: tomato; */
/* 	margin-left: 20px; */
/* } */

/* .main_submit { */
/* 	font-size: 15px; */
/* 	width: 60px; */
/* } */

/* .main_login{ */
/* 	margin-right: 50px; */
/* } */

/* .ad_container { */
/* 	height: 300px; */
/* 	width: 100%; */
/* 	display: flex; */
/* 	justify-content: center; */
/* 	align-items: center; */
/* 	text-align: center; */
/* } */

/* .main_ad { */
/* 	width: 1050px; */
/* 	height: 300px; */
/* } */

/* .main_board { */
/* 	border: 1px solid; */
/* 	margin-top: 50px; */
/* 	display: flex; */
/* 	justify-content: center; */
/* 	height: 500px; */
/* 	text-align: center; */
/* } */

/* .hot_board { */
/* 	border: 1px solid; */
/* 	display: inline-block; */
/* 	width: 525px; */
/* } */

/* .sale_board { */
/* 	border: 1px solid; */
/* 	display: inline-block; */
/* 	width: 525px; */
/* } */

/* .main_gulist { */
/* 	border: 1px solid; */
/* 	margin-top: 50px; */
/* 	display: flex; */
/* 	justify-content: center; */
/* 	text-align: center; */
/* } */

/* .gu_list { */
/* 	border: 1px solid; */
/* 	width: 1050px; */
/* 	height: 300px; */
/* } */

/* .main_copyright { */
/* 	display: flex; */
/* 	justify-content: center; */
/* 	text-align: center; */
/* } */
</style>
<style>
/*   *{margin:0;padding:0;} */
/*   ul,li{list-style:none;} */
/*   .slide{height:300px;overflow:hidden;} */
/*   .slide ul{width:calc(100% * 4);display:flex;animation:slide 20s infinite;} /* slide를 8초동안 진행하며 무한반복 함 */
*
/
/*   .slide li{width:calc(100% / 4);height:300px;} */
/*   .slide li:nth-child(1){background:#ffa;} */
/*   .slide li:nth-child(2){background:#faa;} */
/*   .slide li:nth-child(3){background:#afa;} */
/*   .slide li:nth-child(4){background:#aaf;} */
/*   @keyframes slide { */
/*     0% {margin-left:0;} /* 0 ~ 10  : 정지 */

 

*
/
/*     10% {margin-left:0;} /* 10 ~ 25 : 변이 */

 

*
/
/*     25% {margin-left:-100%;} /* 25 ~ 35 : 정지 */

 

*
/
/*     35% {margin-left:-100%;} /* 35 ~ 50 : 변이 */

 

*
/
/*     50% {margin-left:-200%;} */
/*     60% {margin-left:-200%;} */
/*     75% {margin-left:-300%;} */
/*     85% {margin-left:-300%;} */
/*     100% {margin-left:0;} */
/*   } */
</style>
</head>
<body>
	<form method="get" id="sForm" action="./wagleboard/list.do?gu=">
		<div class="container">
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
