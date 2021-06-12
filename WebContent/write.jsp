<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ include file="./isLogin.jsp"%> --%>
<%
String searchField = request.getParameter("searchField");//검색필드
String searchWord = request.getParameter("searchWord");//검색어
String queryStr = "";
if (searchWord != null) {
	//검색 파라미터 추가하기
	queryStr = "&searchField=" + searchField + "&searchWord=" + searchWord;
}
%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>파일첨부형 게시판</title>
<script type="text/javascript">
	function formValidate(f) {
		if (f.title.value == "") {
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		}
		if (f.content.value == "") {
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}
	}
</script>
</head>
<h2>와글와글</h2>
<form name="writeFrm" method="post" enctype="multipart/form-data"
<%-- 	action="./wagleboard/write.do?gu=${gu }" onsubmit="return formValidate(this);"> --%>
	action="./wagleboard/write.do" onsubmit="return formValidate(this);">
	<table border="1" width="90%">
		<tr>
			<td>작성자</td>
			<td><input type="text" name="id" style="width: 150px;"  value="${sessionScope.user_id }" readonly/></td>
			
				<!-- 
				EL태그에서는 키값으로 불러온다 %{키값} 영역에서 이름이 중복되면 
				가장 좁은영역의 값을 가져옴 이럴 경우 위에 코드처럼 영역을 지정해서 값을 가져오는 방법이 있다. 
				-->
				<%--<td><input type="text" name="name" style="width: 150px;"  value=" ${user_id }" readonly/></td> --%>

		</tr>
		<tr>
			<td>동네</td>
			<td><input type="text" name="gu" style="width: 150px;"  value="${gu }" readonly/></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" style="width: 90%;" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" style="width: 90%; height: 100px;"></textarea>
			</td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td><input type="file" name="ofile" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">작성완료</button>
				<button type="reset">RESET</button>
				<button type="button" onclick="location.href='../wagleboard/list.do'">
					리스트바로가기</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>

