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

<jsp:include page="footer.jsp" flush="false"/>
</body>
</html>