<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>GuList</title>
<link type="text/css" rel="stylesheet" href="../css/list.css" />
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
	<form method="get">
		<nav class="navbar bg-dark navbar-dark main_nav"
			style="position: fixed">
			<a class="navbar-brand" href="..\main.jsp"
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
							<a class="dropdown-item" href="../wagleboard/list.do?gu=강남">강남구
								게시판</a> <a class="dropdown-item" href="../wagleboard/list.do?gu=강동">강동구
								게시판</a> <a class="dropdown-item" href="../wagleboard/list.do?gu=강북">강북구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=gangseo">강서구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=관악">관악구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=gwangjin">광진구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=구로">구로구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=geumcheon">금천구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=노원">노원구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=dobong">도봉구게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=동대문">동대문구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=dongjak">동작구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=마포">마포구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=seodaemoon">서대문구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=서초">서초구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=seongdong">성동구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=성북">성북구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=songpa">송파구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=양천">양천구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=youngdeungpo">영등포구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=용산">용산구
								게시판</a> <a class="dropdown-item"
								href="../wagleboard/list.do?gu=eunpyeong">은평구 게시판</a> <a
								class="dropdown-item" href="../wagleboard/list.do?gu=종로">종로구
								게시판</a> <a class="dropdown-item" href="../wagleboard/list.do?gu=중">중구
								게시판</a> <a class="dropdown-item" href="../wagleboard/list.do?gu=중랑">중랑구
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
		<br />

		<!--     <form> -->
		<div class="container">
			<div>
				<span class="input_font"> 와글와글 </span>
			</div>

			<div class="list_input">
				<input type="text" class="input_search" />
				<button type="submit" class="btn btn-danger list_submit">검색</button>
			</div>

			<div class="list_login">
				<a href="" style="color: black">로그인/회원가입</a>
			</div>
		</div>
		<!--     </form> -->


		<!--     <form method="get"> -->
		<div class="list_content">
			<div class="content_header">
				<div>
					<a href="#" class="content_title_name">${map.get("gu") }구 - OO게시판</a>
					<div class="list_line"></div>
					<table border="1" width="100%">
						<tr>
							<td align="center"><select name="searchField">
									<option value="title">제목</option>
									<option value="content">내용</option>
							</select> <input type="text" name="searchWord" /> <input type="submit"
								value="검색하기" /></td>
						</tr>
					</table>


					<!-- 목록 출력을 위한 테이블 -->
					<table border="1" width="100%">
						<tr align="center">
							<th width="10%">번호</th>
							<th width="*%">제목</th>
							<th width="15%">작성자</th>
							<th width="15%">조회</th>
							<th width="10%">작성일</th>
							<th width="8%">추천</th>
						</tr>
						<!-- 게시물 출력 부분을 JSTL로 변경함 -->
						<c:choose>
							<c:when test="${empty boardLists }">
								<!-- 등록된 게시물이 없을때. -->
								<tr>
									<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<!-- 게시물이 있는 경우 확장 for문 형태의 forEach태그 사용함. -->
								<c:forEach items="${boardLists }" var="row" varStatus="loop">
									<tr align="center">
										<td>
											<!-- 가상번호 --> 
											${map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
										</td>
										<td align="center"><a
											href="../wagleboard/view.do?idx=${row.idx }" style="font-size: 16px">${row.title }</a>
										</td>
										<td>${row.id }</td>
										<td>${row.visitcount }</td>
										<td>${row.postdate }</td>
										<td>
											<!-- 첨부된 파일이 있는 경우에만 다운로드 링크 출력됨. --> <c:if
												test="${not empty row.ofile }">
												<!-- 파일 다운로드 시 다운로드 횟수를 증가해야 하므로
							게시물의 일련번호가 필요함. -->
												<a
													href="../wagleboard/download.do?ofile=${row.ofile }&sfile=${row.sfile}&idx=${row.idx}">[Down]</a>
											</c:if>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
					<table border="1" width="100%">

						<tr align="center">
							<td>
								<!-- 컨트롤러에서 map에 저장한 페이지번호 문자열 출력 --> 
								${map.pagingImg }
							</td>
							<td width="100"><button type="button"
									onclick="location.href='../wagleboard/write.do';">글쓰기</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>

</body>
<footer>
	<div
		class="
        row
        border border-dark border-bottom-0 border-right-0 border-left-0
      "></div>
	<div class="main_copyright">
		<div class="copyright">
			<h3 style="font-family: Nanum Pen Script; font-size: 50px">와글와글</h3>
			대표이사 : 성승현&nbsp;&nbsp;Email : seong7517@gmail.com&nbsp;&nbsp; Mobile
			: 010-4081-7517&nbsp;&nbsp; Address : 서울시 금천구 금하로 <br /> copyright
			&copy; 승현소프트웨어 All right reserved.
		</div>
	</div>
</footer>
</html>