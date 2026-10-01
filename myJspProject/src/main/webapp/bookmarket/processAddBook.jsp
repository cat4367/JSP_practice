<%@page import="com.dto.Book"%>
<%@page import="com.dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String bookId = request.getParameter("bookId");									//도서 ID
	String name = request.getParameter("name");										//도서명
	String unitPrice = request.getParameter("unitPrice");							//가격
	String author = request.getParameter("author");									//저자
	String description = request.getParameter("description");						//설명
	String publisher = request.getParameter("publisher");							//출판사
	String category = request.getParameter("category");								//분류
	String unitsInStock = request.getParameter("unitsInStock");						//재고개수
	String releaseDate = request.getParameter("releaseDate");						//출판일(월/년)
	String condition = request.getParameter("condition");							//신제품 or 구제품 or 리퍼브제품
	
	int price;
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.parseInt(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.parseLong(unitsInStock);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setCategory(category);
	newBook.setDescription(description);
	newBook.setUnitsInStock(stock);
	
	dao.addBook(newBook);
	
	response.sendRedirect("booklist.jsp");
	
	
	
	
%>
</body>
</html>