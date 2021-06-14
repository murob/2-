<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="list_navbar.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>GuList</title>
<link type="text/css" rel="stylesheet" href="../css/main.css" />
<link type="text/css" rel="stylesheet" href="../css/list.css" />
<script src="../common/jquery/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#search").click(function() {
		var f = document.getElementById("sForm");
		if(f.gu.value ==""){
			alert("동네를 입력해주세요");
			f.search_dongnae.focus();
			return false;
		}
		if(f.gu.value != ""){
			var gu = f.search_dongnae.value
			return gu;
		}
		});
	});
</script>
</head>
<body>

	<form method="get" id="sForm" action="./list.do?gu=">
		<div class="container">
			<div>
				<span class="input_font"> 와글와글 </span>
			</div>

			<div class="list_input">
				<input type="text" name="gu" class="input_search" />
				<button type="submit" id="search" class="btn btn-danger list_submit">검색</button>
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
		<!--     </form> -->


		<!--     <form method="get"> -->
		<div class="list_content">
			<div class="content_header">
				<div>
					<a href="#" class="content_title_name">${gu }구
						게시판</a>
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
											href="../wagleboard/view.do?idx=${row.idx }"
											style="font-size: 16px">${row.title }</a></td>
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
<%-- 							<c:set var="success_route">location.href='../write.jsp';</c:set> --%>
<%-- 							<c:set var="fail_route">location.href='../login.jsp';</c:set> --%>
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${user_id!=null }"></c:when> --%>
<%-- 							</c:choose> --%> 
							<td width="100"><button type="button" id="write_btn"
									onclick="location.href='../wagleboard/write.do?gu=${map.get('gu')}'">글쓰기</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>

</body>
<%@ include file="footer.jsp"%>
</html>