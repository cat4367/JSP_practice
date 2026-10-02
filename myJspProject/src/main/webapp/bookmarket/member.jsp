<%@ page import="java.util.*, com.dto.*, com.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<%! 
		String greeting = "회원정보";
	%>
	

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">MemberInfo</p>
		</div>
	</div>
	
	<%
	MemberRepository memberDAO = MemberRepository.getInstance();
	String mem = request.getParameter("id");
	Member member = memberDAO.getMemberInfo(mem);
	%>
	<div class="row align-items-md-stretch">
		<div class="col-md-12">
			<h3><b>회원정보 내역</b></h3>
			<p><b>고유번호</b> : <span class="badge text-bg-danger"><%=member.getUserSeq()%></span></p>
			<p><b>아이디</b> : <%=member.getId()%></p>
			<p><b>비밀번호</b> : <%=member.getPwd()%></p>
			<p><b>이름</b> : <%=member.getName()%></p>
			<p><b>성별</b> : <%=member.getGender()%></p>
			<p><b>나이</b> : <%=member.getAge()%></p>
			<p><b>연락처</b> : <%=member.getTel()%></p>
			<p><b>이메일</b> : <%=member.getEmail()%></p>
			<p><b>생년월일</b> : <%=member.getBirth()%></p>
			<p><b>회원등급</b> : <%=member.getCls()%></p>
			<p><b>신발사이즈</b> : <%=member.getFootSize()%></p>
			<a href="memberlist.jsp" class="btn btn-secondary">회원목록 &raquo;</a>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>