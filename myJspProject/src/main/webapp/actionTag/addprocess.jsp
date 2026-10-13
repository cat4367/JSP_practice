<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="jdbcPractice.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("userName");
	String pwd = request.getParameter("userPwd");
		
		
	try{
		String sql = "INSERT INTO student(name, password) VALUES('" + name + "','" + pwd + "')";
		String sql1 = "UPDATE student SET name='홍길순' WHERE name = '홍길길'";
		String sql2 = "DELETE FROM student WHERE name = '길철희'";
		out.print(sql2);
		int rs = stmt.executeUpdate(sql2);
		out.print(rs);
		
	}catch(Exception e){
		out.print(e.getMessage());
%>
		<script>alert("오류입니다. 관리자에게 문의하세요")</script>
<%
	}
%>


</body>
</html>