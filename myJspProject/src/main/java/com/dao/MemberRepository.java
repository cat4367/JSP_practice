package com.dao;

import java.util.ArrayList;

import com.dto.Book;
import com.dto.Member;

public class MemberRepository {

	private ArrayList<Member> memberList = new ArrayList<>();
	private static MemberRepository instance = new MemberRepository();
	
	private int cntSeq = 2;
	public MemberRepository() {
		Member member1 = new Member();
		member1.setUserSeq("USER0001");
		member1.setId("gudals123");
		member1.setPwd("123456");
		member1.setName("Á¤Çü¹Î");
		member1.setGender("M");
		member1.setAge(30);
		member1.setTel("010-1111-2222");
		member1.setEmail("gudals@naver.com");
		member1.setBirth("2004-04-04");
		member1.setCls("V");
		member1.setFootSize(260);
		
		
		memberList.add(member1);
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
		String seq = "USER" + String.format("%04d", cntSeq++);
		a.setUserSeq(seq);
		
		memberList.add(a);
	}
	
}
