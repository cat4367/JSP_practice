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
	
	if(id.equals("관리자") && pwd.equals("1234")){
		response.sendRedirect("response01_success.jsp");
	}else{
		response.sendRedirect("response01_fail.jsp");
	}
%>
</body>
</html>