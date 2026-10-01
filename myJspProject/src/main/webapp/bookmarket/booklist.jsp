<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, com.dto.*, com.dao.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- JSP 주석 --%>
<!-- HTML 주석 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

	<jsp:include page="header.jsp" flush="false"/>
	<%! 
		String greeting = "도서목록";
	%>

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">BookList</p>
			<a href="./addBook.jsp" class="btn btn-warning" role="button">도서추가 &raquo;</a>
		</div>
	</div>

	<%
		BookRepository bookDAO = BookRepository.getInstance();
		ArrayList<Book> bookList = bookDAO.getBookList();
	%>
	
	<div class="row align-items-md-stretch text-center">
	<%
		for(int i = 0; i < bookList.size(); i++){
			Book book = bookList.get(i);
	%>
		<div class="col-md-4">
			<div class="h-100 p-2">
				<h5><b><%=book.getName() %></b></h5>
				<p><%=book.getAuthor() %></p>
				<p><%=book.getPublisher() %> | <%=book.getReleaseDate() %></p>
				<p><%=book.getDescription().substring(0,60) %>...</p>
				<p><%=book.getUnitPrice() %> 원</p>
				<p><a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button">상세정보 &raquo;</a></p>
			</div>
		</div>
	<% } %>
	</div>
	
	<jsp:include page="footer.jsp" flush="false"/>

</body>
</html>