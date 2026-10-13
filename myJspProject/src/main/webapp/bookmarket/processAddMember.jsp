<%@page import="java.sql.*"%>
<%@page import="com.dto.Member"%>
<%@page import="com.dao.MemberRepository"%>
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

	String userSeq = request.getParameter("userSeq");			// 회원고유번호 "USER0001"
	String id = request.getParameter("memberId");				// 아이디
	String pwd = request.getParameter("memberPwd");				// 비밀번호
	String name = request.getParameter("memberName");			// 이름
	String gender = request.getParameter("memberGender");		// 성별	> radio
	String i_age = request.getParameter("memberAge");			// 나이
//	String tel1 = request.getParameter("memberTel1");			// 연락처	>2칸 앞(select) 뒤 8자리(text)
//	String tel2 = request.getParameter("memberTel2");			
//	String tel3 = request.getParameter("memberTel3");		
	String tel = request.getParameter("memberTel1") + "-" + request.getParameter("memberTel2")+ "-" + request.getParameter("memberTel3");
//	String email1 = request.getParameter("memberEmail1");		// 이메일	>2칸 앞(text) 뒤 (select)
//	String email2 = request.getParameter("memberEmail2");		
	String email = request.getParameter("memberEmail1") + "@" + request.getParameter("memberEmail2");
	String birth = request.getParameter("memberBirth");			// 생년월일
	String cls = request.getParameter("memberCls");				// 등급 (N : 일반 / V : VIP)
	String fs = request.getParameter("memberFootSize");			// 신발사이즈
	
	int age;
	if(i_age.isEmpty()){
		age = 0;
	}else age = Integer.parseInt(i_age);
	
	int footSize;
	if(fs.isEmpty()){
		footSize = 0;
	}else footSize = Integer.parseInt(fs);
	
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql//localhost:3306/bookmarketdb","root","admin");
		stmt = conn.createStatement();
		
		String sql = "INSERT INTO member(userSeq,id,pwd,name,gender,age,tel,email,birth,cls,footsize)" + 
		"VALUES('"+ userSeq + "','"+ id + "','"+ pwd + "','"+ name + "','"+ gender + "','"+ i_age + "','"+ tel + "','"+ email + "','"+ birth + "','"+ cls + "','"+ fs + "')";
		out.print(sql);
		int rs = stmt.executeUpdate(sql);
		out.print(rs);
		
		conn.close();
		stmt.close();
		
	}catch(Exception e){
		out.print(e.getMessage());
	}
	
	
	
	
	
	
/*
	MemberRepository dao = MemberRepository.getInstance();
	
	Member newMember = new Member();
	newMember.setUserSeq(userSeq);
	newMember.setId(id);
	newMember.setPwd(pwd);
	newMember.setName(name);
	newMember.setGender(gender);
	newMember.setAge(age);
//	newMember.setTel(tel);
	newMember.setTel(request.getParameter("memberTel1") + "-" + request.getParameter("memberTel2")+ "-" + request.getParameter("memberTel3"));
	newMember.setEmail(email);
	newMember.setBirth(birth);
	newMember.setCls(cls);
	newMember.setFootSize(footSize);
	
	dao.addMember(newMember); */
	
	response.sendRedirect("memberlist.jsp");
%>
</body>
</html>