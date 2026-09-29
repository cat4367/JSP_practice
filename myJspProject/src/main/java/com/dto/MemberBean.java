package com.dto;

import java.io.*;

public class MemberBean implements Serializable {
	
	private int id;
	private String name;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int process(int a) {
		int result = 1;
		for (int i = 1; i <= 3; i++) {
			result = result*a;
		}
		return result;
	}
	

}

