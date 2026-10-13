<%@page import="com.dto.Book"%>
<%@page import="com.dao.BookRepository"%>
<%@page import="java.sql.*" %>
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
	
/*	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarketdb","root","admin");
		stmt = conn.createStatement();
		
		String sql = "INSERT INTO book(b_id,b_name,b_unitPrice,b_author,b_description,b_publisher,b_category,b_unitsInStock,b_releaseDate,b_condition)"+
		"VALUES('"+ bookId +"','"+ name +"','"+ unitPrice +"','"+ author +"','"+ description +"','"+ publisher +"','"+ category +"','"+ unitsInStock +"','"+releaseDate+"','"+condition+"')";
		out.print(sql);
		int rs = stmt.executeUpdate(sql);
		out.print(rs);
		
		conn.close();
		stmt.close();
	}catch(Exception e){
		out.print(e.getMessage());
	}
*/
%>

<%
	BookRepository dao = new BookRepository();

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
	newBook.setCondition(condition);

	int result = dao.addBook(newBook);
	
	if(result > 0){
%>		
		<script>alert("정상등록 되었습니다.")</script>	
<%	
	}else{
%>		
		<script>alert("오류가 발생했습니다. 관리자에게 문의하세요.")</script>	
<%	
	}
	
	response.sendRedirect("booklist.jsp");
%>




</body>
</html>