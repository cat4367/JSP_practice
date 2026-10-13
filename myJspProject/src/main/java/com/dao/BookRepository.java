package com.dao;

import java.sql.*;
import java.util.ArrayList;

import com.dto.Book;


public class BookRepository {
	
	private ArrayList<Book> bookList = new ArrayList<Book>();
	
	public BookRepository() {
	}

	public ArrayList<Book> getBookList() {
		
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
		return bookList;
	}
	
	//db Select작업 - 책한권 가져오기
	public Book getBookInfo(String bookId) {
		Book book = new Book();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarketdb","root","admin");
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("select * from book where b_id = '"+ bookId+"'");
			if(rs.next()) {
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
				
			}
			
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		return book;
	}

	
	//DB insert작업
	public int addBook(Book book) {
		int rs = 0;		//결과 확인용
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarketdb","root","admin");		//데이터베이스 연결
			Statement stmt = conn.createStatement();				// sql작성 스크립트 열기
			
			String sql = "INSERT INTO book(b_id,b_name,b_unitPrice,b_author,b_description,b_publisher,b_category,b_unitsInStock,b_releaseDate,b_condition)"+
					"VALUES('"+ book.getBookId() +"','"+ book.getName() +"',"+ book.getUnitPrice() +",'"+ book.getAuthor() +"','"+ book.getDescription() +"','"+ book.getPublisher() +"','"+ book.getCategory() +"','"+ book.getUnitsInStock() +"','"+book.getReleaseDate()+"','"+book.getCondition()+"')";
			System.out.println(sql);
			rs =  stmt.executeUpdate(sql);
			
		}catch(Exception e) {
			
		}
		return rs;
	}

}
