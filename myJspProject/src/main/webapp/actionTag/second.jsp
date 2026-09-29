<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<h1>이 파일은 second.jsp 파일 입니다.</h1>
<%=request.getParameter("a") %>

<jsp:useBean id="member" class="com.dto.MemberBean" scope="request"/>
<%= member.getId() %>
<%= member.getName() %>

<!-- 'member'라는 파라미터를 받은녀석을 MemberBean이라는 클래스로 강제형변환
MemberBean member = (MemberBean)request.getParameter("member");

request 할때 MemberBean을 보낸 것이 없으면
MemberBean member = new MemberBean();
 -->	
 

</body>
</html>