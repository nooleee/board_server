
<%@page import="boardServer.user.module.UserResponseDto"%>
<%@page import="java.util.List"%>
<%@page import="boardServer.user.module.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="root">
	<%
	// JSP 내장 객체의 유효기간 (Scope)
	pageContext.setAttribute("test", "page data");
	request.setAttribute("test", "request data");
	session.setAttribute("test", "session data");
	application.setAttribute("test", "page data");
	
	// 페이지 이동 처리 1)
	// ㄴ 단순 페이지 이동 처리 (url 변화 o)
	// response.sendRedispatcher("test1.jsp");
	
	// 페이지 이동 처리 2)
	// ㄴ request&response 객체를 전달하면서 이동 처리 (url의 변화 X)
	request.getRequestDispatcher("test1.jsp").forward(request, response);
	%>
	</section>
</body>
</html>