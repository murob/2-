<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(session.getAttribute("user_id")==null){
		//로그인 정보가 없다면 로그인 페이지로 이동한다. 
		JSFunction.alertLocation("로그인 후 이용해주십시요.", 
				"./login.jsp", out);
		
	
	}
	else{
		if(request.getParameter("gu")==(String)session.getAttribute("gu")){
			request.getRequestDispatcher("./write.jsp");
		}
		else{
			JSFunction.alertBack(response, "해당 구역 주민이 아닙니다.");
		}
	}
%> 
