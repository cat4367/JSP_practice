<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dto.*, com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp"/>
	<%! 
		String greeting = "도서정보";
	%>
	

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">BookList</p>
		</div>
	</div>

<%
	BookRepository bookDAO = BookRepository.getInstance();
	String bookId = request.getParameter("id");
	Book book = bookDAO.getBookInfo(bookId);
%>
	<div class="row align-items-md-stretch">
		<div class="col-md-12">
			<h3><b><%=book.getName() %></b></h3>
			<p><b>도서코드<b/> : <span class="badge text-bg-danger"><%=book.getBookId() %></span></p>
			<p><b>저자</b> : <%=book.getAuthor() %></p>
			<p><b>출판사</b> : <%=book.getPublisher() %></p>
			<p><b>출판일</b> : <%=book.getReleaseDate() %></p>
			<p><b>분류</b> : <%=book.getCategory() %></p>
			<p><b>재고수</b> : <%=book.getUnitsInStock() %></p>
			<h4><%=book.getUnitPrice() %></h4>
			<p><a href="#" class="btn btn-info"> 도서주문 &raquo;</a>
			<a href="booklist.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>