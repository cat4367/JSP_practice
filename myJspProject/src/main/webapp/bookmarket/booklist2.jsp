<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.dto.*, com.dao.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp" flush="false"/>
	<%! String greeting = "도서목록";	%>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">BookList</p>
		</div>
	</div>

	<jsp:useBean id="bookDAO" class="com.dao.BookRepository" scope="session"/>
	<div class="row align-items-md-stretch text-center">
		<c:forEach var="book" items="${bookDAO.bookList}">
			<div class="col md-4">
				<div class="h-100 p-2">
					<h5><b>${book.name}</b></h5>
					<p>${book.author}</p>
					<p>${book.publisher} | ${book.releaseDate}</p>
					<p>${fn:substring(book.description, 0, 60)}...</p>
					<p>${book.unitPrice} 원</p>
					
				</div>
			</div>
		</c:forEach>
	</div>
	
	
	
	
	<jsp:include page="footer.jsp" flush="false"/>

</body>
</html>