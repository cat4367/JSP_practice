package com.dao;

import java.sql.*;
import java.util.ArrayList;

import com.dto.Book;

public class BookRepository {
	
	private ArrayList<Book> bookList = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public BookRepository() {
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarketdb","root","admin");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from book");
			
			while(rs.next()) {
				Book book = new Book();
				book.setBookId(rs.getString("b_id"));
				book.setName(rs.getString("b_name"));
				book.setUnitPrice(rs.getInt("b_unitprice"));
				book.setAuthor(rs.getString("b_author"));
				book.setDescription(rs.getString("b_description"));
				book.setPublisher(rs.getString("b_publisher"));
				book.setCategory(rs.getString("b_category"));
				book.setUnitsInStock(rs.getLong("b_unitsinstock"));
				book.setReleaseDate(rs.getString("b_releasedate"));
				book.setCondition(rs.getString("b_condition"));
				
				bookList.add(book);
			}
			
			stmt.close();
			conn.close();
		}catch(Exception e ) {
			System.out.println(e.getMessage());
		}		
	}

	public ArrayList<Book> getBookList() {
		return bookList;
	}
	
	public Book getBookInfo(String bookId) {
		Book book = null;
		
		for(Book b : bookList) {
			if(b.getBookId()!=null && b.getBookId().equals(bookId)) {
				book = b;
			}
		}
		
		return book;
	}

	public static BookRepository getInstance() {
		return instance;
	}
	
	public void addBook(Book book) {
		bookList.add(book);
	}

}
