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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<div class="container py-4">
	<jsp:include page="header.jsp" flush="false"/>
	<%! 
		String greeting = "도서목록";
	%>

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">BookList</p>
		</div>
	</div>

	<%
		BookRepository bookDAO = new BookRepository();
		ArrayList<Book> bookList = bookDAO.getBookList();
	%>
	
	<div class="row align-items-md-stretch text-center">
	<%
		for(int i = 0; i < bookList.size(); i++){
			Book book = bookList.get(i);
	%>
		<div class="col md-4">
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

</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</html>