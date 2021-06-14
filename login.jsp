<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="./css/login.css" />
<script src="../common/jquery/jquery-3.6.0.js"></script>
</head>
<body>
	<%
	if (session.getAttribute("USER_ID") == null) {
	%>
	<script>
		function loginValidate(fn) {
			if(!fn.user_id.value)
			{
				alert("아이디를 입력하세요");
				fn.user_id.focus();
				return false;
			}
			else if (fn.user_pass.value == "") {
				alert("패스워드를 입력하세요");
				fn.user_pass.focus();
				return false;
			}
		}
	</script>
	<form action="./wagleMember/login.do" method="post" name="loginFrm"
		onsubmit="return loginValidate(this);">
		<div class="container">
			<div class="inner_container">
				<div
					style="font-family: Nanum Pen Script; font-size: 60px; text-align: center">와글와글</div>
				<div class="input-group mb-3">
					<input type="text" name="user_id" class="form-control"
						placeholder="아이디">
				</div>
				<div class="input-group mb-3">
					<input type="text" name="user_pass" class="form-control"
						placeholder="비밀번호">
				</div>
				<button type="submit" id="login" class="btn btn-danger btn-block">로그인</button>
				<div class="login_regist">
					<a href="registForm.jsp">회원가입</a>
				</div>
			</div>
		</div>
	</form>
	<%
}else{
%>
	<div>로그인성공ㅎㅎ</div>
	<% } %>
</body>
<%@ include file="footer.jsp"%>
</html>