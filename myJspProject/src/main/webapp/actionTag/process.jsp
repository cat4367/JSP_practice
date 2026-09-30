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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
	%>
	
	아이디 : <%= id %>
	비밀번호 : <%= pwd %>


</body>
</html>