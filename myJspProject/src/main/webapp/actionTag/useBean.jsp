<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>구구단 출력하기</h2>
<jsp:useBean id="gugu" class="com.dao.GuGuDan" scope="page"/>

<%
	int a = 5;
	for(int i = 1; i <= 9; i++){
		out.print(gugu.process(a, i) + "<br>");
	}
%>
</body>
</html>