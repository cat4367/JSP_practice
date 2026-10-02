package com.dto;

import java.io.Serializable;

public class Member implements Serializable {
	private String userSeq;		// 회원고유번호 "USER0001"
	private String id;			// 아이디
	private String pwd;			// 비밀번호
	private String name;		// 이름
	private String gender;		// 성별	> radio
	private int age;			// 나이
	private String tel;			// 연락처	>2칸 앞(select) 뒤 8자리(text)
	private String email;		// 이메일	>2칸 앞(text) 뒤 (select)
	private String birth;		// 생년월일
	private String cls;			// 등급 (N : 일반 / V : VIP)
	private int footSize;		// 신발사이즈
	
	
	
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getCls() {
		return cls;
	}
	public void setCls(String cls) {
		this.cls = cls;
	}
	public int getFootSize() {
		return footSize;
	}
	public void setFootSize(int footSize) {
		this.footSize = footSize;
	}
	
	
	

}
