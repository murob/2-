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
		
		<!-- 상단 검색대 그룹 -->  
		<div class="view_container_box">
			<div class="view_container">
				<div>
					<span class="view_input_font"> 와글와글 </span> 
				</div>
	
				<div class="view_list_input">
					<input type="text" class="view_input_search" />
					<button type="submit" class="btn btn-danger view_list_submit">검색</button>
				</div>
	
				<div class="view_login">
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
		</div>
		
		<!-- 본문 -->
		<input type="hidden" name="gu" value="${dto.gu }" />
		<!-- 본문출력 상위 div -->
		<div class="view_content_container">
			
			<!-- 본문출력 2번째 상위 div -->
			<div class="view_box">
				
				<!-- 게시글출력 -->
				<!-- 글의 제목/게시일/아이디 -->
				<div class="view_content_header">
					<!-- 제목/게시일 -->
					<div class="view_content_title">
						<span style="font-family: 'Nanum Gothic', sans-serif; font-size: 22px;">${dto.title }</span>
						<span style="font-family: 'Nanum Gothic', sans-serif; font-size: 12px;">${dto.postdate }</span>
					</div>
					<!-- 아이디 -->
					<div class="view_title_id">
						<span>${dto.id }</span>
					</div>
				</div>
				
				<!-- 본문내용 -->
				<div class="view_content_box">
					<article>${dto.content }</article>
				</div>
				
				<!-- 수정삭제 버튼 -->
				<div class="view_content_bottom">
					<div class="view_bottom_btn">
						<button type="button" class="btn btn-outline-primary" onclick="location.href='../wagleboard/edit.do?idx=${dto.idx}&id=${dto.id }'">수정하기</button>
						<button type="button" class="btn btn-outline-danger" onclick="location.href='../wagleboard/delete.do?idx=${dto.idx}&id=${dto.id }'">삭제하기</button>
					</div>
				</div>
			</div>
		</div>
		<div class="view_comment_box">
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