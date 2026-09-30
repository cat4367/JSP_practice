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
	String move = request.getParameter("sel");
	if(move.equals("N")){
		response.sendRedirect("http://www.naver.com");
	}else if(move.equals("G")){
		response.sendRedirect("http://www.google.com");
	}else if(move.equals("D")){
		response.sendRedirect("http://www.daum.net");
	}else{
		out.print("잘못된 선택");
	}



%>
</body>
</html>