<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function commentValidate(f){
	if(f.pass.value==""){
		alert("비밀번호를 입력하세요");
		f.pass.focus();
		return false;
	}
	if(f.comments.value==""){
		alert("수정할 댓글 내용을 입력하세요");
		f.comments.focus();
		return false;
	}
}
</script>
<h2>댓글수정</h2>
<form name="commentFrm" method="post" action="./commentEditAction.comm" onsubmit="return commentValidate(this);">
<input type="hidden" name="idx" value="${param.idx }" />
<input type="hidden" name="board_idx" value="${param.board_idx }" />
<table border="1" width="90%">
	<colgroup>
		<col width="30%"/>
		<col width="40%"/>
		<col width="*"/>
	</colgroup>
	<tr>
		<td>작성자 : <input type="text" name="id" size="10" value="${dto.id }" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea name="comments" style="width:100%;height:70px;">${dto.comments }</textarea>
		</td>
		<td><input type="submit" value="댓글수정" style="width:80px;height:77px;" /></td>
	</tr>
</table>
</form>
</body>
</html>