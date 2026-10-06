package com.dao;

import java.util.ArrayList;

import com.dto.Book;
import com.dto.Member;

public class MemberRepository {

	private ArrayList<Member> memberList = new ArrayList<>();
	private static MemberRepository instance = new MemberRepository();
	

	
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
		
		Member member2= new Member();
		member2.setUserSeq("USER0002");
		member2.setId("guild2000");
		member2.setPwd("k312333");
		member2.setName("È«±æµ¿");
		member2.setGender("F");
		member2.setAge(23);
		member2.setTel("010-0002-3000");
		member2.setEmail("dong0200@daum.net");
		member2.setBirth("2005-01-31");
		member2.setCls("N");
		member2.setFootSize(240);
		
		Member member3 = new Member();
		member3.setUserSeq("USER0003");
		member3.setId("pppa1002");
		member3.setPwd("hidden2");
		member3.setName("±èÈñ¿µ");
		member3.setGender("F");
		member3.setAge(40);
		member3.setTel("010-1223-3333");
		member3.setEmail("google2222@google.com");
		member3.setBirth("1986-05-23");
		member3.setCls("N");
		member3.setFootSize(230);
		
		this.memberList.add(member1);
		this.memberList.add(member2);
		this.memberList.add(member3);
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
