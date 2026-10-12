package com.dao;

import java.util.ArrayList;

import com.dto.Book;
import com.dto.Member;
import java.sql.*;
;public class MemberRepository {

	private ArrayList<Member> memberList = new ArrayList<>();
	private static MemberRepository instance = new MemberRepository();
	

	
	public MemberRepository() {
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarketdb","root","admin");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from member");
			
			while(rs.next()) {
				Member member = new Member();
				member.setUserSeq(rs.getString("userSeq"));
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setGender(rs.getString("gender"));
				member.setAge(rs.getInt("age"));
				member.setTel(rs.getString("tel"));
				member.setEmail(rs.getString("email"));
				member.setBirth(rs.getString("birth"));
				member.setCls(rs.getString("cls"));
				member.setFootSize(rs.getInt("footsize"));
				
				memberList.add(member);
				
			}
			
			stmt.close();
			conn.close();
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		

	}
	
	public ArrayList<Member> getMemberList() {
		return memberList;
	}
	public static MemberRepository getInstance() {
		return instance;
	}
	public Member getMemberInfo(String memberId) {
		Member member = null;
		
		for(Member i : memberList) {
			if(i.getId()!=null && i.getId().equals(memberId)) {
				member = i;
			}
		}
		
		return member;
	}
	public void addMember(Member a) {
		String seq = "USER" + String.format("%04d", (memberList.size() + 1));
		a.setUserSeq(seq);
		
		memberList.add(a);
	}
	
}
