<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="list_navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../css/main.css" />
<link type="text/css" rel="stylesheet" href="../css/list.css" />
<link type="text/css" rel="stylesheet" href="../css/view.css" />
<script>//댓글목록
function commentEdit(idx, board_idx){
	window.open('./commentEdit.comm?idx='+idx+'&board_idx='+board_idx,'commentPop','top=0,left=0,width=700,height=300');			
}
function commentDelete(idx, board_idx){
	window.open('./commentDelete.comm?idx='+idx+'&board_idx='+board_idx,'commentPop','top=0,left=0,width=700,height=300');	
}
</script>
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

		<input type="hidden" name="gu" value="${dto.gu }" />
		<div class="view_content_container">
			<div class="view_box">
				<!-- 				<div class="list_line"></div> -->
				<div class="view_content_header">
					<div class="view_content_title">
						<span
							style="font-family: 'Nanum Gothic', sans-serif; font-size: 22px;">${dto.title }</span>

						<span
							style="font-family: 'Nanum Gothic', sans-serif; font-size: 12px; position: right;">${dto.postdate }</span>
					</div>
					<div class="view_title_id">
						<span>${dto.id }</span>
					</div>
				</div>
				<div class="view_content_box">
					<article>${dto.content }</article>
				</div>
				<div class="view_content_bottom">
					<div class="view_bottom_btn">
						<button type="button" class="btn btn-outline-primary"
							onclick="location.href='../wagleboard/edit.do?idx=${dto.idx}&id=${dto.id }'">수정하기</button>
						<button type="button" class="btn btn-outline-danger"
							onclick="location.href='../wagleboard/delete.do?idx=${dto.idx}&id=${dto.id }'">삭제하기</button>
					</div>
				</div>
				<div class="view_comment_box">
					<!--  
					HTML5에서 지원하는 앵커(Ancher)기능으로 해당 페이지에서 특정
					위치를 로드하고 싶을때 아래와같이 <a태그에 name속성을 부여한다. 
					사용시에는 쿼리스트링 마지막에 #앵커명 형태로 사용하면 된다. 
					-->
					<div class="view_comment">
						<c:choose>
							<c:when test="${empty comments }">
								<tr>
									<td colspan="3" align="center">등록된 댓글이 없습니다^^*</td>
								</tr>
							</c:when>
							<c:otherwise>
								<div class="view_comment_list">
									<c:forEach items="${comments }" var="row" varStatus="loop">
										<div class="view_comment_list_id">
											<span style="font-size: 20px;">${row.id }</span> 
											<span style="font-size: 14px; color: #6B6B6B;">${row.postdate }</span>
										</div>
										<div class="view_comment_list_btn" >
											<div style="float: left;">${row.comments }</div>
											<div style="display: inline-block;">
												<button type="button"  class="btn btn-primary btn-sm"
													onclick="commentEdit(${row.idx }, ${row.board_idx });">수정</button>
												<button type="button" class="btn btn-danger btn-sm"
													onclick="commentDelete(${row.idx }, ${row.board_idx });">삭제</button>
											</div>
										</div>
									</c:forEach>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</form>
	<form name="commentFrm" method="post" action="./commentWrite.comm"
		onsubmit="return commentValidate(this);">
		<input type="hidden" name="board_idx" value="${param.idx }" /> <input
			type="hidden" name="gu" value="${dto.gu }" /> <input type="hidden"
			name="id" value="${id }" />
		<div class="view_comment_write_box">
			<div class="form-group view_comment_write">
				<div>
					<label for="comment">댓글 쓰기</label>
				</div>
				<div class="view_comment_btn">
					<div style="width: 100%;">
						<textarea class="form-control" rows="3" name="comments"></textarea>
					</div>
					<div>
						<button type="submit" class="btn btn-primary"
							style="width: 85px; height: 85px;">등록</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>