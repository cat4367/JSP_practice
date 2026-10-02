<%@page import="com.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.MemberRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" flush="false"/>
	<%! 
		String greeting = "멤버목록";
	%>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">MemberList</p>
			<a href="./addMember.jsp" class="btn btn-warning" role="button">멤버 추가 &raquo;</a>
		</div>
	</div>
	
	<%
		MemberRepository memberDAO = MemberRepository.getInstance();
		ArrayList<Member> memberList = memberDAO.getMemberList();
	%>
	
	<div class="container my-4">
		<table class="table table-hover table-bordered text-center align-middle">
			<thead class="table-dark">
				<th scope="col">회원 번호</th>
				<th scope="col">회원 ID</th>
				<th scope="col">이름</th>
				<th scope="col">연락처</th>
				<th scope="col">이메일</th>
				<th scope="col">상세보기</th>
			</thead>
			<tbody class="table-group-divider">
				<% 
					for(int i = 0; i < memberList.size(); i++){
						Member member = memberList.get(i);
				%>
				<tr>
					<td><%= member.getUserSeq()%></td>
					<td><%= member.getId() %></td>
					<td><%= member.getName() %></td>
					<td><%= member.getTel() %></td>
					<td><%= member.getEmail() %></td>
					<td><a href="./member.jsp?id=<%= member.getId() %>" class="btn btn-sm btn-outline-primary" role="button">상세보기 &raquo;</a></td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	
	
	

<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>