<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<h1>이 파일은 first.jsp 파일 입니다.</h1>

<jsp:useBean id="member" class="com.dto.MemberBean" scope="request"/>
<jsp:setProperty name="member" property="id" value="20260929"/>		<!-- member.setId(20260929) -->
<jsp:setProperty name="member" property="name" value="정형민"/>


<jsp:getProperty name="member" property="id"/><br>
<jsp:getProperty name="member" property="name"/><br>
<!-- 
 <%= member.getId() %>
 <%= member.getName() %> -->
 
<% 	int m = member.process(5);
	out.print("5의 3제곱 : " + m);
%>

</body>
</html>