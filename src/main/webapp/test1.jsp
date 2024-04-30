<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String pageData = (String) pageContext.getAttribute("test");
String requestData = (String) request.getAttribute("test");
String sessionData = (String) session.getAttribute("test");
String applicationData = (String) application.getAttribute("test");

out.print(String.format("pageData : <p>%s</p>", pageData));
out.print(String.format("requestData : <p>%s</p>", requestData));
out.print(String.format("sessionData : <p>%s</p>", sessionData));
out.print(String.format("applicationData : <p>%s</p><br>", applicationData));

%>

<!-- JSP El(Expression language) Tag -->
<p>${pageScope.test}</p>
<p>${requestScope.test}</p>
<p>${sessionScope.test}</p>
<p>${applicationScope.test}</p><br>

<!-- Default 참조 영역 확인용 : request > session > application -->
<p>${test}</p>


<button onclick="location.href='test2.jsp'">Test2로 이동</button>
</body>
</html>